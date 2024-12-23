(declare-fun args_2_8 () (_ BitVec 8))
(assert (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
  (and (not (= #x2d args_2_8))
       (not (= #x40 args_2_8))
       (or (not (= #x5f args_2_8)) (= #x01 a!1) (not (= #x00 a!1))))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
  (bvadd (concat #x00000000000000 a!1) #x07fffffffffeffd4))) 
(maximize goal)
(check-sat)