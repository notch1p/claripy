(declare-fun strlen_175_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun args_0_8 () (_ BitVec 8))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (let ((a!1 (concat (concat #b111111111111111111111111111111111111111111111111111111111
                           (ite (= #x2f args_3_8) #b0 #b1))
                   #b1))
      (a!4 (concat (concat #b000000000000000011111111111111111111111100000000000000001
                           (ite (= #x00 args_3_8) #b1 #b0))
                   #b1))
      (a!9 (concat (concat (ite (= #x00 args_3_8) #b1 #b0) #b1)
                   (ite (= #x00 args_2_8) #b1 #b0)))
      (a!13 (concat (concat #b1 (ite (= #x00 args_2_8) #b1 #b0)) #b1))
      (a!17 (concat (concat (ite (= #x00 args_2_8) #b1 #b0) #b1)
                    (ite (= #x00 args_1_8) #b1 #b0)))
      (a!20 (concat (concat #b1 (ite (= #x00 args_1_8) #b1 #b0)) #b1))
      (a!22 (concat (concat (ite (= #x00 args_1_8) #b1 #b0) #b1)
                    (ite (= #x00 args_0_8) #b1 #b0)))
      (a!24 (bvadd #b11 (concat #b1 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!26 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                   (ite (= #x00 args_0_8) #b1 #b0))))
(let ((a!2 (concat (concat a!1 (ite (= #x2f args_2_8) #b0 #b1)) #b1))
      (a!5 (concat (concat a!4 (ite (= #x00 args_2_8) #b1 #b0)) #b1))
      (a!10 (concat (concat (concat a!9 #b1) (ite (= #x00 args_1_8) #b1 #b0))
                    #b1))
      (a!14 (concat (concat a!13 (ite (= #x00 args_1_8) #b1 #b0)) #b1))
      (a!18 (bvadd #b11111
                   (concat (concat a!17 #b1) (ite (= #x00 args_0_8) #b1 #b0))))
      (a!21 (bvadd #xf (concat a!20 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!23 (bvnot (bvxor ((_ extract 2 2) (bvadd #b111 a!22))
                          (ite (= #x00 args_1_8) #b1 #b0)))))
(let ((a!3 (concat (concat a!2 (ite (= #x2f args_1_8) #b0 #b1)) #b1))
      (a!6 (concat (concat a!5 (ite (= #x00 args_1_8) #b1 #b0)) #b1))
      (a!11 (bvadd #b1111111 (concat a!10 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!15 (bvadd #b111111 (concat a!14 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!19 (bvnot (bvxor ((_ extract 4 4) a!18)
                          (ite (= #x00 args_2_8) #b1 #b0)))))
(let ((a!7 (bvadd #xffffffffffffffff
                  (concat a!6 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!12 (bvnot (bvxor ((_ extract 6 6) a!11)
                          (ite (= #x00 args_3_8) #b1 #b0)))))
(let ((a!8 (concat (concat (bvnot ((_ extract 63 48) a!7))
                           ((_ extract 47 24) a!7))
                   (bvnot ((_ extract 23 8) a!7)))))
(let ((a!16 (concat (concat (concat a!8 ((_ extract 7 7) a!7)) a!12)
                    ((_ extract 5 5) a!15))))
(let ((a!25 (concat (concat (concat (concat a!16 a!19) ((_ extract 3 3) a!21))
                            a!23)
                    ((_ extract 1 1) a!24))))
(let ((a!27 (bvor (concat a!3 (ite (= #x2f args_0_8) #b0 #b1))
                  (concat a!25 (bvnot a!26)))))
  (and (= #x0000000000000000 (bvnot a!27))
       (not (= #x2d args_1_8))
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_175_64))))))))))))
(maximize (let ((a!1 (concat ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64)))
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!2 (concat a!1
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!3 (concat a!2
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!4 (concat a!3
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!5 (concat a!4
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!6 (concat a!5
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!7 (concat a!6
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!8 (concat a!7
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!9 (concat a!8
                   ((_ extract 31 31)
                     (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!10 (concat a!9
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!11 (concat a!10
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!12 (concat a!11
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!13 (concat a!12
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!14 (concat a!13
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!15 (concat a!14
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!16 (concat a!15
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!17 (concat a!16
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!18 (concat a!17
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!19 (concat a!18
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!20 (concat a!19
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!21 (concat a!20
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!22 (concat a!21
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!23 (concat a!22
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!24 (concat a!23
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!25 (concat a!24
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!26 (concat a!25
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!27 (concat a!26
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
(let ((a!28 (concat a!27
                    ((_ extract 31 31)
                      (bvadd #x00000004 ((_ extract 31 0) strlen_175_64))))))
  (concat (concat a!28 (bvadd #x00000004 ((_ extract 31 0) strlen_175_64)))
          #b000))))))))))))))))))))))))))))))
(check-sat)