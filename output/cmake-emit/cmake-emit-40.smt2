(declare-fun strlen_122_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(assert (and (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_122_64))))
(maximize (bvadd strlen_122_64 #x0000000000000001))
(check-sat)