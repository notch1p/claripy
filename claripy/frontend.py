#!/usr/bin/env python

import logging
l = logging.getLogger("claripy.frontends.frontend")

import ana
import sys

#pylint:disable=unidiomatic-typecheck

class Frontend(ana.Storable):
    def __init__(self, solver_backend, cache=None, replacer=None):
        self._solver_backend = solver_backend
        self.result = None
        self._simplified = False
        self._cache = cache is True
        self._replacer = replacer

    #
    # Storable support
    #

    @property
    def uuid(self):
        return self.ana_uuid

    def _ana_getstate(self):
        if not self._simplified: self.simplify()
        return self._solver_backend.__class__.__name__, self.result, self._replacer

    def _ana_setstate(self, s):
        solver_backend_name, self.result, self._replacer = s
        self._solver_backend = _backends[solver_backend_name]
        self._simplified = True

    #
    # Constraint management
    #

    @staticmethod
    def _split_constraints(constraints):
        '''
        Returns independent constraints, split from this Frontend's constraints.
        '''

        splitted = [ ]
        for i in constraints:
            splitted.extend(i.split(['And']))

        l.debug("... splitted of size %d", len(splitted))

        variable_connections = { }
        constraint_connections = { }
        for n,s in enumerate(splitted):
            l.debug("... processing constraint with %d variables", len(s.variables))

            connected_variables = set(s.variables)
            connected_constraints = { n }

            if len(connected_variables) == 0:
                connected_variables.add('CONCRETE')

            for v in s.variables:
                if v in variable_connections:
                    connected_variables |= variable_connections[v]
                if v in constraint_connections:
                    connected_constraints |= constraint_connections[v]

            for v in connected_variables:
                variable_connections[v] = connected_variables
                constraint_connections[v] = connected_constraints

        unique_constraint_sets = set()
        for v in variable_connections:
            unique_constraint_sets.add((frozenset(variable_connections[v]), frozenset(constraint_connections[v])))

        results = [ ]
        for v,c_indexes in unique_constraint_sets:
            results.append((set(v), [ splitted[c] for c in c_indexes ]))
        return results

    def _constraint_filter(self, ec, replace=False):
        fc = [ ]
        for e in ec if type(ec) in (list, tuple, set) else (ec,):
            #e_simp = self._claripy.simplify(e)
            e_simp = self._replacement(e) if replace else e
            for b in _eager_backends + [ self._solver_backend ]:
                try:
                    o = b.convert(e_simp)
                    if b._is_false(o):
                        #filter_false += 1
                        raise UnsatError("expressions contain False")
                    elif b._has_true(o):
                        #filter_true +=1
                        break
                    else:
                        l.warning("Frontend._constraint_filter got non-boolean from model_backend")
                        raise ClaripyFrontendError()
                except BackendError:
                    pass
            else:
                fc.append(e_simp)

        return tuple(fc)

    #
    # Stuff that should be implemented by subclasses
    #

    def _add_constraints(self, constraints, invalidate_cache=True):
        raise NotImplementedError("_add_constraints() is not implemented")

    def _simplify(self):
        raise NotImplementedError("_simplify() is not implemented")

    def _solve(self, extra_constraints=(), exact=None, cache=None):
        raise NotImplementedError("_solve() is not implemented")

    def _eval(self, e, n, extra_constraints=(), exact=None, cache=None):
        raise NotImplementedError("_eval() is not implemented")

    def _min(self, e, extra_constraints=(), exact=None, cache=None):
        raise NotImplementedError("_min() is not implemented")

    def _max(self, e, extra_constraints=(), exact=None, cache=None):
        raise NotImplementedError("_max() is not implemented")

    def _solution(self, e, v, extra_constraints=(), exact=None, cache=None):
        raise NotImplementedError("_solution() is not implemented")

    def finalize(self):
        raise NotImplementedError("finalize() is not implemented")

    def merge(self, others, merge_flag, merge_values):
        raise NotImplementedError("merge() is not implemented")

    def combine(self, others):
        raise NotImplementedError("combine() is not implemented")

    def split(self):
        raise NotImplementedError("split() is not implemented")

    #
    # Caching
    #

    def _cache_eval(self, e, values, n=None, exact=None, cache=None):
        if not exact or cache is False or not self._cache or self.result is None:
            return

        self.result.eval_cache[e.uuid] = self.result.eval_cache[e.uuid] | values if e.uuid in self.result.eval_cache else values
        if n is not None:
            self.result.eval_n[e.uuid] = max(n, self.result.eval_n[e.uuid]) if e.uuid in self.result.eval_n else n

    def _cache_max(self, e, m, exact=None, cache=None):
        if not exact or cache is False or not self._cache or self.result is None:
            return

        self.result.max_cache[e] = m

    def _cache_min(self, e, m, exact=None, cache=None):
        if not exact or cache is False or not self._cache or self.result is None:
            return

        self.result.min_cache[e] = m

    #
    # Solving
    #

    def add(self, constraints, invalidate_cache=True):
        if type(constraints) not in (list, tuple):
            constraints = [ constraints ]

        if len(constraints) == 0:
            return [ ]

        try:
            to_add = self._constraint_filter(constraints)
        except UnsatError:
            self.result = UnsatResult()
            to_add = [ false ]

        for c in to_add:
            if not isinstance(c, Bool):
                raise ClaripyTypeError('constraint is not a boolean expression!')
            c.make_uuid()

        if self.result is not None and invalidate_cache:
            all_true = True
            for c in to_add:
                v = self._eager_resolution('eval', [None], c, 1)[0]
                if v is None:
                    try:
                        all_true &= LightFrontend._eval.im_func(self, c, 1)[0]
                    except ClaripyFrontendError:
                        all_true = False
                        break
                else:
                    all_true &= v
        else:
            all_true = False

        self._add_constraints(to_add, invalidate_cache=invalidate_cache)
        self._simplified = False

        if invalidate_cache and self.result is not None and self.result.sat:
            if all_true:
                new_result = SatResult()
                new_result.model.update(self.result.model)
                self.result = new_result
            else:
                self.result = None

        return to_add

    def simplify(self):
        if self._simplified:
            return

        s = self._simplify()
        self._simplified = True
        return s

    def solve(self, extra_constraints=(), exact=None, cache=None):
        l.debug("%s.solve() running with %d extra constraints...", self.__class__.__name__, len(extra_constraints))

        if self.result is not None:
            if not self.result.sat or len(extra_constraints) == 0:
                l.debug("... returning cached result (sat: %s)", self.result.sat)
                return self.result
        else:
            l.debug("... no cached result")

        try:
            extra_constraints = self._constraint_filter(extra_constraints, replace=True)
        except UnsatError:
            l.debug("... returning unsat result due to false extra_constraints")
            return UnsatResult()

        l.debug("... conferring with the solver")
        r = self._solve(extra_constraints=extra_constraints, exact=exact, cache=cache)
        if len(extra_constraints) == 0 or (self.result is None and r.sat):
            l.debug("... caching result (sat: %s)", r.sat)
            self.result = r
        return r

    def satisfiable(self, extra_constraints=(), exact=None, cache=None):
        return self.solve(extra_constraints=extra_constraints, exact=exact, cache=cache).sat

    @staticmethod
    def _concrete_type_check(e):
        '''
        Checks two things:

            1. Whether we can just return this value.
            2. Whether we can even process this value.

        Returns True if we don't have to pass this to any backends, False if we need
        to, and raises ClaripyValueError otherwise.
        '''

        if isinstance(e, (int, long)):
            return True
        elif not isinstance(e, Base):
            raise ClaripyValueError("Expressions passed to _concrete_type_check() MUST be Claripy ASTs (got %s)" % type(e))
        else:
            return False

    def eval_to_ast(self, e, n, extra_constraints=()):
        '''
        Evaluates expression e, returning the results in the form of concrete ASTs.
        '''

        return [ BVV(v, e.size()) for v in self.eval(e, n, extra_constraints=extra_constraints) ]

    def _eager_resolution(self, what, default, *args, **kwargs):
        for b in _eager_backends:
            try: return getattr(b, what)(*args, result=self.result if kwargs.pop('use_result', True) else None, **kwargs)
            except BackendError: pass
        return default

    def eval(self, e, n, extra_constraints=(), exact=None, cache=None):
        er = self._replacement(e)
        if self._concrete_type_check(er): return [er]

        extra_constraints = self._constraint_filter(extra_constraints, replace=True)
        l.debug("Frontend.eval() for UUID %s with n=%d and %d extra_constraints", e.uuid, n, len(extra_constraints))

        # first, try evaluating through the eager backends
        try:
            eager_results = frozenset(self._eager_resolution('eval', (), er, n, extra_constraints=extra_constraints))
            if not er.symbolic and len(eager_results) > 0:
                return tuple(sorted(eager_results))
            self._cache_eval(er, eager_results, exact=exact, cache=cache)
        except UnsatError:
            # this can happen when the eager backend comes across an unsat extra condition
            # *while using the current model*. A new constraint solve could return a new,
            # sat model
            pass

        # then, check the cache
        if len(extra_constraints) == 0 and self.result is not None and er.uuid in self.result.eval_cache:
            cached_results = self.result.eval_cache[er.uuid]
            cached_n = self.result.eval_n.get(er.uuid, 0)
        else:
            cached_results = frozenset()
            cached_n = 0

        # if there's enough in the cache, return that
        if cached_n >= n or len(cached_results) < cached_n:
            return tuple(sorted(cached_results))[:n]

        # try to make sure we don't get more of the same
        solver_extra_constraints = list(extra_constraints) + [ e != v for v in cached_results ]

        # if we still need more results, get them from the frontend
        try:
            n_lacking = n - len(cached_results)
            eval_results = frozenset(self._eval(er, n_lacking, extra_constraints=solver_extra_constraints, exact=exact, cache=cache))
            l.debug("... got %d more values", len(eval_results - cached_results))
        except UnsatError:
            l.debug("... UNSAT")
            if len(cached_results) == 0:
                raise
            else:
                eval_results = frozenset()
        except BackendError:
            e_type, value, traceback = sys.exc_info()
            raise ClaripyFrontendError, "Backend error during eval: %s('%s')" % (str(e_type), str(value)), traceback

        # if, for some reason, we have no result object, make an approximate one
        if self.result is None:
            self.result = SatResult(approximation=True)

        # if there are less possible solutions than n (i.e., meaning we got all the solutions for e),
        # add constraints to help the solver out later
        # TODO: does this really help?
        all_results = cached_results | eval_results
        if len(extra_constraints) == 0 and len(all_results) < n:
            l.debug("... adding constraints for %d values for future speedup", len(all_results))
            self.add([Or(*[ e == v for v in eval_results | cached_results ])], invalidate_cache=False)

        # fix up the cache. If there were extra constraints, we can't assume that we got
        # all of the possible solutions, so we have to settle for a biggest-evaluated value
        # equal to the number of values we got
        self._cache_eval(er, all_results, n=n if len(extra_constraints) == 0 else None, exact=exact, cache=cache)

        # sort so the order of results is consistent when using pypy
        return tuple(sorted(all_results))

    def max(self, e, extra_constraints=(), exact=None, cache=None):
        er = self._replacement(e)

        if self._concrete_type_check(er): return er
        extra_constraints = self._constraint_filter(extra_constraints, replace=True)

        # first, try evaluating through the eager backends
        v = self._eager_resolution('max', None, er, extra_constraints=extra_constraints, use_result=False)
        if v is not None:
            return v

        if len(extra_constraints) == 0 and self.result is not None and er.uuid in self.result.max_cache:
            #cached_max += 1
            return self.result.max_cache[er.uuid]

        m = self._max(er, extra_constraints=extra_constraints, exact=exact, cache=cache)
        if len(extra_constraints) == 0 and er.symbolic:
            self._cache_max(er, m, exact=exact, cache=cache)
            self.add([ULE(e, m)], invalidate_cache=False)
        return m

    def min(self, e, extra_constraints=(), exact=None, cache=None):
        er = self._replacement(e)

        if self._concrete_type_check(er): return er
        extra_constraints = self._constraint_filter(extra_constraints, replace=True)

        # first, try evaluating through the eager backends
        v = self._eager_resolution('min', None, er, extra_constraints=extra_constraints, use_result=False)
        if v is not None:
            return v

        if len(extra_constraints) == 0 and self.result is not None and er.uuid in self.result.min_cache:
            #cached_min += 1
            return self.result.min_cache[er.uuid]

        m = self._min(er, extra_constraints=extra_constraints, exact=exact, cache=cache)
        if len(extra_constraints) == 0 and er.symbolic:
            self._cache_min(er, m, exact=exact, cache=cache)
            self.add([UGE(e, m)], invalidate_cache=False)
        return m

    def solution(self, e, v, extra_constraints=(), exact=None, cache=None):
        er = self._replacement(e)
        vr = self._replacement(v)

        try:
            extra_constraints = self._constraint_filter(extra_constraints, replace=True)
        except UnsatError:
            return False

        if self._concrete_type_check(er) and self._concrete_type_check(vr):
            return er == vr
        eager_solution = self._eager_resolution('solution', None, er, vr)
        if eager_solution is not None:
            return eager_solution

        b = self._solution(er, vr, extra_constraints=extra_constraints, exact=exact, cache=cache)
        if b is False and len(extra_constraints) == 0 and er.symbolic:
            self.add([e != v], invalidate_cache=False)

        # add these results to the cache
        if self.result is not None and b is True:
            if isinstance(er, Base) and er.symbolic and not isinstance(vr, Base):
                self._cache_eval(er, frozenset({vr}), exact=exact, cache=cache)
            if isinstance(v, Base) and v.symbolic and not isinstance(e, Base):
                self._cache_eval(vr, frozenset({er}), exact=exact, cache=cache)

        return b

    def is_true(self, e, extra_constraints=(), exact=None, cache=None):
        if self._concrete_type_check(e):
            return e is True

        if not isinstance(e, Bool):
            raise ClaripyValueError("got a non-Boolean expression in Frontend.is_true()")

        return not self.solution(e, False, extra_constraints=extra_constraints, exact=exact, cache=cache)

    def is_false(self, e, extra_constraints=(), exact=None, cache=None):
        if self._concrete_type_check(e):
            return e is False

        if not isinstance(e, Bool):
            raise ClaripyValueError("got a non-Boolean expression in Frontend.is_false()")

        return not self.solution(e, True, extra_constraints=extra_constraints, exact=exact, cache=cache)

    #
    # Serialization and such.
    #

    def downsize(self): #pylint:disable=R0201
        if self.result is not None:
            self.result.downsize()

    def _replacement(self, old):
        if self._replacer is None:
            return old
        else:
            return self._replacer.replacement(old)

    def branch(self):
        s = self.__class__(self._solver_backend)
        s.result = self.result
        s._simplified = self._simplified
        s._replacer = None if self._replacer is None else s._replacer.branch()
        return s

    @property
    def replacer(self):
        if self._replacer is None:
            self._replacer = Replacer()
        return self._replacer

from .frontends import LightFrontend
from .result import UnsatResult, SatResult
from .errors import UnsatError, BackendError, ClaripyFrontendError, ClaripyTypeError, ClaripyValueError
from . import _eager_backends, _backends
from .ast.base import Base
from .ast.bool import false, Bool, Or
from .ast.bv import UGE, ULE, BVV
from .replacer import Replacer