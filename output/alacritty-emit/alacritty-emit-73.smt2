(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(declare-fun mem_fffffffffffc3bb0_83_128 () (_ BitVec 128))
(assert (let ((a!1 (concat #x000000000000
                   (ite (= #x0a
                           ((_ extract 127 120) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!18 (bvadd #x0000000000000010
                   (bvmul #xffffffffffffffff
                          (concat #x000000000000000
                                  ((_ extract 3 0) mem_c0000f48_65_64))))))
(let ((a!2 (concat a!1
                   (ite (= #x0a
                           ((_ extract 119 112) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!3 (concat a!2
                   (ite (= #x0a
                           ((_ extract 111 104) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!4 (concat a!3
                   (ite (= #x0a
                           ((_ extract 103 96) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!5 (concat a!4
                   (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!6 (concat a!5
                   (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!7 (concat a!6
                   (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!8 (concat a!7
                   (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!9 (concat a!8
                   (ite (= #x0a ((_ extract 63 56) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!10 (concat a!9
                    (ite (= #x0a
                            ((_ extract 55 48) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!11 (concat a!10
                    (ite (= #x0a
                            ((_ extract 47 40) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!12 (concat a!11
                    (ite (= #x0a
                            ((_ extract 39 32) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!13 (concat a!12
                    (ite (= #x0a
                            ((_ extract 31 24) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!14 (concat a!13
                    (ite (= #x0a
                            ((_ extract 23 16) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!15 (concat a!14
                    (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!16 (concat a!15
                    (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!17 ((_ extract 31 0)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64))))))
  (and (= #xfffffffffffc3bb ((_ extract 63 4) mem_c0000f48_65_64))
       (not (= mem_c0000f50_66_64 mem_c0000f48_65_64))
       (= #x00000000 a!17)
       (bvule (bvadd mem_c0000f50_66_64
                     (bvmul #xffffffffffffffff mem_c0000f48_65_64))
              a!18)
       (bvule #x0000000000000001
              (bvadd mem_c0000f50_66_64
                     (bvmul #xffffffffffffffff mem_c0000f48_65_64)))
       (bvule #xfffffffffffc3bb1 mem_c0000f48_65_64))))))))))))))))))))
(maximize mem_c0000f48_65_64)
(check-sat)