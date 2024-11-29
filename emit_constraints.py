#!/usr/bin/env python
# coding: utf-8

"""
python angr.py /bin/ls ./output
"""

import angr
import logging
import claripy
import os

# from z3 import Solver
from z3 import *
from claripy.backends.backend_z3 import BackendZ3


# from IPython import embed
# solver = Solver()
# bk_z3 = BackendZ3()


def call_exit():
    exit()


level_bound = 850
m_query_bound = 10000


def main():
    m_num_query = 0
    target_bin = sys.argv[1]
    target_bin_name = os.path.basename(target_bin)
    if len(sys.argv) > 2:
        output_dir = sys.argv[2]
    else:
        output_dir = f"{target_bin_name}-emit"
    #   args = claripy.BVS('args', 8 * 16)
    # arg1 = claripy.BVS('args', 8 * 100)
    # arg2 = claripy.BVS('args', 8 * 100)
    # arg3 = claripy.BVS('args', 8 * 100)
    # arg4 = claripy.BVS('args', 8 * 300)
    arg1 = claripy.BVS("args", 8)
    arg2 = claripy.BVS("args", 8)
    arg3 = claripy.BVS("args", 8)
    arg4 = claripy.BVS("args", 8)
    proj = angr.Project(target_bin)
    state = proj.factory.entry_state(args=[arg1, arg2, arg3, arg4])
    simgr = proj.factory.simgr(state)

    level = 0
    while simgr.active:
        print("level:", level, ";")
        level += 1

        # print('state_num:', len(simgr.active))
        # print(simgr.active)
        # for s in simgr.active:
        #     solver = Solver()
        #     bsolver = BackendZ3()
        #     constr = s.solver.constraints
        # # logging.debug(constr)

        # if constr:
        #     #     z3_constr = bsolver.convert_list(constr)
        #     #     solver.add(z3_constr)
        #     #     if output_dir:
        #     #         # filename = "{}-{}-{}".format(target_bin_name, level, count) + ".smt2"
        #     #         # output_path = os.path.join(output_dir, filename)
        #     #         # with open(output_path, "w") as f:
        #     #         #     f.write(solver.to_smt2())
        #     m_num_query += 1
        #     #         # logging.info("Output constraint to: " + output_path + "\n")
        #     #         # print("Output constraint to: " + output_path + "\n")
        #     #     # else:
        #     #     #     print(solver.to_smt2())
        #     #     count += 1
        #     #     if m_num_query > m_num_bound:
        #     #         break
        #     if (m_num_query > m_query_bound) or (level > level_bound):
        #         break
        try:
            simgr.step()
        except:
            splitchunks(target_bin_name, output_dir)
            call_exit()


def splitchunks(binary_name: str, output_dir: str, filepath: str = "emit.smt2"):
    with open(filepath, "r") as f:
        content = f.read()
    os.makedirs(output_dir)
    chunks = content.split("\n\n")
    for i, chunk in enumerate(chunks):
        if chunk == "":
            continue
        with open(f"{output_dir}/{binary_name}-emit-{i}.smt2", "w+") as c:
            c.write(chunk)
    os.remove(filepath)


if __name__ == "__main__":
    # logging.basicConfig(level=logging.INFO)
    main()
