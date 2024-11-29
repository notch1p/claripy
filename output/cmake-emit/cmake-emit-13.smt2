(declare-fun strlen_80_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (and (= #b00000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 2) (bvadd #x0000000000000001 strlen_80_64)))
     (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
        (bvadd #x07fffffffffeffd0 strlen_80_64))
     (bvule (bvadd #b01 ((_ extract 1 0) strlen_80_64)) #b10)))
(minimize (bvadd strlen_80_64 #x0000000000000001))
(check-sat)