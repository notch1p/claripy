(declare-fun mem_7fffffffffefeb8_116_64 () (_ BitVec 64))
(declare-fun filesize_file_7_@_189_64 () (_ BitVec 64))
(assert (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_116_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_116_64))
                       #b1111111111111111111111111111111111111111111100000000000000000)))
      (a!4 (not (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_116_64))
                       #b1111111111111111111111111111111111111111111100000000000000000)))
      (a!5 (not (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_116_64))))))
(let ((a!2 (bvule (bvadd #b00000000000000000000000000000000000000000000000000111111111111
                         (ite a!1
                              ((_ extract 61 0) mem_7fffffffffefeb8_116_64)
                              #b00000000000000000000000000000000000000000000100000000000000000))
                  #b10000000000000000000000000000000000000000000000000111111111111))
      (a!3 (ite (bvule (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
                            #x0000000000000000
                            filesize_file_7_@_189_64)
                       (ite a!1 mem_7fffffffffefeb8_116_64 #x0000000000020000))
                (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
                     #x0000000000000000
                     filesize_file_7_@_189_64)
                (ite a!1 mem_7fffffffffefeb8_116_64 #x0000000000020000))))
  (and a!2
       (= #b0 ((_ extract 63 63) a!3))
       (bvule #x0000000000000001 a!3)
       (or (= #x0000000000020000 mem_7fffffffffefeb8_116_64) a!4 a!5)))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_116_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_116_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
  (ite (bvuge (ite a!1 mem_7fffffffffefeb8_116_64 #x0000000000020000)
              (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
                   #x0000000000000000
                   filesize_file_7_@_189_64))
       (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
            #x0000000000000000
            filesize_file_7_@_189_64)
       (ite a!1 mem_7fffffffffefeb8_116_64 #x0000000000020000)))) 
(maximize goal)
(check-sat)