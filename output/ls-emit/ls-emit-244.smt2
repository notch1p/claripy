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
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!18 (bvule (bvadd #xc0000101
                          (concat (concat #b00000000000000000000000 args_1_8)
                                  #b0))
                   #xc000013f))
      (a!19 (not (or (not (= #x01 args_1_8)) (= #x3f args_1_8)))))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!4 (bvadd #xffffffffffffffff
                  (concat a!3 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvnot (bvxor ((_ extract 6 6) (bvadd #b1111111 a!6))
                         (ite (= #x00 args_3_8) #b1 #b0))))
      (a!20 (or (= #x3e args_1_8) (not (or (= #x02 args_1_8) a!19)))))
(let ((a!5 (concat (concat (bvnot ((_ extract 63 48) a!4))
                           ((_ extract 47 24) a!4))
                   (bvnot ((_ extract 23 8) a!4))))
      (a!21 (or (= #x3d args_1_8) (not (or (= #x03 args_1_8) (not a!20))))))
(let ((a!9 (concat (concat (concat a!5 ((_ extract 7 7) a!4)) a!7)
                   ((_ extract 5 5) a!8)))
      (a!22 (or (= #x3c args_1_8) (not (or (= #x04 args_1_8) (not a!21))))))
(let ((a!12 (concat (concat a!9 (bvnot ((_ extract 4 4) a!10)))
                    ((_ extract 3 3) a!11)))
      (a!23 (or (= #x3b args_1_8) (not (or (= #x05 args_1_8) (not a!22))))))
(let ((a!15 (concat (concat a!12 (bvnot ((_ extract 2 2) a!13)))
                    ((_ extract 1 1) a!14)))
      (a!24 (or (not (or (= #x06 args_1_8) (not a!23)))
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
                (= #x33 args_1_8)
                (= #x0d args_1_8))))
(let ((a!17 (bvor (concat a!2 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!15 (bvnot a!16))))
      (a!25 (or (= #x32 args_1_8) (not (or (= #x0e args_1_8) (not a!24))))))
(let ((a!26 (or (= #x31 args_1_8) (not (or (= #x0f args_1_8) (not a!25))))))
(let ((a!27 (or (= #x30 args_1_8) (not (or (= #x10 args_1_8) (not a!26))))))
(let ((a!28 (or (= #x2f args_1_8) (not (or (= #x11 args_1_8) (not a!27))))))
(let ((a!29 (or (= #x2e args_1_8) (not (or (= #x12 args_1_8) (not a!28))))))
(let ((a!30 (or (= #x2c args_1_8) (not (or (= #x13 args_1_8) (not a!29))))))
(let ((a!31 (or (= #x2b args_1_8) (not (or (= #x14 args_1_8) (not a!30))))))
(let ((a!32 (or (= #x2a args_1_8) (not (or (= #x15 args_1_8) (not a!31))))))
(let ((a!33 (or (= #x29 args_1_8) (not (or (= #x16 args_1_8) (not a!32))))))
(let ((a!34 (or (= #x28 args_1_8) (not (or (= #x17 args_1_8) (not a!33))))))
(let ((a!35 (or (= #x27 args_1_8) (not (or (= #x18 args_1_8) (not a!34))))))
(let ((a!36 (or (= #x26 args_1_8) (not (or (= #x19 args_1_8) (not a!35))))))
(let ((a!37 (or (= #x25 args_1_8) (not (or (= #x1a args_1_8) (not a!36))))))
(let ((a!38 (or (= #x24 args_1_8) (not (or (= #x1b args_1_8) (not a!37))))))
(let ((a!39 (or (= #x23 args_1_8) (not (or (= #x1c args_1_8) (not a!38))))))
(let ((a!40 (or (= #x22 args_1_8) (not (or (= #x1d args_1_8) (not a!39))))))
(let ((a!41 (or (= #x21 args_1_8) (not (or (= #x1e args_1_8) (not a!40))))))
  (and (= #x0000000000000000 (bvnot a!17))
       (not (= #x2d args_3_8))
       (bvule #b000000010 (concat args_1_8 #b0))
       a!18
       (or (= #x1f args_1_8) (not a!41)))))))))))))))))))))))))))
(minimize (bvadd #x000000000041c65c
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002)))
(check-sat)