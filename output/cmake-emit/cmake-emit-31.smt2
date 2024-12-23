(declare-fun strlen_107_64 () (_ BitVec 64))
(declare-fun args_2_8 () (_ BitVec 8))
(assert (and (= #b00000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 2) (bvadd #x0000000000000001 strlen_107_64)))
     (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
        (bvadd #x07fffffffffeffd4 strlen_107_64))
     (bvule (bvadd #b01 ((_ extract 1 0) strlen_107_64)) #b10)))
(define-fun goal () (_ BitVec 64) (bvadd strlen_107_64 #x0000000000000001)) 
(minimize goal)
(check-sat)