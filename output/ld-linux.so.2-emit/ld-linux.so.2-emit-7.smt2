(declare-fun mem_7ffef7e0_71_32 () (_ BitVec 32))
(assert (and (not (= #x00000000 mem_7ffef7e0_71_32))))
(maximize mem_7ffef7e0_71_32)
(check-sat)