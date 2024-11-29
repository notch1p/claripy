(declare-fun mem_fffffffffffffff0_129_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_fffffffffffffff0_129_64))))
(maximize (bvadd mem_fffffffffffffff0_129_64 #x0000000000000010))
(check-sat)