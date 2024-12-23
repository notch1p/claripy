(declare-fun strlen_81_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_69_64 () (_ BitVec 64))
(assert (and (not (= #x2d args_1_8))
     (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_69_64))
     (= #b000000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 1) strlen_69_64))
     (not (= #x2f args_1_8))
     (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_81_64))))
(define-fun goal () (_ BitVec 64) (bvadd strlen_81_64 #x0000000000000001)) 
(maximize goal)
(check-sat)