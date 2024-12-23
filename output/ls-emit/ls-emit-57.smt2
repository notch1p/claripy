(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat #b111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_3_8) #b0 #b1))
                   #b1))
      (a!4 (concat (concat #b000000000000000011111111111111111111111100000000000000001
                           (ite (= #x00 args_3_8) #b1 #b0))
                   #b1))
      (a!8 (concat (concat (ite (= #x00 args_3_8) #b1 #b0) #b1)
                   (ite (= #x00 args_2_8) #b1 #b0)))
      (a!11 (concat (concat #b1 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!14 (concat (concat (ite (= #x00 args_2_8) #b1 #b0) #b101)
                    (ite (= #x00 args_0_8) #b1 #b0)))
      (a!16 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!17 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!18 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!20 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!22 (ite (= ((_ extract 7 7) args_1_8)
                    ((_ extract 7 7) (bvadd #xc1 args_1_8)))
                 #b1
                 #b0)))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_2_8) #b0 #b1)) #b1))
      (a!5 (concat (concat a!4 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!9 (bvadd #b1111111
                  (concat (concat a!8 #b101) (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvadd #b111111 (concat a!11 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!15 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!14))
                          (ite (= #x00 args_2_8) #b1 #b0))))
      (a!23 (or (= #x3f args_1_8)
                (= ((_ extract 7 7) (bvadd #xc1 args_1_8)) a!22))))
(let ((a!3 (concat (concat a!2 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!6 (bvadd #xffffffffffffffff
                  (concat a!5 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!10 (bvnot (bvxor ((_ extract 6 6) a!9) (ite (= #x00 args_3_8) #b1 #b0)))))
(let ((a!7 (concat (concat (bvnot ((_ extract 63 48) a!6))
                           ((_ extract 47 24) a!6))
                   (bvnot ((_ extract 23 8) a!6)))))
(let ((a!13 (concat (concat (concat a!7 ((_ extract 7 7) a!6)) a!10)
                    ((_ extract 5 5) a!12))))
(let ((a!19 (concat (concat (concat (concat a!13 a!15) ((_ extract 3 3) a!16))
                            (bvnot ((_ extract 2 2) a!17)))
                    ((_ extract 1 1) a!18))))
(let ((a!21 (bvor (concat a!3 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!19 (bvnot a!20)))))
  (and (= #x0000000000000000 (bvnot a!21))
       (not (= #x2d args_2_8))
       (not (= #x2d args_3_8))
       (bvule #b100000000 (concat args_1_8 #b0))
       a!23)))))))))
(define-fun goal () (_ BitVec 64) (bvadd (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000001)
       #x00000000c0000101)) 
(maximize goal)
(check-sat)