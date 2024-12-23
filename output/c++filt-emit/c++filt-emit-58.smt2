(declare-fun args_1_8 () (_ BitVec 8))
(assert (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_1_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_1_8) #b1 #b0)))))
  (and (not (= #x2d args_1_8))
       (not (= #x40 args_1_8))
       (or (not (= #x00 a!1)) (= #x01 a!1) (not (= #x5f args_1_8))))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_1_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_1_8) #b1 #b0)))))
  (bvadd (concat #x00000000000000 a!1) #x07fffffffffeffd2))) 
(maximize goal)
(check-sat)