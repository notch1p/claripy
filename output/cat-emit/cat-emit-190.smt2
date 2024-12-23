(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat #b111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_3_8) #b0 #b1))
                   #b111))
      (a!3 (concat (concat #b000000000000000011111111111111111111111100000000000000001
                           (ite (= #x00 args_3_8) #b1 #b0))
                   #b10101))
      (a!6 (concat (concat (ite (= #x00 args_3_8) #b1 #b0) #b10101)
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!8 (bvadd #b111111 (concat #b10101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!10 (bvadd #b11111 (concat #x5 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!11 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!13 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!14 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!16 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0))))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!4 (bvadd #xffffffffffffffff
                  (concat a!3 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvnot (bvxor ((_ extract 6 6) (bvadd #b1111111 a!6))
                         (ite (= #x00 args_3_8) #b1 #b0))))
      (a!18 (or (not (= #x2f args_3_8))
                (= ((_ extract 6 6) (bvadd #b1111111 a!6))
                   (ite (= #x00 args_3_8) #b1 #b0))))
      (a!19 (ite (or (not (= #x2f args_1_8)) (= #b0 ((_ extract 2 2) a!13)))
                 (ite (= #x2f args_0_8) #x000000000000003f #x0000000000000040)
                 #x000000000000003d)))
(let ((a!5 (concat (concat (bvnot ((_ extract 63 48) a!4))
                           ((_ extract 47 24) a!4))
                   (bvnot ((_ extract 23 8) a!4))))
      (a!20 (bvsge #x0000000000000006
                   (bvadd #x0000000000000040
                          (bvmul #xffffffffffffffff
                                 (ite a!18 a!19 #x0000000000000039))))))
(let ((a!9 (concat (concat (concat a!5 ((_ extract 7 7) a!4)) a!7)
                   ((_ extract 5 5) a!8))))
(let ((a!12 (concat (concat a!9 (bvnot ((_ extract 4 4) a!10)))
                    ((_ extract 3 3) a!11))))
(let ((a!15 (concat (concat a!12 (bvnot ((_ extract 2 2) a!13)))
                    ((_ extract 1 1) a!14))))
(let ((a!17 (bvor (concat a!2 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!15 (bvnot a!16)))))
  (and (not (= #x0000000000000000 (bvnot a!17)))
       a!20
       (not (= #x2d args_1_8))
       (not (= #x2d args_3_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       (bvule #b0000000100 (concat args_1_8 #b00)))))))))))
(define-fun goal () (_ BitVec 64) (bvadd #x0000000000406a94
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002))) 
(maximize goal)
(check-sat)