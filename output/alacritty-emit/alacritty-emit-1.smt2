(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(assert (let ((a!1 (= #b1
              ((_ extract 63 63)
                (bvadd mem_c0000f50_66_64
                       (bvmul #xffffffffffffffff mem_c0000f48_65_64))))))
  (and (or (= mem_c0000f50_66_64 mem_c0000f48_65_64) a!1)
       (not (bvule mem_c0000f50_66_64 mem_c0000f48_65_64)))))
(minimize mem_c0000f48_65_64)
(check-sat)