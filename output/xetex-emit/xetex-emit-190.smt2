(declare-fun mem_7fffffffffee5c0_140_32 () (_ BitVec 32))
(assert (let ((a!1 (bvnot (bvor (bvnot (bvadd #xfefefeff mem_7fffffffffee5c0_140_32))
                        mem_7fffffffffee5c0_140_32
                        #x7f7f7f7f))))
  (and (not (= #x00000000 a!1)))))
(maximize (let ((a!1 (bvor (bvnot ((_ extract 15 0)
                          (bvadd #xfefefeff mem_7fffffffffee5c0_140_32)))
                 ((_ extract 15 0) mem_7fffffffffee5c0_140_32)
                 #x7f7f))
      (a!3 (bvor (bvnot (bvadd #xfeff
                               ((_ extract 15 0) mem_7fffffffffee5c0_140_32)))
                 ((_ extract 15 0) mem_7fffffffffee5c0_140_32)
                 #x7f7f))
      (a!4 (bvor (bvnot ((_ extract 31 16)
                          (bvadd #xfefefeff mem_7fffffffffee5c0_140_32)))
                 ((_ extract 31 16) mem_7fffffffffee5c0_140_32)
                 #x7f7f))
      (a!5 (bvnot (bvor (bvnot (bvadd #xfefefeff mem_7fffffffffee5c0_140_32))
                        mem_7fffffffffee5c0_140_32
                        #x7f7f7f7f))))
(let ((a!2 (ite (= #x0000 (bvand (bvnot a!1) #x8080))
                #x07fffffffffee5c6
                #x07fffffffffee5c4))
      (a!6 ((_ extract 7 0)
             (ite (= #x0000 (bvnot a!3)) (concat #x0000 (bvnot a!4)) a!5))))
(let ((a!7 ((_ zero_extend 63) (ite (bvult (bvadd a!6 a!6) a!6) #b1 #b0))))
  (bvsub (bvsub a!2 #x0000000000000003) a!7)))))
(check-sat)