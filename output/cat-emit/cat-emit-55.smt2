(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat (ite (= #x00 args_3_8) #b1 #b0) #b10101)
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!3 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!6 (concat (concat #b111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_3_8) #b0 #b1))
                   #b111))
      (a!8 (concat (concat #b000000000000000011111111111111111111111100000000000000001
                           (ite (= #x00 args_3_8) #b1 #b0))
                   #b10101))
      (a!12 (bvadd #b111111 (concat #b10101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!14 (bvadd #b11111 (concat #x5 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!15 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!17 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!19 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0))))
(let ((a!2 (or (not (= #x2f args_3_8))
               (= ((_ extract 6 6) (bvadd #b1111111 a!1))
                  (ite (= #x00 args_3_8) #b1 #b0))))
      (a!4 (ite (or (not (= #x2f args_1_8)) (= #b0 ((_ extract 2 2) a!3)))
                (ite (= #x2f args_0_8) #x000000000000003f #x0000000000000040)
                #x000000000000003d))
      (a!7 (concat (concat a!6 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!9 (bvadd #xffffffffffffffff
                  (concat a!8 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!11 (bvnot (bvxor ((_ extract 6 6) (bvadd #b1111111 a!1))
                          (ite (= #x00 args_3_8) #b1 #b0)))))
(let ((a!5 (bvsge #x0000000000000006
                  (bvadd #x0000000000000040
                         (bvmul #xffffffffffffffff
                                (ite a!2 a!4 #x0000000000000039)))))
      (a!10 (concat (concat (bvnot ((_ extract 63 48) a!9))
                            ((_ extract 47 24) a!9))
                    (bvnot ((_ extract 23 8) a!9)))))
(let ((a!13 (concat (concat (concat a!10 ((_ extract 7 7) a!9)) a!11)
                    ((_ extract 5 5) a!12))))
(let ((a!16 (concat (concat a!13 (bvnot ((_ extract 4 4) a!14)))
                    ((_ extract 3 3) a!15))))
(let ((a!18 (concat (concat a!16 (bvnot ((_ extract 2 2) a!3)))
                    ((_ extract 1 1) a!17))))
(let ((a!20 (bvor (concat a!7 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!18 (bvnot a!19)))))
  (and a!5
       (not (= #x0000000000000000 (bvnot a!20)))
       (not (= #x2d args_1_8))
       (not (= #x2d args_3_8))
       (not (= #x00 args_1_8))
       (= #b00 ((_ extract 7 6) args_1_8)))))))))))
(minimize (bvadd #x0000000000406a94
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002)))
(check-sat)