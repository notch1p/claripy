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
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!21 (bvule (bvadd #b10000011100011001011100
                          (concat (concat #b0000000000000 args_1_8) #b00))
                   #b10000011100011101011000))
      (a!22 (not (or (not (= #x01 args_1_8)) (= #x3f args_1_8)))))
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
                          (ite (= #x00 args_3_8) #b1 #b0))))
      (a!23 (or (= #x3e args_1_8) (not (or (= #x02 args_1_8) a!22)))))
(let ((a!5 (bvsge #x0000000000000006
                  (bvadd #x0000000000000040
                         (bvmul #xffffffffffffffff
                                (ite a!2 a!4 #x0000000000000039)))))
      (a!10 (concat (concat (bvnot ((_ extract 63 48) a!9))
                            ((_ extract 47 24) a!9))
                    (bvnot ((_ extract 23 8) a!9))))
      (a!24 (or (= #x3d args_1_8) (not (or (= #x03 args_1_8) (not a!23))))))
(let ((a!13 (concat (concat (concat a!10 ((_ extract 7 7) a!9)) a!11)
                    ((_ extract 5 5) a!12)))
      (a!25 (or (= #x3c args_1_8) (not (or (= #x04 args_1_8) (not a!24))))))
(let ((a!16 (concat (concat a!13 (bvnot ((_ extract 4 4) a!14)))
                    ((_ extract 3 3) a!15)))
      (a!26 (or (= #x3b args_1_8) (not (or (= #x05 args_1_8) (not a!25))))))
(let ((a!18 (concat (concat a!16 (bvnot ((_ extract 2 2) a!3)))
                    ((_ extract 1 1) a!17)))
      (a!27 (or (not (or (= #x06 args_1_8) (not a!26)))
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
                (= #x3a args_1_8)
                (= #x07 args_1_8))))
(let ((a!20 (bvor (concat a!7 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!18 (bvnot a!19))))
      (a!28 (or (= #x32 args_1_8) (not (or (= #x0e args_1_8) (not a!27))))))
(let ((a!29 (or (= #x31 args_1_8) (not (or (= #x0f args_1_8) (not a!28))))))
(let ((a!30 (or (= #x30 args_1_8) (not (or (= #x10 args_1_8) (not a!29))))))
(let ((a!31 (or (= #x2f args_1_8) (not (or (= #x11 args_1_8) (not a!30))))))
(let ((a!32 (or (= #x2e args_1_8) (not (or (= #x12 args_1_8) (not a!31))))))
(let ((a!33 (or (= #x2c args_1_8) (not (or (= #x13 args_1_8) (not a!32))))))
(let ((a!34 (or (= #x2b args_1_8) (not (or (= #x14 args_1_8) (not a!33))))))
(let ((a!35 (or (= #x2a args_1_8) (not (or (= #x15 args_1_8) (not a!34))))))
(let ((a!36 (or (= #x29 args_1_8) (not (or (= #x16 args_1_8) (not a!35))))))
(let ((a!37 (or (= #x28 args_1_8) (not (or (= #x17 args_1_8) (not a!36))))))
(let ((a!38 (or (= #x27 args_1_8) (not (or (= #x18 args_1_8) (not a!37))))))
(let ((a!39 (or (= #x26 args_1_8) (not (or (= #x19 args_1_8) (not a!38))))))
(let ((a!40 (or (= #x25 args_1_8) (not (or (= #x1a args_1_8) (not a!39))))))
(let ((a!41 (or (= #x24 args_1_8) (not (or (= #x1b args_1_8) (not a!40))))))
(let ((a!42 (or (= #x23 args_1_8) (not (or (= #x1c args_1_8) (not a!41))))))
(let ((a!43 (or (= #x22 args_1_8) (not (or (= #x1d args_1_8) (not a!42))))))
(let ((a!44 (or (= #x21 args_1_8) (not (or (= #x1e args_1_8) (not a!43))))))
  (and a!5
       (not (= #x0000000000000000 (bvnot a!20)))
       (not (= #x2d args_1_8))
       (not (= #x2d args_3_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       (bvule #b0000000100 (concat args_1_8 #b00))
       a!21
       (not (= #x20 args_1_8))
       (or (= #x1f args_1_8) (not a!44)))))))))))))))))))))))))))
(define-fun goal () (_ BitVec 64) (bvadd (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000001)
       #x00000000c0000101)) 
(minimize goal)
(check-sat)