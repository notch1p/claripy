(declare-fun mem_ffffffc000000010_96_32 () (_ BitVec 32))
(declare-fun mem_c0000f58_91_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f88_84_64 () (_ BitVec 64))
(declare-fun mem_c0000f98_86_64 () (_ BitVec 64))
(assert (let ((a!1 (concat (concat (concat ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32)
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32)))
      (a!14 (= #b1
               ((_ extract 63 63)
                 (bvadd mem_c0000f50_66_64
                        (bvmul #xffffffffffffffff mem_c0000f48_65_64)))))
      (a!15 (= #b0
               ((_ extract 63 63)
                 (bvadd mem_c0000f50_66_64
                        (bvmul #xffffffffffffffff mem_c0000f58_91_64))))))
(let ((a!2 (concat (concat (concat a!1
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!3 (concat (concat (concat a!2
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!4 (concat (concat (concat a!3
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!5 (concat (concat (concat a!4
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!6 (concat (concat (concat a!5
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!7 (concat (concat (concat a!6
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!8 (concat (concat (concat a!7
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!9 (concat (concat (concat a!8
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!10 (concat (concat (concat a!9
                                    ((_ extract 31 31)
                                      mem_ffffffc000000010_96_32))
                            ((_ extract 31 31) mem_ffffffc000000010_96_32))
                    ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!11 (bvsle (bvadd mem_c0000f50_66_64
                          (bvmul #xffffffffffffffff mem_c0000f58_91_64))
                   (concat (concat a!10
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           mem_ffffffc000000010_96_32))))
(let ((a!12 (ite a!11
                 (bvadd mem_c0000f50_66_64
                        (bvmul #xffffffffffffffff mem_c0000f58_91_64))
                 (concat (concat a!10
                                 ((_ extract 31 31) mem_ffffffc000000010_96_32))
                         mem_ffffffc000000010_96_32)))
      (a!16 (not (ite a!11
                      a!15
                      (= #b0 ((_ extract 31 31) mem_ffffffc000000010_96_32))))))
(let ((a!13 (bvule (bvadd (bvadd mem_c0000f50_66_64
                                 (bvmul #xffffffffffffffff mem_c0000f58_91_64))
                          (bvmul #xffffffffffffffff a!12))
                   (bvadd mem_c0000f98_86_64
                          (bvmul #xffffffffffffffff mem_c0000f88_84_64)))))
  (and (bvule mem_c0000f50_66_64 mem_c0000f48_65_64)
       a!13
       (bvule (bvmul #xffffffffffffffff a!12) #x8000000000000000)
       (or (= mem_c0000f50_66_64 mem_c0000f48_65_64) a!14)
       a!16)))))))))))))))
(minimize (let ((a!1 (concat (concat (concat ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32)
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!2 (concat (concat (concat a!1
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!3 (concat (concat (concat a!2
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!4 (concat (concat (concat a!3
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!5 (concat (concat (concat a!4
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!6 (concat (concat (concat a!5
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!7 (concat (concat (concat a!6
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!8 (concat (concat (concat a!7
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!9 (concat (concat (concat a!8
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           ((_ extract 31 31) mem_ffffffc000000010_96_32))
                   ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!10 (concat (concat (concat a!9
                                    ((_ extract 31 31)
                                      mem_ffffffc000000010_96_32))
                            ((_ extract 31 31) mem_ffffffc000000010_96_32))
                    ((_ extract 31 31) mem_ffffffc000000010_96_32))))
(let ((a!11 (bvsle (bvadd mem_c0000f50_66_64
                          (bvmul #xffffffffffffffff mem_c0000f58_91_64))
                   (concat (concat a!10
                                   ((_ extract 31 31)
                                     mem_ffffffc000000010_96_32))
                           mem_ffffffc000000010_96_32))))
(let ((a!12 (ite a!11
                 (bvadd mem_c0000f50_66_64
                        (bvmul #xffffffffffffffff mem_c0000f58_91_64))
                 (concat (concat a!10
                                 ((_ extract 31 31) mem_ffffffc000000010_96_32))
                         mem_ffffffc000000010_96_32))))
  (bvmul #xffffffffffffffff a!12))))))))))))))
(check-sat)