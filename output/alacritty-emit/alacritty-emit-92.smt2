(declare-fun mem_ffc0000000000000_135_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffc0000000000000_135_64))))
(minimize (bvadd mem_ffc0000000000000_135_64 #x0000000000000010))
(check-sat)