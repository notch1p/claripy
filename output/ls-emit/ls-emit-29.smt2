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
                   (ite (= #x00 args_0_8) #b1 #b0))))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!4 (bvadd #xffffffffffffffff
                  (concat a!3 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvadd #b1111111 (concat a!6 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!9 (bvadd #b111111 (concat a!8 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!11))
                          (ite (= #x00 args_2_8) #b1 #b0))))
      (a!19 (or (not (= #x2f args_2_8))
                (= ((_ extract 4 4) (bvadd #b11111 a!11))
                   (ite (= #x00 args_2_8) #b1 #b0))))
      (a!20 (ite (or (not (= #x2f args_1_8)) (= #b0 ((_ extract 2 2) a!14)))
                 (ite (= #x2f args_0_8) #x000000000000003f #x0000000000000040)
                 #x000000000000003d)))
(let ((a!5 (concat (concat (bvnot ((_ extract 63 48) a!4))
                           ((_ extract 47 24) a!4))
                   (bvnot ((_ extract 23 8) a!4))))
      (a!21 (bvsge #x0000000000000006
                   (bvadd #x0000000000000040
                          (bvmul #xffffffffffffffff
                                 (ite a!19 a!20 #x000000000000003b))))))
(let ((a!10 (concat (concat (concat a!5 ((_ extract 7 7) a!4))
                            (bvnot ((_ extract 6 6) a!7)))
                    ((_ extract 5 5) a!9))))
(let ((a!16 (concat (concat (concat (concat a!10 a!12) ((_ extract 3 3) a!13))
                            (bvnot ((_ extract 2 2) a!14)))
                    ((_ extract 1 1) a!15))))
(let ((a!18 (bvor (concat a!2 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!16 (bvnot a!17)))))
  (and (not (= #x0000000000000000 (bvnot a!18)))
       a!21
       (not (= #x2d args_1_8))
       (not (= #x2d args_2_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       (bvule #b0000000100 (concat args_1_8 #b00))))))))))
(define-fun goal () (_ BitVec 64) (bvadd #x000000000041c65c
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002))) 
(maximize goal)
(check-sat)