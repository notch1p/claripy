(declare-fun strlen_125_64 () (_ BitVec 64))
(declare-fun args_2_8 () (_ BitVec 8))
(assert (and (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
        (bvadd #x07fffffffffeffd4 strlen_125_64))))
(maximize (bvadd strlen_125_64 #x0000000000000001))
(check-sat)