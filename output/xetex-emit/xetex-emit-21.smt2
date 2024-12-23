(declare-fun strlen_147_64 () (_ BitVec 64))
(declare-fun mem_7fffffffffee5b8_135_32 () (_ BitVec 32))
(assert (let ((a!1 (bvnot (bvor (bvnot (bvadd #xfefefeff mem_7fffffffffee5b8_135_32))
                        mem_7fffffffffee5b8_135_32
                        #x7f7f7f7f))))
  (and (not (= #x00000000 a!1)) (= #x0000000000000000 strlen_147_64))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvor (bvnot (bvadd #xfeff
                               ((_ extract 15 0) mem_7fffffffffee5b8_135_32)))
                 ((_ extract 15 0) mem_7fffffffffee5b8_135_32)
                 #x7f7f))
      (a!2 (bvor (bvnot ((_ extract 23 16)
                          (bvadd #xfefefeff mem_7fffffffffee5b8_135_32)))
                 ((_ extract 23 16) mem_7fffffffffee5b8_135_32)
                 #x7f))
      (a!3 (bvor (bvnot (bvadd #xff
                               ((_ extract 7 0) mem_7fffffffffee5b8_135_32)))
                 ((_ extract 7 0) mem_7fffffffffee5b8_135_32)
                 #x7f)))
(let ((a!4 (bvmul #x02 (ite (= #x0000 (bvnot a!1)) (bvnot a!2) (bvnot a!3)))))
(let ((a!5 (bvule (ite (= #x0000 (bvnot a!1)) (bvnot a!2) (bvnot a!3)) a!4)))
  (bvadd #xfffffffffffffffd
         (ite (= #x0000 (bvnot a!1)) #x07fffffffffee5be #x07fffffffffee5bc)
         (bvmul #xffffffffffffffff
                (concat #b000000000000000000000000000000000000000000000000000000000000000
                        (ite a!5 #b0 #b1)))))))) 
(maximize goal)
(check-sat)