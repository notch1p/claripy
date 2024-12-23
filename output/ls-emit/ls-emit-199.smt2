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
      (a!19 (bvule (bvadd #b10000011100011001011100
                          (concat (concat #b0000000000000 args_1_8) #b00))
                   #b10000011100011101011000))
      (a!20 (not (or (not (= #x3e args_1_8)) (= #x03 args_1_8)))))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!4 (bvadd #xffffffffffffffff
                  (concat a!3 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvadd #b1111111 (concat a!6 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!9 (bvadd #b111111 (concat a!8 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!11))
                          (ite (= #x00 args_2_8) #b1 #b0))))
      (a!21 (or (= #x04 args_1_8) (not (or (= #x3d args_1_8) a!20)))))
(let ((a!5 (concat (concat (bvnot ((_ extract 63 48) a!4))
                           ((_ extract 47 24) a!4))
                   (bvnot ((_ extract 23 8) a!4))))
      (a!22 (or (= #x05 args_1_8) (not (or (= #x3c args_1_8) (not a!21))))))
(let ((a!10 (concat (concat (concat a!5 ((_ extract 7 7) a!4))
                            (bvnot ((_ extract 6 6) a!7)))
                    ((_ extract 5 5) a!9)))
      (a!23 (or (not (or (= #x3b args_1_8) (not a!22)))
                (= #x06 args_1_8)
                (= #x3a args_1_8)
                (= #x07 args_1_8)
                (= #x39 args_1_8)
                (= #x08 args_1_8)
                (= #x38 args_1_8)
                (= #x09 args_1_8)
                (= #x37 args_1_8)
                (= #x0a args_1_8)
                (= #x36 args_1_8)
                (= #x0b args_1_8)
                (= #x35 args_1_8)
                (= #x0c args_1_8)
                (= #x34 args_1_8)
                (= #x0d args_1_8)
                (= #x33 args_1_8)
                (= #x0e args_1_8)
                (= #x32 args_1_8)
                (= #x0f args_1_8)
                (= #x31 args_1_8)
                (= #x10 args_1_8)
                (= #x30 args_1_8)
                (= #x11 args_1_8)
                (= #x12 args_1_8)
                (= #x2e args_1_8)
                (= #x13 args_1_8)
                (= #x2c args_1_8)
                (= #x14 args_1_8)
                (= #x2b args_1_8)
                (= #x2f args_1_8)
                (= #x15 args_1_8))))
(let ((a!16 (concat (concat (concat (concat a!10 a!12) ((_ extract 3 3) a!13))
                            (bvnot ((_ extract 2 2) a!14)))
                    ((_ extract 1 1) a!15)))
      (a!24 (or (= #x16 args_1_8) (not (or (= #x2a args_1_8) (not a!23))))))
(let ((a!18 (bvor (concat a!2 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!16 (bvnot a!17))))
      (a!25 (or (= #x17 args_1_8) (not (or (= #x29 args_1_8) (not a!24))))))
(let ((a!26 (or (not (or (= #x28 args_1_8) (not a!25)))
                (= #x18 args_1_8)
                (= #x19 args_1_8)
                (= #x27 args_1_8))))
(let ((a!27 (or (not (or (= #x26 args_1_8) (not a!26)))
                (= #x1a args_1_8)
                (= #x1b args_1_8)
                (= #x25 args_1_8))))
(let ((a!28 (or (not (or (= #x24 args_1_8) (not a!27)))
                (= #x1d args_1_8)
                (= #x1c args_1_8)
                (= #x23 args_1_8))))
(let ((a!29 (or (= #x1e args_1_8) (not (or (= #x22 args_1_8) (not a!28))))))
  (and (= #x0000000000000000 (bvnot a!18))
       (not (= #x2d args_1_8))
       (not (= #x2d args_2_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       a!19
       (bvule #b0010000100 (concat args_1_8 #b00))
       (or (= #x21 args_1_8) (not a!29))))))))))))))
(define-fun goal () (_ BitVec 64) (bvadd #x000000000041c65c
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002))) 
(maximize goal)
(check-sat)