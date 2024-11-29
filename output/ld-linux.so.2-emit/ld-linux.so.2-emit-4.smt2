(declare-fun mem_7ffef928_80_32 () (_ BitVec 32))
(assert (and (not (= #x00000000 mem_7ffef928_80_32))))
(maximize mem_7ffef928_80_32)
(check-sat)