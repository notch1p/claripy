(declare-fun mem_ffffffc000000000_97_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffffc000000000_97_64))))
(minimize (bvadd mem_ffffffc000000000_97_64 #x0000000000000010))
(check-sat)