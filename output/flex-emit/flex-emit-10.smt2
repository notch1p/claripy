(declare-fun filesize_file_0_???_134_64 () (_ BitVec 64))
(assert (let ((a!1 (not (or (bvsge #x0000000000000000 filesize_file_0_???_134_64)
                    (= #b00000000000000000000000000000000000000000000000000
                       ((_ extract 63 14) filesize_file_0_???_134_64)))))
      (a!2 (not (bvule (ite (bvsge #x0000000000000000
                                   filesize_file_0_???_134_64)
                            #b00000000000000
                            ((_ extract 13 0) filesize_file_0_???_134_64))
                       #b10000000000000)))
      (a!3 (not (or (= #x00000000 ((_ extract 31 0) filesize_file_0_???_134_64))
                    (bvsge #x0000000000000000 filesize_file_0_???_134_64))))
      (a!4 (and (or (bvsge #x0000000000000000 filesize_file_0_???_134_64)
                    (= #b00000000000000000000000000000000000000000000000000
                       ((_ extract 63 14) filesize_file_0_???_134_64)))
                (bvule (ite (bvsge #x0000000000000000
                                   filesize_file_0_???_134_64)
                            #b00000000000000
                            ((_ extract 13 0) filesize_file_0_???_134_64))
                       #b10000000000000))))
(let ((a!5 (bvsge #x00004000
                  (ite a!4
                       (ite (bvsge #x0000000000000000
                                   filesize_file_0_???_134_64)
                            #x00000000
                            ((_ extract 31 0) filesize_file_0_???_134_64))
                       #x00002000))))
  (and (or a!1 a!2 a!3) a!5))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (and (or (bvsge #x0000000000000000 filesize_file_0_???_134_64)
                    (= #b00000000000000000000000000000000000000000000000000
                       ((_ extract 63 14) filesize_file_0_???_134_64)))
                (bvule (ite (bvsge #x0000000000000000
                                   filesize_file_0_???_134_64)
                            #b00000000000000
                            ((_ extract 13 0) filesize_file_0_???_134_64))
                       #b10000000000000))))
(let ((a!2 ((_ sign_extend 32)
             (ite a!1
                  (ite (bvsge #x0000000000000000 filesize_file_0_???_134_64)
                       #x00000000
                       ((_ extract 31 0) filesize_file_0_???_134_64))
                  #x00002000))))
  (bvadd #x00000000c0025b90 a!2)))) 
(maximize goal)
(check-sat)