(declare-fun mem_7fffffffffefeb8_112_64 () (_ BitVec 64))
(assert and)
(define-fun goal () (_ BitVec 64) (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_112_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_112_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
  (bvadd #x0000000000000fff
         (ite a!1 mem_7fffffffffefeb8_112_64 #x0000000000020000)))) 
(maximize goal)
(check-sat)