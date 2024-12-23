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
      (a!16 (bvule (bvadd #b10000000110101010010100
                          (concat (concat #b0000000000000 args_1_8) #b00))
                   #b10000000110101110010000))
      (a!17 (not (or (not (= #x01 args_1_8)) (= #x3f args_1_8)))))
(let ((a!3 (concat (concat (bvnot ((_ extract 63 48) a!2))
                           ((_ extract 47 24) a!2))
                   (bvnot ((_ extract 23 8) a!2))))
      (a!15 (ite (or (not (= #x2f args_1_8)) (= #b0 ((_ extract 2 2) a!10)))
                 (ite (= #x2f args_0_8) #x000000000000003f #x0000000000000040)
                 #x000000000000003d))
      (a!18 (or (= #x3e args_1_8) (not (or (= #x02 args_1_8) a!17)))))
(let ((a!6 (concat (concat (concat a!3 ((_ extract 7 7) a!2))
                           (bvnot ((_ extract 6 6) a!4)))
                   ((_ extract 5 5) a!5)))
      (a!19 (or (= #x3d args_1_8) (not (or (= #x03 args_1_8) (not a!18))))))
(let ((a!9 (concat (concat a!6 (bvnot ((_ extract 4 4) a!7)))
                   ((_ extract 3 3) a!8)))
      (a!20 (or (= #x3c args_1_8) (not (or (= #x04 args_1_8) (not a!19))))))
(let ((a!12 (concat (concat a!9 (bvnot ((_ extract 2 2) a!10)))
                    ((_ extract 1 1) a!11)))
      (a!21 (or (= #x3b args_1_8) (not (or (= #x05 args_1_8) (not a!20))))))
(let ((a!14 (bvor (concat a!1 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!12 (bvnot a!13))))
      (a!22 (or (not (or (= #x06 args_1_8) (not a!21)))
                (= #x0b args_1_8)
                (= #x37 args_1_8)
                (= #x0c args_1_8)
                (= #x35 args_1_8)
                (= #x08 args_1_8)
                (= #x36 args_1_8)
                (= #x0a args_1_8)
                (= #x09 args_1_8)
                (= #x38 args_1_8)
                (= #x3a args_1_8)
                (= #x39 args_1_8)
                (= #x07 args_1_8)
                (= #x34 args_1_8)
                (= #x0d args_1_8)
                (= #x33 args_1_8))))
(let ((a!23 (or (= #x32 args_1_8) (not (or (= #x0e args_1_8) (not a!22))))))
(let ((a!24 (or (= #x31 args_1_8) (not (or (= #x0f args_1_8) (not a!23))))))
(let ((a!25 (or (= #x30 args_1_8) (not (or (= #x10 args_1_8) (not a!24))))))
(let ((a!26 (or (= #x2f args_1_8) (not (or (= #x11 args_1_8) (not a!25))))))
(let ((a!27 (or (= #x2e args_1_8) (not (or (= #x12 args_1_8) (not a!26))))))
(let ((a!28 (or (= #x2c args_1_8) (not (or (= #x13 args_1_8) (not a!27))))))
(let ((a!29 (or (= #x2b args_1_8) (not (or (= #x14 args_1_8) (not a!28))))))
(let ((a!30 (or (= #x2a args_1_8) (not (or (= #x15 args_1_8) (not a!29))))))
(let ((a!31 (or (= #x29 args_1_8) (not (or (= #x16 args_1_8) (not a!30))))))
(let ((a!32 (or (= #x28 args_1_8) (not (or (= #x17 args_1_8) (not a!31))))))
(let ((a!33 (or (= #x27 args_1_8) (not (or (= #x18 args_1_8) (not a!32))))))
(let ((a!34 (or (= #x26 args_1_8) (not (or (= #x19 args_1_8) (not a!33))))))
(let ((a!35 (or (= #x25 args_1_8) (not (or (= #x1a args_1_8) (not a!34))))))
(let ((a!36 (or (= #x24 args_1_8) (not (or (= #x1b args_1_8) (not a!35))))))
(let ((a!37 (or (= #x23 args_1_8) (not (or (= #x1c args_1_8) (not a!36))))))
(let ((a!38 (or (= #x22 args_1_8) (not (or (= #x1d args_1_8) (not a!37))))))
(let ((a!39 (or (= #x21 args_1_8) (not (or (= #x1e args_1_8) (not a!38))))))
  (and (not (= #x0000000000000000 (bvnot a!14)))
       (bvsge #x0000000000000006
              (bvadd #x0000000000000040 (bvmul #xffffffffffffffff a!15)))
       (not (= #x2d args_1_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       a!16
       (not (= #x20 args_1_8))
       (bvule #b000000010 (concat args_1_8 #b0))
       (or (= #x1f args_1_8) (not a!39)))))))))))))))))))))))))))
(define-fun goal () (_ BitVec 64) (bvadd (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000001)
       #x00000000c0000101)) 
(maximize goal)
(check-sat)