(declare-fun mem_ffffffc000000010_96_32 () (_ BitVec 32))
(declare-fun mem_c0000f58_91_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(declare-fun mem_c0000f98_86_64 () (_ BitVec 64))
(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f88_84_64 () (_ BitVec 64))
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
                          (bvmul #xffffffffffffffff mem_c0000f88_84_64))))
      (a!17 (= mem_c0000f98_86_64
               (bvadd #xffffffffffffffff
                      mem_c0000f50_66_64
                      (bvmul #xffffffffffffffff mem_c0000f58_91_64)
                      (bvmul #xffffffffffffffff a!12)))))
  (and a!13
       (bvule mem_c0000f50_66_64 mem_c0000f48_65_64)
       (bvule (bvmul #xffffffffffffffff a!12) #x8000000000000000)
       (bvule #x0000000000000001 (bvmul #xffffffffffffffff a!12))
       (= mem_c0000f98_86_64
          (bvadd #x0000000400000000 (bvmul #xffffffffffffffff a!12)))
       (or (= mem_c0000f50_66_64 mem_c0000f48_65_64) a!14)
       a!16
       (or (not (= #xfffffffffffffffd a!12)) a!17)
       (or a!17 (not (= #xfffffffffffff7f2 a!12)))
       (or a!17 (not (= #xfffffffffffff7e2 a!12)))
       (or a!17 (not (= #xfffffffffffff7d2 a!12)))
       (or a!17 (not (= #xfffffffffffff7c2 a!12)))
       (or a!17 (not (= #xfffffffffffff7b2 a!12)))
       (or a!17 (not (= #xfffffffffffff7a2 a!12)))
       (or a!17 (not (= #xfffffffffffff792 a!12)))
       (or a!17 (not (= #xfffffffffffff782 a!12)))
       (or a!17 (not (= #xfffffffffffff772 a!12)))
       (or a!17 (not (= #xfffffffffffff762 a!12)))
       (or a!17 (not (= #xfffffffffffff752 a!12)))
       (or a!17 (not (= #xfffffffffffff742 a!12)))
       (or a!17 (not (= #xfffffffffffff732 a!12)))
       (or a!17 (not (= #xfffffffffffff722 a!12)))
       (or a!17 (not (= #xfffffffffffff712 a!12)))
       (or a!17 (not (= #xfffffffffffff702 a!12)))
       (or a!17 (not (= #xfffffffffffff6f2 a!12)))
       (or a!17 (not (= #xfffffffffffff6e2 a!12)))
       (or a!17 (not (= #xfffffffffffff6d2 a!12)))
       (or a!17 (not (= #xfffffffffffff6c2 a!12)))
       (or a!17 (not (= #xfffffffffffff6b2 a!12)))
       (or a!17 (not (= #xfffffffffffff6a2 a!12)))
       (or a!17 (not (= #xfffffffffffff692 a!12)))
       (or a!17 (not (= #xfffffffffffff682 a!12)))
       (or a!17 (not (= #xfffffffffffff672 a!12)))
       (or a!17 (not (= #xfffffffffffff662 a!12)))
       (or a!17 (not (= #xfffffffffffff652 a!12)))
       (or a!17 (not (= #xfffffffffffff642 a!12)))
       (or a!17 (not (= #xfffffffffffff632 a!12)))
       (or a!17 (not (= #xfffffffffffff622 a!12)))
       (or a!17 (not (= #xfffffffffffff612 a!12)))
       (or a!17 (not (= #xfffffffffffff602 a!12)))
       (or a!17 (not (= #xfffffffffffff5f2 a!12)))
       (or a!17 (not (= #xfffffffffffff5e2 a!12)))
       (or a!17 (not (= #xfffffffffffff5d2 a!12)))
       (or a!17 (not (= #xfffffffffffff5c2 a!12)))
       (or a!17 (not (= #xfffffffffffff5b2 a!12)))
       (or a!17 (not (= #xfffffffffffff5a2 a!12)))
       (or a!17 (not (= #xfffffffffffff592 a!12)))
       (or a!17 (not (= #xfffffffffffff582 a!12)))
       (or a!17 (not (= #xfffffffffffff572 a!12)))
       (or a!17 (not (= #xfffffffffffff562 a!12)))
       (or a!17 (not (= #xfffffffffffff552 a!12))))))))))))))))))
(maximize (let ((a!1 (concat (concat (concat ((_ extract 31 31)
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
  (bvadd mem_c0000f98_86_64
         (bvmul #xffffffffffffffff mem_c0000f50_66_64)
         mem_c0000f58_91_64
         a!12))))))))))))))
(check-sat)