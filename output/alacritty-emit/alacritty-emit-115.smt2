(declare-fun mem_ffffffffffffff00_150_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffffffffffff00_150_64))))
(minimize (bvadd mem_ffffffffffffff00_150_64 #x0000000000000010))
(check-sat)