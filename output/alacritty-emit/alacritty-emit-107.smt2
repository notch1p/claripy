(declare-fun mem_ffffffffffffffc0_144_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffffffffffffc0_144_64))))
(minimize (bvadd mem_ffffffffffffffc0_144_64 #x0000000000000010))
(check-sat)