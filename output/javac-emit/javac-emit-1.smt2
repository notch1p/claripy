(declare-fun strlen_43_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (and (= #b00000000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 2) (bvadd #x0000000000000001 strlen_43_64)))
     (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
        (bvadd #x07fffffffffeffd0 strlen_43_64))
     (bvule (bvadd #b01 ((_ extract 1 0) strlen_43_64)) #b10)))
(minimize (bvadd #x0000000000000001 strlen_43_64))
(check-sat)