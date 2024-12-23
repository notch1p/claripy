(declare-fun file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024
             ()
             (_ BitVec 1024))
(declare-fun mem_7fffffffffefab0_118_64 () (_ BitVec 64))
(assert (let ((a!1 (concat (concat (concat #b0000000000000000000000000000000000000000000000
                                   ((_ extract 951 944)
                                     file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                           ((_ extract 959 952)
                             file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                   #b00))
      (a!3 (bvule (concat (concat #x000000000000
                                  ((_ extract 919 912)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                          ((_ extract 927 920)
                            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                  mem_7fffffffffefab0_118_64))
      (a!4 (not (bvule ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                       (concat ((_ extract 983 976)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                               ((_ extract 991 984)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!6 (not (bvule ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                       (concat ((_ extract 967 960)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                               ((_ extract 975 968)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!8 (or (not (= #x00
                       ((_ extract 959 952)
                         file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))
               (not (= #x00
                       ((_ extract 951 944)
                         file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!9 (not (bvule ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                       (concat ((_ extract 935 928)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                               ((_ extract 943 936)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!11 (or (not (= #x00
                        ((_ extract 951 944)
                          file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))
                (not (= #x02
                        ((_ extract 959 952)
                          file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))))
(let ((a!2 (bvadd (concat (concat #x000000000000
                                  ((_ extract 967 960)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                          ((_ extract 975 968)
                            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                  a!1))
      (a!5 (or (not (= #x000000000000
                       ((_ extract 63 16) mem_7fffffffffefab0_118_64)))
               a!4))
      (a!7 (or (not (= #x000000000000
                       ((_ extract 63 16) mem_7fffffffffefab0_118_64)))
               a!6))
      (a!10 (or (not (= #x000000000000
                        ((_ extract 63 16) mem_7fffffffffefab0_118_64)))
                a!9)))
  (and (= #x24
          ((_ extract 1023 1016)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (not (= #x000000000000000 ((_ extract 63 4) mem_7fffffffffefab0_118_64)))
       (bvule a!2 mem_7fffffffffefab0_118_64)
       a!3
       (= #x03
          ((_ extract 1015 1008)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #x01
          ((_ extract 1007 1000)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #x20
          ((_ extract 999 992)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       a!5
       a!7
       a!8
       a!10
       a!11))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvurem #x000000000a890b4f
                   (concat (concat #x000000000000
                                   ((_ extract 951 944)
                                     file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                           ((_ extract 959 952)
                             file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
  (bvadd #x00000000c0080000
         (concat (concat #x000000000000
                         ((_ extract 967 960)
                           file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                 ((_ extract 975 968)
                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
         (bvshl ((_ zero_extend 32) ((_ extract 31 0) a!1)) #x0000000000000002)))) 
(minimize goal)
(check-sat)