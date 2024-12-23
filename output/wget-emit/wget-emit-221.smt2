(declare-fun strlen_625_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun strlen_546_64 () (_ BitVec 64))
(assert (and (= #b0000000000000000000000000000000 ((_ extract 31 1) strlen_625_64))
     (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_546_64))
     (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
        (bvadd #x07fffffffffeffd6 strlen_625_64))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (concat (concat (concat ((_ extract 31 31) strlen_625_64)
                                   ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!2 (concat (concat (concat a!1 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!3 (concat (concat (concat a!2 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!4 (concat (concat (concat a!3 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!5 (concat (concat (concat a!4 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!6 (concat (concat (concat a!5 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!7 (concat (concat (concat a!6 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!8 (concat (concat (concat a!7 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!9 (concat (concat (concat a!8 ((_ extract 31 31) strlen_625_64))
                           ((_ extract 31 31) strlen_625_64))
                   ((_ extract 31 31) strlen_625_64))))
(let ((a!10 (concat (concat (concat a!9 ((_ extract 31 31) strlen_625_64))
                            ((_ extract 31 31) strlen_625_64))
                    ((_ extract 31 31) strlen_625_64))))
  (concat (concat a!10 ((_ extract 31 31) strlen_625_64))
          ((_ extract 31 0) strlen_625_64))))))))))))) 
(minimize goal)
(check-sat)