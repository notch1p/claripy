(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_128_64 () (_ BitVec 64))
(assert (and (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_128_64))
     (not (= #x2d args_1_8))))
(define-fun goal () (_ BitVec 64) (bvadd strlen_128_64 #x0000000000000001)) 
(maximize goal)
(check-sat)