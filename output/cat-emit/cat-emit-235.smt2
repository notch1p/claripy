(declare-fun filesize_file_7_@_189_64 () (_ BitVec 64))
(declare-fun mem_7fffffffffefeb0_308_64 () (_ BitVec 64))
(declare-fun mem_7fffffffffefeb8_116_64 () (_ BitVec 64))
(assert (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_116_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_116_64))
                       #b1111111111111111111111111111111111111111111100000000000000000)))
      (a!3 (not (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_116_64)))))
      (a!4 (not (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_116_64))
                       #b1111111111111111111111111111111111111111111100000000000000000)))
      (a!5 (not (or (bvsge #x0000000000000000 filesize_file_7_@_189_64)
                    (= #b0000000000000000000000000000000000000000000000
                       ((_ extract 63 18) filesize_file_7_@_189_64)))))
      (a!6 (not (bvule (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
                            #b000000000000000000
                            ((_ extract 17 0) filesize_file_7_@_189_64))
                       #b100000000000000000))))
(let ((a!2 (bvule (bvadd #b00000000000000000000000000000000000000000000000000111111111111
                         (ite a!1
                              ((_ extract 61 0) mem_7fffffffffefeb8_116_64)
                              #b00000000000000000000000000000000000000000000100000000000000000))
                  #b10000000000000000000000000000000000000000000000000111111111111))
      (a!7 (or a!5
               a!6
               (not (or (= #x0000000000000000 filesize_file_7_@_189_64)
                        (bvsge #x0000000000000000 filesize_file_7_@_189_64))))))
  (and a!2
       (or (= #x0000000000020000 mem_7fffffffffefeb8_116_64) a!3 a!4)
       (bvule (ite (bvsle #x0000000000000000 filesize_file_7_@_189_64)
                   #x0000000000000000
                   #xffffffffffffffff)
              #xfffffffffffff000)
       (bvsle mem_7fffffffffefeb0_308_64
              (ite (bvsle #x0000000000000000 filesize_file_7_@_189_64)
                   #x0000000000000000
                   #xffffffffffffffff))
       a!7))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_116_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_116_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
  (ite (bvule (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
                   #x0000000000000000
                   filesize_file_7_@_189_64)
              (ite a!1 mem_7fffffffffefeb8_116_64 #x0000000000020000))
       (ite (bvsge #x0000000000000000 filesize_file_7_@_189_64)
            #x0000000000000000
            filesize_file_7_@_189_64)
       (ite a!1 mem_7fffffffffefeb8_116_64 #x0000000000020000)))) 
(maximize goal)
(check-sat)