(declare-fun mem_7fffffffffefeb8_110_64 () (_ BitVec 64))
(assert (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_110_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_110_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
(let ((a!2 (bvule (bvadd #b00000000000000000000000000000000000000000000000000111111111111
                         (ite a!1
                              ((_ extract 61 0) mem_7fffffffffefeb8_110_64)
                              #b00000000000000000000000000000000000000000000100000000000000000))
                  #b10000000000000000000000000000000000000000000000000111111111111))
      (a!3 (= #b00
              ((_ extract 63 62)
                (bvadd #x0000000000000fff
                       (ite a!1 mem_7fffffffffefeb8_110_64 #x0000000000020000))))))
  (and a!2 a!3))))
(minimize (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_110_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_110_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
  (ite a!1 mem_7fffffffffefeb8_110_64 #x0000000000020000)))
(check-sat)