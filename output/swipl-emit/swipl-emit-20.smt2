(declare-fun filesize_file_2_/?i_345_64 () (_ BitVec 64))
(assert (let ((a!1 (ite (or (bvsge #x0000000000000000 filesize_file_2_/?i_345_64)
                    (= #x0000000000000
                       ((_ extract 63 12) filesize_file_2_/?i_345_64)))
                (ite (bvsge #x0000000000000000 filesize_file_2_/?i_345_64)
                     #x00000000
                     ((_ extract 31 0) filesize_file_2_/?i_345_64))
                #x00000fff)))
  (and (not (bvsge #x00000000 a!1)))))
(maximize (let ((a!1 (ite (or (bvsge #x0000000000000000 filesize_file_2_/?i_345_64)
                    (= #x0000000000000
                       ((_ extract 63 12) filesize_file_2_/?i_345_64)))
                (ite (bvsge #x0000000000000000 filesize_file_2_/?i_345_64)
                     #x0000000000000000
                     filesize_file_2_/?i_345_64)
                #x0000000000000fff)))
  (bvadd ((_ sign_extend 32) ((_ extract 31 0) a!1)) #x07fffffffffeee30)))
(check-sat)