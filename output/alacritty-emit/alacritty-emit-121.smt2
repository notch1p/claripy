(declare-fun mem_c0000fa0_77_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_c0000fa0_77_64))))
(minimize (bvadd mem_c0000fa0_77_64 #x0000000000000010))
(check-sat)