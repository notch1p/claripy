(declare-fun strlen_67_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (and (not (= #x2f args_0_8))
     (not (= #x2d args_0_8))
     (not (= #x73 args_0_8))
     (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
        (bvadd #x07fffffffffeffd0 strlen_67_64))))
(maximize (bvadd #x0000000000000001 strlen_67_64))
(check-sat)