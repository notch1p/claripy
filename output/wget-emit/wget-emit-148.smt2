(declare-fun strlen_599_64 () (_ BitVec 64))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun strlen_575_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_546_64 () (_ BitVec 64))
(declare-fun strlen_496_64 () (_ BitVec 64))
(declare-fun strlen_448_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (let ((a!1 (= #b000000000000000000000000000
              ((_ extract 31 5)
                (bvadd #x0000000d
                       ((_ extract 31 0) strlen_448_64)
                       ((_ extract 31 0) strlen_496_64)
                       ((_ extract 31 0) strlen_546_64))))))
  (and (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
          (bvadd #x07fffffffffeffd6 strlen_546_64))
       (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_496_64))
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_448_64))
       a!1
       (bvule (bvadd #b01101
                     ((_ extract 4 0) strlen_448_64)
                     ((_ extract 4 0) strlen_496_64)
                     ((_ extract 4 0) strlen_546_64))
              #b10000)
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_575_64))
       (= #x00000001 ((_ extract 31 0) strlen_575_64))
       (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_599_64)))))
(maximize (let ((a!1 (concat (concat (concat ((_ extract 31 31) strlen_599_64)
                                   ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!2 (concat (concat (concat a!1 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!3 (concat (concat (concat a!2 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!4 (concat (concat (concat a!3 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!5 (concat (concat (concat a!4 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!6 (concat (concat (concat a!5 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!7 (concat (concat (concat a!6 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!8 (concat (concat (concat a!7 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!9 (concat (concat (concat a!8 ((_ extract 31 31) strlen_599_64))
                           ((_ extract 31 31) strlen_599_64))
                   ((_ extract 31 31) strlen_599_64))))
(let ((a!10 (concat (concat (concat a!9 ((_ extract 31 31) strlen_599_64))
                            ((_ extract 31 31) strlen_599_64))
                    ((_ extract 31 31) strlen_599_64))))
  (concat (concat a!10 ((_ extract 31 31) strlen_599_64))
          ((_ extract 31 0) strlen_599_64)))))))))))))
(check-sat)