(declare-fun mem_ffffffffff800000_131_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffffffff800000_131_64))))
(maximize (bvadd mem_ffffffffff800000_131_64 #x0000000000000010))
(check-sat)