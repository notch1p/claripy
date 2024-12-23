(declare-fun strlen_84_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(declare-fun strlen_70_64 () (_ BitVec 64))
(assert (and (not (= #x2f args_0_8))
     (not (= #x2d args_0_8))
     (not (= #x73 args_0_8))
     (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
        (bvadd #x07fffffffffeffd0 strlen_70_64))
     (= #b00000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 2) (bvadd #x0000000000000001 strlen_70_64)))
     (bvule (bvadd #b01 ((_ extract 1 0) strlen_70_64)) #b10)
     (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
        (bvadd #x07fffffffffeffd0 strlen_84_64))))
(define-fun goal () (_ BitVec 64) (bvadd strlen_84_64 #x0000000000000001)) 
(maximize goal)
(check-sat)