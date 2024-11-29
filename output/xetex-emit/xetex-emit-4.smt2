(declare-fun strlen_70_64 () (_ BitVec 64))
(declare-fun strlen_73_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (bvule (ite (= #xffffffffffffffff strlen_70_64)
                       #b01
                       (bvadd #b01 ((_ extract 1 0) strlen_70_64)))
                  #b10))
      (a!2 (or (= #xffffffffffffffff strlen_70_64)
               (= #b00000000000000000000000000000000000000000000000000000000000000
                  ((_ extract 63 2) (bvadd #x0000000000000001 strlen_70_64))))))
  (and (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
          (bvadd #x07fffffffffeffd0 strlen_70_64))
       a!1
       (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
          (bvadd #x07fffffffffeffd0 strlen_73_64))
       a!2)))
(maximize (bvadd strlen_73_64 #x0000000000000001))
(check-sat)