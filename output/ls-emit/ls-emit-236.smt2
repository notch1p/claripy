(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(assert (let ((a!1 (bvadd #b111 (concat #b01 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!3 (concat (concat #b1111111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_1_8) #b0 #b1))
                   #b1))
      (a!4 (bvadd #xffffffffffffffff
                  (concat #b000000000000000011111111111111111111111100000000000000001010101
                          (ite (= #x00 args_0_8) #b1 #b0))))
      (a!6 (bvadd #b1111111 (concat #b010101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!7 (bvadd #b111111 (concat #b10101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!9 (bvadd #b11111 (concat #x5 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!10 (bvadd #xf (concat #b101 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!14 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0)))
      (a!16 (bvule (bvadd #b10000011100011001011100
                          (concat (concat #b0000000000000 args_1_8) #b00))
                   #b10000011100011101011000))
      (a!17 (not (or (not (= #x3e args_1_8)) (= #x03 args_1_8)))))
(let ((a!2 (ite (or (not (= #x2f args_1_8)) (= #b0 ((_ extract 2 2) a!1)))
                (ite (= #x2f args_0_8) #x000000000000003f #x0000000000000040)
                #x000000000000003d))
      (a!5 (concat (concat (bvnot ((_ extract 63 48) a!4))
                           ((_ extract 47 24) a!4))
                   (bvnot ((_ extract 23 8) a!4))))
      (a!18 (or (= #x04 args_1_8) (not (or (= #x3d args_1_8) a!17)))))
(let ((a!8 (concat (concat (concat a!5 ((_ extract 7 7) a!4))
                           (bvnot ((_ extract 6 6) a!6)))
                   ((_ extract 5 5) a!7)))
      (a!19 (or (= #x05 args_1_8) (not (or (= #x3c args_1_8) (not a!18))))))
(let ((a!11 (concat (concat a!8 (bvnot ((_ extract 4 4) a!9)))
                    ((_ extract 3 3) a!10)))
      (a!20 (or (not (or (= #x3b args_1_8) (not a!19)))
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
(let ((a!13 (concat (concat a!11 (bvnot ((_ extract 2 2) a!1)))
                    ((_ extract 1 1) a!12)))
      (a!21 (or (= #x16 args_1_8) (not (or (= #x2a args_1_8) (not a!20))))))
(let ((a!15 (bvor (concat a!3 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!13 (bvnot a!14))))
      (a!22 (or (= #x17 args_1_8) (not (or (= #x29 args_1_8) (not a!21))))))
(let ((a!23 (or (not (or (= #x28 args_1_8) (not a!22)))
                (= #x19 args_1_8)
                (= #x18 args_1_8)
                (= #x27 args_1_8))))
(let ((a!24 (or (not (or (= #x26 args_1_8) (not a!23)))
                (= #x1b args_1_8)
                (= #x1a args_1_8)
                (= #x25 args_1_8))))
(let ((a!25 (or (not (or (= #x24 args_1_8) (not a!24)))
                (= #x1d args_1_8)
                (= #x1c args_1_8)
                (= #x23 args_1_8))))
(let ((a!26 (or (= #x1e args_1_8) (not (or (= #x22 args_1_8) (not a!25))))))
  (and (bvsge #x0000000000000006
              (bvadd #x0000000000000040 (bvmul #xffffffffffffffff a!2)))
       (not (= #x0000000000000000 (bvnot a!15)))
       (not (= #x2d args_1_8))
       (= #b00 ((_ extract 7 6) args_1_8))
       (bvule #b0000000100 (concat args_1_8 #b00))
       a!16
       (not (= #x1f args_1_8))
       (not (= #x20 args_1_8))
       (or (= #x21 args_1_8) (not a!26))))))))))))))
(define-fun goal () (_ BitVec 64) (bvadd #x000000000041c65c
       (bvshl ((_ zero_extend 32) ((_ zero_extend 24) args_1_8))
              #x0000000000000002))) 
(minimize goal)
(check-sat)