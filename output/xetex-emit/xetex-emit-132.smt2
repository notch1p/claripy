(declare-fun mem_7fffffffffee5d8_351_712 () (_ BitVec 712))
(declare-fun strlen_486_64 () (_ BitVec 64))
(assert (let ((a!1 (concat (concat (concat ((_ extract 655 648)
                                     mem_7fffffffffee5d8_351_712)
                                   ((_ extract 663 656)
                                     mem_7fffffffffee5d8_351_712))
                           ((_ extract 671 664) mem_7fffffffffee5d8_351_712))
                   ((_ extract 679 672) mem_7fffffffffee5d8_351_712)))
      (a!3 (concat (concat (concat ((_ extract 687 680)
                                     mem_7fffffffffee5d8_351_712)
                                   ((_ extract 695 688)
                                     mem_7fffffffffee5d8_351_712))
                           ((_ extract 703 696) mem_7fffffffffee5d8_351_712))
                   ((_ extract 711 704) mem_7fffffffffee5d8_351_712))))
(let ((a!2 (bvnot (bvor (bvnot (bvadd #xfefefeff a!1)) a!1 #x7f7f7f7f)))
      (a!4 (bvnot (bvor (bvnot (bvadd #xfefefeff a!3)) a!3 #x7f7f7f7f))))
  (and (= #x0000000000000000 strlen_486_64)
       (not (= #x00000000 a!2))
       (= #x00000000 a!4)))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvor (bvnot (bvadd #xff
                               ((_ extract 679 672) mem_7fffffffffee5d8_351_712)))
                 ((_ extract 679 672) mem_7fffffffffee5d8_351_712)
                 #x7f))
      (a!2 ((_ extract 15 8)
             (bvadd #xfeff
                    (concat ((_ extract 671 664) mem_7fffffffffee5d8_351_712)
                            ((_ extract 679 672) mem_7fffffffffee5d8_351_712)))))
      (a!5 (concat (concat (concat ((_ extract 655 648)
                                     mem_7fffffffffee5d8_351_712)
                                   ((_ extract 663 656)
                                     mem_7fffffffffee5d8_351_712))
                           ((_ extract 671 664) mem_7fffffffffee5d8_351_712))
                   ((_ extract 679 672) mem_7fffffffffee5d8_351_712))))
(let ((a!3 (= #x00
              (bvnot (bvor (bvnot a!2)
                           ((_ extract 671 664) mem_7fffffffffee5d8_351_712)
                           #x7f))))
      (a!6 (bvor (bvnot ((_ extract 23 16) (bvadd #xfefefeff a!5)))
                 ((_ extract 663 656) mem_7fffffffffee5d8_351_712)
                 #x7f)))
(let ((a!4 (ite (and (= #x00 (bvnot a!1)) a!3)
                #x07fffffffffee5e2
                #x07fffffffffee5e0))
      (a!7 (ite (and (= #x00 (bvnot a!1)) a!3) (bvnot a!6) (bvnot a!1))))
(let ((a!8 (concat #b000000000000000000000000000000000000000000000000000000000000000
                   (ite (bvule a!7 (bvmul #x02 a!7)) #b0 #b1))))
  (bvadd #xfffffffffffffffd a!4 (bvmul #xffffffffffffffff a!8))))))) 
(maximize goal)
(check-sat)