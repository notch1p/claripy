(declare-fun mem_7fffffffffee5b0_120_8 () (_ BitVec 8))
(declare-fun mem_7fffffffffee5b1_127_24 () (_ BitVec 24))
(assert (let ((a!1 (bvor (bvnot (bvadd #xfefefeff
                               (concat mem_7fffffffffee5b1_127_24 #x2f)))
                 (concat mem_7fffffffffee5b1_127_24 #x2f)
                 #x7f7f7f7f)))
  (and (not (= #x00000000 (bvnot a!1))) (= #x2f mem_7fffffffffee5b0_120_8))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvnot ((_ extract 15 0)
                    (bvadd #xfefefeff
                           (concat mem_7fffffffffee5b1_127_24
                                   mem_7fffffffffee5b0_120_8)))))
      (a!4 (bvnot (bvor (bvnot (bvadd #xff mem_7fffffffffee5b0_120_8))
                        mem_7fffffffffee5b0_120_8
                        #x7f)))
      (a!5 ((_ extract 15 8)
             (bvadd #xfeff
                    (concat ((_ extract 7 0) mem_7fffffffffee5b1_127_24)
                            mem_7fffffffffee5b0_120_8))))
      (a!7 (bvnot ((_ extract 31 16)
                    (bvadd #xfefefeff
                           (concat mem_7fffffffffee5b1_127_24
                                   mem_7fffffffffee5b0_120_8)))))
      (a!9 (bvor (bvnot (bvadd #xfefefeff
                               (concat mem_7fffffffffee5b1_127_24
                                       mem_7fffffffffee5b0_120_8)))
                 (concat mem_7fffffffffee5b1_127_24 mem_7fffffffffee5b0_120_8)
                 #x7f7f7f7f)))
(let ((a!2 (bvnot (bvor a!1
                        (concat ((_ extract 7 0) mem_7fffffffffee5b1_127_24)
                                mem_7fffffffffee5b0_120_8)
                        #x7f7f)))
      (a!6 (= #x00
              (bvnot (bvor (bvnot a!5)
                           ((_ extract 7 0) mem_7fffffffffee5b1_127_24)
                           #x7f))))
      (a!8 (concat #x0000
                   (bvnot (bvor a!7
                                ((_ extract 23 8) mem_7fffffffffee5b1_127_24)
                                #x7f7f)))))
(let ((a!3 (bvsub (ite (= #x0000 (bvand a!2 #x8080))
                       #x07fffffffffee5b6
                       #x07fffffffffee5b4)
                  #x0000000000000003))
      (a!10 ((_ extract 7 0) (ite (and (= #x00 a!4) a!6) a!8 (bvnot a!9)))))
(let ((a!11 ((_ zero_extend 63) (ite (bvult (bvadd a!10 a!10) a!10) #b1 #b0))))
  (bvsub a!3 a!11)))))) 
(maximize goal)
(check-sat)