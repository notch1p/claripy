(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun strlen_571_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
(let ((a!2 (ite (or (= #x01 a!1) (not (= #x00 a!1))) #x00 args_2_8))
      (a!3 (ite (or (= #x01 a!1) (not (= #x00 a!1))) #x00 args_3_8))
      (a!4 (= #x00 (ite (= #x01 a!1) #xc0 (ite (= #x00 a!1) #xae #x00))))
      (a!5 (= #x00 (ite (= #x01 a!1) #xae (ite (= #x00 a!1) #xc0 #x00))))
      (a!6 (ite (or (= #x01 a!1) (not (= #x00 a!1))) #x00 #xc0)))
(let ((a!7 (ite a!4
                (bvadd #x07fffffffffeffe6 (concat #x00000000000000 a!1))
                (ite (= #x00 a!6)
                     (bvadd #x07fffffffffeffe7 (concat #x00000000000000 a!1))
                     (bvadd #x07fffffffffeffe8 (concat #x00000000000000 a!1))))))
(let ((a!8 (ite a!4
                (bvadd #x07fffffffffeffe4 (concat #x00000000000000 a!1))
                (ite a!5
                     (bvadd #x07fffffffffeffe5 (concat #x00000000000000 a!1))
                     a!7))))
(let ((a!9 (ite a!4
                (bvadd #x07fffffffffeffe2 (concat #x00000000000000 a!1))
                (ite a!5
                     (bvadd #x07fffffffffeffe3 (concat #x00000000000000 a!1))
                     a!8))))
(let ((a!10 (ite a!4
                 (bvadd #x07fffffffffeffe0 (concat #x00000000000000 a!1))
                 (ite a!5
                      (bvadd #x07fffffffffeffe1 (concat #x00000000000000 a!1))
                      a!9))))
(let ((a!11 (ite a!4
                 (bvadd #x07fffffffffeffde (concat #x00000000000000 a!1))
                 (ite a!5
                      (bvadd #x07fffffffffeffdf (concat #x00000000000000 a!1))
                      a!10))))
(let ((a!12 (ite a!4
                 (bvadd #x07fffffffffeffdc (concat #x00000000000000 a!1))
                 (ite a!5
                      (bvadd #x07fffffffffeffdd (concat #x00000000000000 a!1))
                      a!11))))
(let ((a!13 (ite a!4
                 (bvadd #x07fffffffffeffda (concat #x00000000000000 a!1))
                 (ite a!5
                      (bvadd #x07fffffffffeffdb (concat #x00000000000000 a!1))
                      a!12))))
(let ((a!14 (ite a!4
                 (bvadd #x07fffffffffeffd8 (concat #x00000000000000 a!1))
                 (ite a!5
                      (bvadd #x07fffffffffeffd9 (concat #x00000000000000 a!1))
                      a!13))))
(let ((a!15 (ite (= #x00 (ite (= #x01 a!1) #xae #x00))
                 (bvadd #x07fffffffffeffd7 (concat #x00000000000000 a!1))
                 a!14)))
(let ((a!16 (ite (= #x00 (ite (= #x01 a!1) args_3_8 #x00))
                 (bvadd #x07fffffffffeffd5 (concat #x00000000000000 a!1))
                 (ite (= #x00 a!3)
                      (bvadd #x07fffffffffeffd6 (concat #x00000000000000 a!1))
                      a!15))))
(let ((a!17 (bvadd (ite (= #x00 a!2)
                        (bvadd #x07fffffffffeffd4 (concat #x00000000000000 a!1))
                        a!16)
                   (bvmul #xffffffffffffffff (concat #x00000000000000 a!1)))))
  (and (not (= #x40 args_2_8))
       (not (= #x2d args_2_8))
       (not (= #x2d args_3_8))
       (not (= #x40 args_3_8))
       (= a!17 (bvadd #x07fffffffffeffd4 strlen_571_64))
       (or (not (= #x5f args_2_8)) (= #x01 a!1) (not (= #x00 a!1))))))))))))))))))
(maximize (let ((a!1 (bvor (concat #b0000000 (ite (= #x2e args_2_8) #b1 #b0))
                 (concat #b0000000 (ite (= #x24 args_2_8) #b1 #b0)))))
  (bvadd #x07fffffffffeffd4 (concat #x00000000000000 a!1))))
(check-sat)