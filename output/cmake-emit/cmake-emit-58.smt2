(declare-fun strlen_149_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (and (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_149_64))))
(define-fun goal () (_ BitVec 64) (bvadd strlen_149_64 #x0000000000000001)) 
(maximize goal)
(check-sat)