(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat #b1111111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_1_8) #b0 #b1))
                   #b1))
      (a!2 (bvadd #xffffffffffffffff
                  (concat #b000000000000000011111111111111111111111100000000000000001010101
                          (ite (= #x00 args_0_8) #b1 #b0))))
      (a!4 (bvadd #b1111111 (concat #b010101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!5 (bvadd #b111111 (concat #b10101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvadd #b11111 (concat #x5 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!8 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!10 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!11 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!13 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!15 (ite (= ((_ extract 7 7) args_1_8)
                    ((_ extract 7 7) (bvadd #xc1 args_1_8)))
                 #b1
                 #b0)))
(let ((a!3 (concat (concat (bvnot ((_ extract 63 48) a!2))
                           ((_ extract 47 24) a!2))
                   (bvnot ((_ extract 23 8) a!2))))
      (a!16 (or (= #x3f args_1_8)
                (= ((_ extract 7 7) (bvadd #xc1 args_1_8)) a!15))))
(let ((a!6 (concat (concat (concat a!3 ((_ extract 7 7) a!2))
                           (bvnot ((_ extract 6 6) a!4)))
                   ((_ extract 5 5) a!5))))
(let ((a!9 (concat (concat a!6 (bvnot ((_ extract 4 4) a!7)))
                   ((_ extract 3 3) a!8))))
(let ((a!12 (concat (concat a!9 (bvnot ((_ extract 2 2) a!10)))
                    ((_ extract 1 1) a!11))))
(let ((a!14 (bvor (concat a!1 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!12 (bvnot a!13)))))
  (and (= #x0000000000000000 (bvnot a!14))
       (not (= #b0 ((_ extract 7 7) args_1_8)))
       a!16))))))))
(minimize (bvadd (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000001)
       #x00000000c0000101))
(check-sat)