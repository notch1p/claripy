(declare-fun strlen_140_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (and (= #b00000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 2) (bvadd #x0000000000000001 strlen_140_64)))
     (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_140_64))
     (bvule (bvadd #b01 ((_ extract 1 0) strlen_140_64)) #b10)))
(minimize (bvadd strlen_140_64 #x0000000000000001))
(check-sat)