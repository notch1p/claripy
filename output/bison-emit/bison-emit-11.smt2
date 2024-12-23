(declare-fun mem_c00cefff_194_8 () (_ BitVec 8))
(declare-fun mem_c00cf000_195_8 () (_ BitVec 8))
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
      (a!4 (bvurem #x000000000a890b4f
                   (concat (concat #x000000000000
                                   ((_ extract 951 944)
                                     file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                           ((_ extract 959 952)
                             file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))
      (a!9 (bvadd #x00000000c0080000
                  (concat (concat #x000000000000 mem_c00cf000_195_8)
                          mem_c00cefff_194_8)
                  (concat (concat #x000000000000
                                  ((_ extract 983 976)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                          ((_ extract 991 984)
                            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))
      (a!10 (not (bvule ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                        (concat ((_ extract 983 976)
                                  file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                                ((_ extract 991 984)
                                  file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!12 (not (bvule ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                        (concat ((_ extract 967 960)
                                  file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                                ((_ extract 975 968)
                                  file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!14 (not (bvule ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                        (concat ((_ extract 935 928)
                                  file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                                ((_ extract 943 936)
                                  file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!16 (bvmul #xffffffff
                   (concat (concat #x0000
                                   ((_ extract 983 976)
                                     file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                           ((_ extract 991 984)
                             file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))
      (a!18 (bvadd ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                   (bvmul #xffff
                          (concat ((_ extract 983 976)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)
                                  ((_ extract 991 984)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))))
(let ((a!2 (bvadd (concat (concat #x000000000000
                                  ((_ extract 967 960)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                          ((_ extract 975 968)
                            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                  a!1))
      (a!5 (bvadd (concat (concat #x00000000c008
                                  ((_ extract 967 960)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                          ((_ extract 975 968)
                            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                  (concat (concat #b000000000000000000000000000000
                                  ((_ extract 31 0) a!4))
                          #b00)))
      (a!6 (bvmul #xffffffffffffffff
                  (concat (concat #b000000000000000000000000000000
                                  ((_ extract 31 0) a!4))
                          #b00)))
      (a!8 (bvadd (concat (concat #xc008
                                  ((_ extract 967 960)
                                    file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                          ((_ extract 975 968)
                            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                  (concat ((_ extract 29 0) a!4) #b00)))
      (a!11 (or (not (= #x000000000000
                        ((_ extract 63 16) mem_7fffffffffefab0_118_64)))
                a!10))
      (a!13 (or (not (= #x000000000000
                        ((_ extract 63 16) mem_7fffffffffefab0_118_64)))
                a!12))
      (a!15 (or (not (= #x000000000000
                        ((_ extract 63 16) mem_7fffffffffefab0_118_64)))
                a!14))
      (a!17 (= #x0000
               ((_ extract 31 16)
                 (bvadd ((_ extract 31 0) mem_7fffffffffefab0_118_64) a!16)))))
(let ((a!7 (= (concat (concat #x00000000c008
                              ((_ extract 967 960)
                                file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                      ((_ extract 975 968)
                        file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
              (bvadd #x00000000c00cefff a!6)))
      (a!19 (or (not a!17)
                (not (bvule a!18 (concat mem_c00cf000_195_8 mem_c00cefff_194_8))))))
  (and (not (= #x000000000000000 ((_ extract 63 4) mem_7fffffffffefab0_118_64)))
       (= #x24
          ((_ extract 1023 1016)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
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
       (bvule #x00000000c0080000 a!5)
       (= #x00000000 ((_ extract 63 32) a!5))
       a!7
       (bvule a!8 #xc00cfb03)
       (bvule #x00000000c0080001 a!9)
       (or (not (= #x00 mem_c00cefff_194_8)) (not (= #x00 mem_c00cf000_195_8)))
       a!11
       a!13
       a!15
       a!19)))))
(define-fun goal () (_ BitVec 64) (bvadd (concat (concat #x000000000000 mem_c00cf000_195_8) mem_c00cefff_194_8)
       (concat (concat #x000000000000
                       ((_ extract 983 976)
                         file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
               ((_ extract 991 984)
                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       #x00000000c0080000)) 
(maximize goal)
(check-sat)