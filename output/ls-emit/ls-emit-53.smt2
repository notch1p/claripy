(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat #b11111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_2_8) #b0 #b1))
                   #b1))
      (a!3 (concat (concat #b00000000000000001111111111111111111111110000000000000000101
                           (ite (= #x00 args_2_8) #b1 #b0))
                   #b101))
      (a!6 (concat (concat #b01 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!8 (concat (concat #b1 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!11 (concat (concat (ite (= #x00 args_2_8) #b1 #b0) #b101)
                    (ite (= #x00 args_0_8) #b1 #b0)))
      (a!13 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!14 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!15 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!17 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!19 (ite (= ((_ extract 7 7) args_1_8)
                    ((_ extract 7 7) (bvadd #xc1 args_1_8)))
                 #b1
                 #b0)))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!4 (bvadd #xffffffffffffffff
                  (concat a!3 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvadd #b1111111 (concat a!6 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!9 (bvadd #b111111 (concat a!8 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!11))
                          (ite (= #x00 args_2_8) #b1 #b0))))
      (a!20 (or (= #x3f args_1_8)
                (= ((_ extract 7 7) (bvadd #xc1 args_1_8)) a!19))))
(let ((a!5 (concat (concat (bvnot ((_ extract 63 48) a!4))
                           ((_ extract 47 24) a!4))
                   (bvnot ((_ extract 23 8) a!4)))))
(let ((a!10 (concat (concat (concat a!5 ((_ extract 7 7) a!4))
                            (bvnot ((_ extract 6 6) a!7)))
                    ((_ extract 5 5) a!9))))
(let ((a!16 (concat (concat (concat (concat a!10 a!12) ((_ extract 3 3) a!13))
                            (bvnot ((_ extract 2 2) a!14)))
                    ((_ extract 1 1) a!15))))
(let ((a!18 (bvor (concat a!2 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!16 (bvnot a!17)))))
  (and (= #x0000000000000000 (bvnot a!18))
       (not (= #x2d args_2_8))
       (bvule #b100000000 (concat args_1_8 #b0))
       a!20))))))))
(maximize (bvadd (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000001)
       #x00000000c0000101))
(check-sat)