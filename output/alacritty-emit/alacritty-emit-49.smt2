(declare-fun mem_ffffffffc0000000_120_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffffffc0000000_120_64))))
(maximize (bvadd mem_ffffffffc0000000_120_64 #x0000000000000010))
(check-sat)