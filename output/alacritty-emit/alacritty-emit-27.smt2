(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(declare-fun mem_c0000f68_70_64 () (_ BitVec 64))
(declare-fun mem_c0000f60_71_64 () (_ BitVec 64))
(assert (let ((a!1 (= #b1
              ((_ extract 63 63)
                (bvadd mem_c0000f50_66_64
                       (bvmul #xffffffffffffffff mem_c0000f48_65_64))))))
  (and (bvule mem_c0000f68_70_64 mem_c0000f50_66_64)
       (bvule mem_c0000f68_70_64 mem_c0000f60_71_64)
       (not (bvule mem_c0000f50_66_64 mem_c0000f68_70_64))
       (or (= mem_c0000f50_66_64 mem_c0000f48_65_64) a!1))))
(minimize mem_c0000f68_70_64)
(check-sat)