(declare-fun strlen_80_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (and (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
        (bvadd #x07fffffffffeffd0 strlen_80_64))))
(maximize (bvadd strlen_80_64 #x0000000000000001))
(check-sat)