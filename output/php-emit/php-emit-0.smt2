(declare-fun strlen_64_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun strlen_75_64 () (_ BitVec 64))
(assert (and (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_75_64))
     (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_64_64))))
(define-fun goal () (_ BitVec 64) (bvadd strlen_75_64 #x0000000000000001)) 
(maximize goal)
(check-sat)