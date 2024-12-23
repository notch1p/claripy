(declare-fun strlen_222_64 () (_ BitVec 64))
(declare-fun mem_7fffffffffee5b1_127_24 () (_ BitVec 24))
(declare-fun mem_7fffffffffee5b0_120_8 () (_ BitVec 8))
(assert (let ((a!1 (bvor (bvnot (bvadd #xfefefeff
                               (concat mem_7fffffffffee5b1_127_24
                                       mem_7fffffffffee5b0_120_8)))
                 (concat mem_7fffffffffee5b1_127_24 mem_7fffffffffee5b0_120_8)
                 #x7f7f7f7f))
      (a!2 (or (not (= #x2e mem_7fffffffffee5b0_120_8))
               (not (= #x2e ((_ extract 7 0) mem_7fffffffffee5b1_127_24))))))
  (and (not (= #x00000000 (bvnot a!1)))
       (not (= #x2f mem_7fffffffffee5b0_120_8))
       a!2
       (= #x0000000000000000 strlen_222_64))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvnot (bvor (bvnot (bvadd #xff mem_7fffffffffee5b0_120_8))
                        mem_7fffffffffee5b0_120_8
                        #x7f)))
      (a!2 ((_ extract 15 8)
             (bvadd #xfeff
                    (concat ((_ extract 7 0) mem_7fffffffffee5b1_127_24)
                            mem_7fffffffffee5b0_120_8))))
      (a!4 (bvnot ((_ extract 23 16)
                    (bvadd #xfefefeff
                           (concat mem_7fffffffffee5b1_127_24
                                   mem_7fffffffffee5b0_120_8))))))
(let ((a!3 (= #x00
              (bvnot (bvor (bvnot a!2)
                           ((_ extract 7 0) mem_7fffffffffee5b1_127_24)
                           #x7f)))))
(let ((a!5 (ite (and (= #x00 a!1) a!3)
                (bvnot (bvor a!4
                             ((_ extract 15 8) mem_7fffffffffee5b1_127_24)
                             #x7f))
                a!1)))
(let ((a!6 (concat #b000000000000000000000000000000000000000000000000000000000000000
                   (ite (bvule a!5 (bvmul #x02 a!5)) #b0 #b1))))
  (bvadd #xfffffffffffffffd
         (ite (and (= #x00 a!1) a!3) #x07fffffffffee5b6 #x07fffffffffee5b4)
         (bvmul #xffffffffffffffff a!6))))))) 
(maximize goal)
(check-sat)