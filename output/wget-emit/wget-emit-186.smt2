(declare-fun strlen_605_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun strlen_486_64 () (_ BitVec 64))
(declare-fun strlen_581_64 () (_ BitVec 64))
(declare-fun strlen_557_64 () (_ BitVec 64))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_438_64 () (_ BitVec 64))
(declare-fun strlen_406_64 () (_ BitVec 64))
(assert (let ((a!1 (concat (concat (concat ((_ extract 31 31) strlen_557_64)
                                   ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!11 (concat (concat (concat ((_ extract 31 31) strlen_581_64)
                                    ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!2 (concat (concat (concat a!1 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!12 (concat (concat (concat a!11 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!3 (concat (concat (concat a!2 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!13 (concat (concat (concat a!12 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!4 (concat (concat (concat a!3 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!14 (concat (concat (concat a!13 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!5 (concat (concat (concat a!4 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!15 (concat (concat (concat a!14 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!6 (concat (concat (concat a!5 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!16 (concat (concat (concat a!15 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!7 (concat (concat (concat a!6 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!17 (concat (concat (concat a!16 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!8 (concat (concat (concat a!7 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!18 (concat (concat (concat a!17 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!9 (concat (concat (concat a!8 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!19 (concat (concat (concat a!18 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!10 (concat (concat (concat a!9 ((_ extract 31 31) strlen_557_64))
                            ((_ extract 31 31) strlen_557_64))
                    ((_ extract 31 31) strlen_557_64)))
      (a!20 (concat (concat (concat a!19 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64))))
(let ((a!21 (bvmul #xffffffffffffffff
                   (concat (concat a!20 ((_ extract 31 31) strlen_581_64))
                           ((_ extract 31 0) strlen_581_64)))))
(let ((a!22 (= (concat (concat a!10 ((_ extract 31 31) strlen_557_64))
                       #x00000001)
               (bvadd #x0000000000000002 a!21))))
  (and (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_406_64))
       (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_438_64))
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_557_64))
       (= #x00000001 ((_ extract 31 0) strlen_557_64))
       (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_581_64))
       a!22
       (= #b0000000000000000000000000000000 ((_ extract 31 1) strlen_605_64))
       (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
          (bvadd #x07fffffffffeffd6 strlen_486_64))
       (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
          (bvadd #x07fffffffffeffd6 strlen_605_64))))))))))))))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (concat (concat (concat ((_ extract 31 31) strlen_557_64)
                                   ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!11 (concat (concat (concat ((_ extract 31 31) strlen_581_64)
                                    ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!21 (concat (concat (concat ((_ extract 31 31) strlen_605_64)
                                    ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!2 (concat (concat (concat a!1 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!12 (concat (concat (concat a!11 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!22 (concat (concat (concat a!21 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!3 (concat (concat (concat a!2 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!13 (concat (concat (concat a!12 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!23 (concat (concat (concat a!22 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!4 (concat (concat (concat a!3 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!14 (concat (concat (concat a!13 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!24 (concat (concat (concat a!23 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!5 (concat (concat (concat a!4 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!15 (concat (concat (concat a!14 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!25 (concat (concat (concat a!24 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!6 (concat (concat (concat a!5 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!16 (concat (concat (concat a!15 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!26 (concat (concat (concat a!25 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!7 (concat (concat (concat a!6 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!17 (concat (concat (concat a!16 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!27 (concat (concat (concat a!26 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!8 (concat (concat (concat a!7 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!18 (concat (concat (concat a!17 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!28 (concat (concat (concat a!27 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!9 (concat (concat (concat a!8 ((_ extract 31 31) strlen_557_64))
                           ((_ extract 31 31) strlen_557_64))
                   ((_ extract 31 31) strlen_557_64)))
      (a!19 (concat (concat (concat a!18 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!29 (concat (concat (concat a!28 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
(let ((a!10 (concat (concat (concat a!9 ((_ extract 31 31) strlen_557_64))
                            ((_ extract 31 31) strlen_557_64))
                    ((_ extract 31 31) strlen_557_64)))
      (a!20 (concat (concat (concat a!19 ((_ extract 31 31) strlen_581_64))
                            ((_ extract 31 31) strlen_581_64))
                    ((_ extract 31 31) strlen_581_64)))
      (a!30 (concat (concat (concat a!29 ((_ extract 31 31) strlen_605_64))
                            ((_ extract 31 31) strlen_605_64))
                    ((_ extract 31 31) strlen_605_64))))
  (bvadd #x00000000c0000fd7
         (concat (concat a!10 ((_ extract 31 31) strlen_557_64))
                 ((_ extract 31 0) strlen_557_64))
         (concat (concat a!20 ((_ extract 31 31) strlen_581_64))
                 ((_ extract 31 0) strlen_581_64))
         (concat (concat a!30 ((_ extract 31 31) strlen_605_64))
                 ((_ extract 31 0) strlen_605_64)))))))))))))) 
(maximize goal)
(check-sat)