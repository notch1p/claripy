(declare-fun strlen_74_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(assert (and (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_74_64))))
(maximize (bvadd strlen_74_64 #x0000000000000001))
(check-sat)