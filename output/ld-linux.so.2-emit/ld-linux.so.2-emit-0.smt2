(declare-fun filesize_file_2_/_20_32 () (_ BitVec 32))
(assert (let ((a!1 (not (bvsge #x00000000
                       (ite (bvsge #x00000000 filesize_file_2_/_20_32)
                            #x00000000
                            filesize_file_2_/_20_32)))))
  (and (bvule (ite (bvsge #x00000000 filesize_file_2_/_20_32)
                   #b0000000000
                   ((_ extract 9 0) filesize_file_2_/_20_32))
              #b1000000000)
       a!1
       (bvule (ite (bvsge #x00000000 filesize_file_2_/_20_32)
                   #b000000
                   ((_ extract 5 0) filesize_file_2_/_20_32))
              #b110011)
       (or (bvsge #x00000000 filesize_file_2_/_20_32)
           (= #b00000000000000000000000000
              ((_ extract 31 6) filesize_file_2_/_20_32))))))
(minimize (let ((a!1 (and (or (bvsge #x00000000 filesize_file_2_/_20_32)
                    (= #b0000000000000000000000
                       ((_ extract 31 10) filesize_file_2_/_20_32)))
                (bvule (ite (bvsge #x00000000 filesize_file_2_/_20_32)
                            #b0000000000
                            ((_ extract 9 0) filesize_file_2_/_20_32))
                       #b1000000000))))
(let ((a!2 (bvmul #xffffffff
                  (ite a!1
                       (ite (bvsge #x00000000 filesize_file_2_/_20_32)
                            #x00000000
                            filesize_file_2_/_20_32)
                       #x00000200))))
  (bvadd #x00000200 a!2))))
(check-sat)