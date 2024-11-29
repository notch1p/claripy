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
      (a!22 (bvule (bvadd #b10000000110101010010100
                          (concat (concat #b0000000000000 args_1_8) #b00))
                   #b10000000110101110010000))
      (a!23 (not (or (not (= #x3e args_1_8)) (= #x03 args_1_8)))))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_2_8) #b0 #b1)) #b1))
      (a!5 (concat (concat a!4 (ite (= #x00 args_2_8) #b1 #b0)) #b101))
      (a!9 (bvadd #b1111111
                  (concat (concat a!8 #b101) (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvadd #b111111 (concat a!11 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!15 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!14))
                          (ite (= #x00 args_2_8) #b1 #b0))))
      (a!24 (or (= #x04 args_1_8) (not (or (= #x3d args_1_8) a!23)))))
(let ((a!3 (concat (concat a!2 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!6 (bvadd #xffffffffffffffff
                  (concat a!5 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!10 (bvnot (bvxor ((_ extract 6 6) a!9) (ite (= #x00 args_3_8) #b1 #b0))))
      (a!25 (or (= #x05 args_1_8) (not (or (= #x3c args_1_8) (not a!24))))))
(let ((a!7 (concat (concat (bvnot ((_ extract 63 48) a!6))
                           ((_ extract 47 24) a!6))
                   (bvnot ((_ extract 23 8) a!6))))
      (a!26 (or (not (or (= #x3b args_1_8) (not a!25)))
                (= #x15 args_1_8)
                (= #x2b args_1_8)
                (= #x14 args_1_8)
                (= #x2c args_1_8)
                (= #x13 args_1_8)
                (= #x2e args_1_8)
                (= #x12 args_1_8)
                (= #x2f args_1_8)
                (= #x11 args_1_8)
                (= #x30 args_1_8)
                (= #x10 args_1_8)
                (= #x31 args_1_8)
                (= #x0f args_1_8)
                (= #x32 args_1_8)
                (= #x0e args_1_8)
                (= #x33 args_1_8)
                (= #x0d args_1_8)
                (= #x34 args_1_8)
                (= #x0c args_1_8)
                (= #x35 args_1_8)
                (= #x0b args_1_8)
                (= #x36 args_1_8)
                (= #x0a args_1_8)
                (= #x37 args_1_8)
                (= #x09 args_1_8)
                (= #x38 args_1_8)
                (= #x08 args_1_8)
                (= #x39 args_1_8)
                (= #x07 args_1_8)
                (= #x06 args_1_8)
                (= #x3a args_1_8))))
(let ((a!13 (concat (concat (concat a!7 ((_ extract 7 7) a!6)) a!10)
                    ((_ extract 5 5) a!12)))
      (a!27 (or (= #x16 args_1_8) (not (or (= #x2a args_1_8) (not a!26))))))
(let ((a!19 (concat (concat (concat (concat a!13 a!15) ((_ extract 3 3) a!16))
                            (bvnot ((_ extract 2 2) a!17)))
                    ((_ extract 1 1) a!18)))
      (a!28 (or (= #x17 args_1_8) (not (or (= #x29 args_1_8) (not a!27))))))
(let ((a!21 (bvor (concat a!3 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!19 (bvnot a!20))))
      (a!29 (or (not (or (= #x28 args_1_8) (not a!28)))
                (= #x19 args_1_8)
                (= #x18 args_1_8)
                (= #x27 args_1_8))))
(let ((a!30 (or (not (or (= #x26 args_1_8) (not a!29)))
                (= #x1b args_1_8)
                (= #x1a args_1_8)
                (= #x25 args_1_8))))
(let ((a!31 (or (not (or (= #x24 args_1_8) (not a!30)))
                (= #x1d args_1_8)
                (= #x1c args_1_8)
                (= #x23 args_1_8))))
(let ((a!32 (or (= #x1e args_1_8) (not (or (= #x22 args_1_8) (not a!31))))))
  (and (not (= #x2d args_1_8))
       (= #x0000000000000000 (bvnot a!21))
       (not (= #x2d args_2_8))
       (not (= #x2d args_3_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       (bvule #b0000000100 (concat args_1_8 #b00))
       a!22
       (not (= #x1f args_1_8))
       (not (= #x20 args_1_8))
       (or (= #x21 args_1_8) (not a!32))))))))))))))
(minimize (bvadd #x0000000000406a94
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002)))
(check-sat)