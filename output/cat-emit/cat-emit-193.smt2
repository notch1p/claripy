(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat (ite (= #x00 args_2_8) #b1 #b0) #b101)
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!3 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!6 (concat (concat #b11111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_2_8) #b0 #b1))
                   #b1))
      (a!8 (concat (concat #b00000000000000001111111111111111111111110000000000000000101
                           (ite (= #x00 args_2_8) #b1 #b0))
                   #b101))
      (a!11 (concat (concat #b01 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!13 (concat (concat #b1 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!17 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!18 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!20 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0))))
(let ((a!2 (or (not (= #x2f args_2_8))
               (= ((_ extract 4 4) (bvadd #b11111 a!1))
                  (ite (= #x00 args_2_8) #b1 #b0))))
      (a!4 (ite (or (not (= #x2f args_1_8)) (= #b0 ((_ extract 2 2) a!3)))
                (ite (= #x2f args_0_8) #x000000000000003f #x0000000000000040)
                #x000000000000003d))
      (a!7 (concat (concat a!6 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!9 (bvadd #xffffffffffffffff
                  (concat a!8 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvadd #b1111111 (concat a!11 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!14 (bvadd #b111111 (concat a!13 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!16 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!1))
                          (ite (= #x00 args_2_8) #b1 #b0)))))
(let ((a!5 (bvsge #x0000000000000006
                  (bvadd #x0000000000000040
                         (bvmul #xffffffffffffffff
                                (ite a!2 a!4 #x000000000000003b)))))
      (a!10 (concat (concat (bvnot ((_ extract 63 48) a!9))
                            ((_ extract 47 24) a!9))
                    (bvnot ((_ extract 23 8) a!9)))))
(let ((a!15 (concat (concat (concat a!10 ((_ extract 7 7) a!9))
                            (bvnot ((_ extract 6 6) a!12)))
                    ((_ extract 5 5) a!14))))
(let ((a!19 (concat (concat (concat (concat a!15 a!16) ((_ extract 3 3) a!17))
                            (bvnot ((_ extract 2 2) a!3)))
                    ((_ extract 1 1) a!18))))
(let ((a!21 (bvor (concat a!7 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!19 (bvnot a!20)))))
  (and a!5
       (not (= #x0000000000000000 (bvnot a!21)))
       (not (= #x2d args_1_8))
       (not (= #x2d args_2_8))
       (not (= #x00 args_1_8))
       (= #b00 ((_ extract 7 6) args_1_8))))))))))
(define-fun goal () (_ BitVec 64) (bvadd #x0000000000406a94
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002))) 
(minimize goal)
(check-sat)