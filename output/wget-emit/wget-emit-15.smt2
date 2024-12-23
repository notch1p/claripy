(declare-fun strlen_436_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_484_64 () (_ BitVec 64))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun strlen_532_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (and (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_532_64))
     (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
        (bvadd #x07fffffffffeffd4 strlen_484_64))
     (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
        (bvadd #x07fffffffffeffd2 strlen_436_64))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (concat ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64)))
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!2 (concat a!1
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!3 (concat a!2
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!4 (concat a!3
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!5 (concat a!4
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!6 (concat a!5
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!7 (concat a!6
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!8 (concat a!7
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!9 (concat a!8
                   ((_ extract 31 31)
                     (bvadd #x0000000d
                            ((_ extract 31 0) strlen_436_64)
                            ((_ extract 31 0) strlen_484_64)
                            ((_ extract 31 0) strlen_532_64))))))
(let ((a!10 (concat a!9
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!11 (concat a!10
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!12 (concat a!11
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!13 (concat a!12
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!14 (concat a!13
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!15 (concat a!14
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!16 (concat a!15
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!17 (concat a!16
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!18 (concat a!17
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!19 (concat a!18
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!20 (concat a!19
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!21 (concat a!20
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!22 (concat a!21
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!23 (concat a!22
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!24 (concat a!23
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!25 (concat a!24
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!26 (concat a!25
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!27 (concat a!26
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!28 (concat a!27
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!29 (concat a!28
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!30 (concat a!29
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
(let ((a!31 (concat a!30
                    ((_ extract 31 31)
                      (bvadd #x0000000d
                             ((_ extract 31 0) strlen_436_64)
                             ((_ extract 31 0) strlen_484_64)
                             ((_ extract 31 0) strlen_532_64))))))
  (concat a!31
          (bvadd #x0000000d
                 ((_ extract 31 0) strlen_436_64)
                 ((_ extract 31 0) strlen_484_64)
                 ((_ extract 31 0) strlen_532_64))))))))))))))))))))))))))))))))))) 
(maximize goal)
(check-sat)