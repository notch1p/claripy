(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(assert (let ((a!1 (= #b1
              ((_ extract 63 63)
                (bvadd mem_c0000f50_66_64
                       (bvmul #xffffffffffffffff mem_c0000f48_65_64))))))
  (and (not (= mem_c0000f50_66_64 mem_c0000f48_65_64))
       (not (bvule ((_ extract 5 0) mem_c0000f48_65_64) #b110000))
       (not a!1))))
(maximize (bvand mem_c0000f48_65_64 #xfffffffffffffff0))
(check-sat)