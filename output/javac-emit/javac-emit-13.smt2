(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun strlen_204_64 () (_ BitVec 64))
(assert (and (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_204_64))
     (not (= #x2d args_3_8))))
(define-fun goal () (_ BitVec 64) (bvadd #x0000000000000001 strlen_204_64)) 
(maximize goal)
(check-sat)