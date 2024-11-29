(declare-fun mem_7fffffffffefeb8_109_64 () (_ BitVec 64))
(declare-fun filesize_file_4_?_180_64 () (_ BitVec 64))
(declare-fun mem_7fffffffffefeb0_266_64 () (_ BitVec 64))
(assert (let ((a!1 (not (or (bvsge #x0000000000000000 filesize_file_4_?_180_64)
                    (= #b0000000000000000000000000000000000000000000000
                       ((_ extract 63 18) filesize_file_4_?_180_64)))))
      (a!2 (not (bvule (ite (bvsge #x0000000000000000 filesize_file_4_?_180_64)
                            #b000000000000000000
                            ((_ extract 17 0) filesize_file_4_?_180_64))
                       #b100000000000000000)))
      (a!4 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_109_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_109_64))
                       #b1111111111111111111111111111111111111111111100000000000000000)))
      (a!6 (not (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_109_64)))))
      (a!7 (not (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_109_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
(let ((a!3 (or a!1
               a!2
               (not (or (= #x0000000000000000 filesize_file_4_?_180_64)
                        (bvsge #x0000000000000000 filesize_file_4_?_180_64)))))
      (a!5 (bvule (bvadd #b00000000000000000000000000000000000000000000000000111111111111
                         (ite a!4
                              ((_ extract 61 0) mem_7fffffffffefeb8_109_64)
                              #b00000000000000000000000000000000000000000000100000000000000000))
                  #b10000000000000000000000000000000000000000000000000111111111111)))
  (and (bvule (ite (bvsle #x0000000000000000 filesize_file_4_?_180_64)
                   #x0000000000000000
                   #xffffffffffffffff)
              #xfffffffffffff000)
       (bvsle mem_7fffffffffefeb0_266_64
              (ite (bvsle #x0000000000000000 filesize_file_4_?_180_64)
                   #x0000000000000000
                   #xffffffffffffffff))
       a!3
       a!5
       (or (= #x0000000000020000 mem_7fffffffffefeb8_109_64) a!6 a!7)))))
(maximize (let ((a!1 (and (= #b000
                   ((_ extract 63 61)
                     (bvadd #xfffffffffffe0000 mem_7fffffffffefeb8_109_64)))
                (bvule (bvadd #b1111111111111111111111111111111111111111111100000000000000000
                              ((_ extract 60 0) mem_7fffffffffefeb8_109_64))
                       #b1111111111111111111111111111111111111111111100000000000000000))))
  (ite (bvule (ite (bvsge #x0000000000000000 filesize_file_4_?_180_64)
                   #x0000000000000000
                   filesize_file_4_?_180_64)
              (ite a!1 mem_7fffffffffefeb8_109_64 #x0000000000020000))
       (ite (bvsge #x0000000000000000 filesize_file_4_?_180_64)
            #x0000000000000000
            filesize_file_4_?_180_64)
       (ite a!1 mem_7fffffffffefeb8_109_64 #x0000000000020000))))
(check-sat)