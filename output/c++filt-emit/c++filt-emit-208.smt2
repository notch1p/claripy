(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun strlen_796_64 () (_ BitVec 64))
(assert (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
(let ((a!2 (ite (or (= #x01 a!1) (not (= #x00 a!1)))
                (bvadd #x07fffffffffeffe7 (concat #x00000000000000 a!1))
                (bvadd #x07fffffffffeffe8 (concat #x00000000000000 a!1)))))
(let ((a!3 (ite (and (not (= #x00 a!1)) (not (= #x01 a!1)))
                (bvadd #x07fffffffffeffd8 (concat #x00000000000000 a!1))
                a!2)))
(let ((a!4 (ite (or (= #x01 a!1) (not (= #x00 a!1)))
                (bvadd #x07fffffffffeffd6 (concat #x00000000000000 a!1))
                (ite (= #x01 a!1)
                     a!3
                     (bvadd #x07fffffffffeffd7 (concat #x00000000000000 a!1))))))
(let ((a!5 (ite (or (= #x00 args_2_8) (= #x01 a!1) (not (= #x00 a!1)))
                (bvadd #x07fffffffffeffd4 (concat #x00000000000000 a!1))
                (ite (= #x01 a!1)
                     a!4
                     (bvadd #x07fffffffffeffd5 (concat #x00000000000000 a!1))))))
(let ((a!6 (= (bvadd a!5
                     (bvmul #xffffffffffffffff (concat #x00000000000000 a!1)))
              (bvadd #x07fffffffffeffd4 strlen_796_64))))
  (and (not (= #x40 args_2_8))
       (not (= #x2d args_2_8))
       a!6
       (or (not (= #x5f args_2_8)) (= #x01 a!1) (not (= #x00 a!1)))))))))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
  (bvadd #x07fffffffffeffd4 (concat #x00000000000000 a!1)))) 
(maximize goal)
(check-sat)