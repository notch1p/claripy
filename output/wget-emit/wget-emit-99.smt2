(declare-fun strlen_582_64 () (_ BitVec 64))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun strlen_558_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_490_64 () (_ BitVec 64))
(declare-fun strlen_442_64 () (_ BitVec 64))
(declare-fun strlen_408_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (let ((a!1 (= #b000000000000000000000000000
              ((_ extract 31 5)
                (bvadd #x0000000d
                       ((_ extract 31 0) strlen_408_64)
                       ((_ extract 31 0) strlen_442_64)
                       ((_ extract 31 0) strlen_490_64))))))
  (and (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_408_64))
       (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
          (bvadd #x07fffffffffeffd6 strlen_490_64))
       (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_442_64))
       a!1
       (bvule (bvadd #b01101
                     ((_ extract 4 0) strlen_408_64)
                     ((_ extract 4 0) strlen_442_64)
                     ((_ extract 4 0) strlen_490_64))
              #b10000)
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_558_64))
       (= #x00000001 ((_ extract 31 0) strlen_558_64))
       (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_582_64))
       (= #b0000000000000000000000000000000 ((_ extract 31 1) strlen_582_64)))))
(minimize (let ((a!1 (concat (concat (concat ((_ extract 31 31) strlen_582_64)
                                   ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!2 (concat (concat (concat a!1 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!3 (concat (concat (concat a!2 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!4 (concat (concat (concat a!3 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!5 (concat (concat (concat a!4 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!6 (concat (concat (concat a!5 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!7 (concat (concat (concat a!6 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!8 (concat (concat (concat a!7 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!9 (concat (concat (concat a!8 ((_ extract 31 31) strlen_582_64))
                           ((_ extract 31 31) strlen_582_64))
                   ((_ extract 31 31) strlen_582_64))))
(let ((a!10 (concat (concat (concat a!9 ((_ extract 31 31) strlen_582_64))
                            ((_ extract 31 31) strlen_582_64))
                    ((_ extract 31 31) strlen_582_64))))
  (concat (concat a!10 ((_ extract 31 31) strlen_582_64))
          ((_ extract 31 0) strlen_582_64)))))))))))))
(check-sat)