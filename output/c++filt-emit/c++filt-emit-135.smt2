(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_332_64 () (_ BitVec 64))
(declare-fun strlen_110_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_1_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_1_8) #b1 #b0))))
      (a!10 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                  (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
(let ((a!2 (ite (or (= #x01 a!1) (not (= #x00 a!1)))
                (bvadd #x07fffffffffeffe7 (concat #x00000000000000 a!1))
                (bvadd #x07fffffffffeffe8 (concat #x00000000000000 a!1)))))
(let ((a!3 (ite (and (not (= #x00 a!1)) (not (= #x01 a!1)))
                (bvadd #x07fffffffffeffd8 (concat #x00000000000000 a!1))
                a!2)))
(let ((a!4 (ite (or (= #x01 a!1) (not (= #x00 a!1)) (= #x00 args_3_8))
                (bvadd #x07fffffffffeffd6 (concat #x00000000000000 a!1))
                (ite (= #x01 a!1)
                     a!3
                     (bvadd #x07fffffffffeffd7 (concat #x00000000000000 a!1))))))
(let ((a!5 (ite (or (= #x00 args_3_8) (not (= #x01 a!1)))
                (bvadd #x07fffffffffeffd5 (concat #x00000000000000 a!1))
                a!4)))
(let ((a!6 (ite (or (= #x01 a!1) (not (= #x00 a!1)) (= #x00 args_2_8))
                (bvadd #x07fffffffffeffd4 (concat #x00000000000000 a!1))
                a!5)))
(let ((a!7 (ite (or (= #x00 args_2_8) (not (= #x01 a!1)))
                (bvadd #x07fffffffffeffd3 (concat #x00000000000000 a!1))
                a!6)))
(let ((a!8 (ite (or (= #x01 a!1) (not (= #x00 a!1)) (= #x00 args_1_8))
                (bvadd #x07fffffffffeffd2 (concat #x00000000000000 a!1))
                a!7)))
(let ((a!9 (= (bvadd a!8
                     (bvmul #xffffffffffffffff (concat #x00000000000000 a!1)))
              (bvadd #x07fffffffffeffd2 strlen_110_64))))
  (and (not (= #x40 args_1_8))
       (not (= #x2d args_1_8))
       (not (= #x2d args_3_8))
       (not (= #x40 args_3_8))
       (not (= #x2d args_2_8))
       (not (= #x40 args_2_8))
       a!9
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_332_64))
       (= #b000000000000000000000000000000000000000000000000000000000000000
          ((_ extract 63 1) strlen_332_64))
       (or (not (= #x00 a!1)) (= #x01 a!1) (not (= #x5f args_1_8)))
       (or (= #x01 a!10) (not (= #x5f args_2_8)) (not (= #x00 a!10))))))))))))))
(minimize (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
  (bvadd (concat #x00000000000000 a!1) #x07fffffffffeffd4)))
(check-sat)