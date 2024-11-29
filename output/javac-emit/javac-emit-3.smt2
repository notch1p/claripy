(declare-fun strlen_50_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(assert (and (not (= #x2d args_1_8))
     (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_50_64))
     (= #b00000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 2) (bvadd #x0000000000000001 strlen_50_64)))
     (bvule (bvadd #b01 ((_ extract 1 0) strlen_50_64)) #b10)))
(minimize (bvadd #x0000000000000001 strlen_50_64))
(check-sat)