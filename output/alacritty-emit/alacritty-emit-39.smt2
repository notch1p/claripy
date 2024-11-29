(declare-fun mem_ff00000000000000_109_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ff00000000000000_109_64))))
(minimize (bvadd mem_ff00000000000000_109_64 #x0000000000000010))
(check-sat)