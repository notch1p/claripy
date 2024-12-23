(declare-fun mem_c00ab34b_303_16 () (_ BitVec 16))
(declare-fun file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024
             ()
             (_ BitVec 1024))
(declare-fun mem_7fffffffffefab0_118_64 () (_ BitVec 64))
(declare-fun mem_c00a6823_229_16 () (_ BitVec 16))
(declare-fun strlen_270_64 () (_ BitVec 64))
(declare-fun mem_c00a1cfb_218_16 () (_ BitVec 16))
(declare-fun mem_c009d1d3_211_16 () (_ BitVec 16))
(declare-fun mem_c00986ab_205_16 () (_ BitVec 16))
(declare-fun mem_c0093b83_196_16 () (_ BitVec 16))
(declare-fun mem_c00cefff_194_8 () (_ BitVec 8))
(declare-fun mem_c00cf000_195_8 () (_ BitVec 8))
(assert (let ((a!1 (bvadd ((_ extract 31 0) mem_7fffffffffefab0_118_64)
                  (bvmul #xffffffff
                         (concat #x000000
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!2 (bvadd ((_ extract 15 0) mem_7fffffffffefab0_118_64)
                  (bvmul #xffff
                         (concat #x00
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!3 (bvadd #x0000000000000002
                  (bvmul #xffffffffffffffff
                         (concat #x00000000000000
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!4 (ite (= #x00
                   ((_ extract 991 984)
                     file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
                (bvadd #x00000000c0080002
                       (concat #x000000000000 mem_c00a6823_229_16)
                       (concat #x00000000000000
                               ((_ extract 991 984)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))
                (bvadd #x00000000c0080003
                       (concat #x000000000000 mem_c00a6823_229_16)
                       (concat #x00000000000000
                               ((_ extract 991 984)
                                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!6 (bvule #x00000000c0080002
                  (bvadd (concat #x00000000c008 mem_c00a6823_229_16)
                         (concat #x00000000000000
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))))
      (a!7 (bvule (bvadd (concat #xc008 mem_c00a6823_229_16)
                         (concat #x000000
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024)))
                  #xc0080002))
      (a!8 (bvadd #x00000000c0080002
                  (bvmul #xffffffffffffffff
                         (concat #x00000000000000
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))))
(let ((a!5 (bvadd a!4
                  (bvmul #xffffffffffffffff
                         (concat #x00000000c008 mem_c00a6823_229_16))
                  (bvmul #xffffffffffffffff
                         (concat #x00000000000000
                                 ((_ extract 991 984)
                                   file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))))))
  (and (not (= #x0000 mem_c00a6823_229_16))
       (not (= #x0000 mem_c00ab34b_303_16))
       (= #x24
          ((_ extract 1023 1016)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (bvule #x000000000004f92b mem_7fffffffffefab0_118_64)
       (= #x03
          ((_ extract 1015 1008)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #x01
          ((_ extract 1007 1000)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #x20
          ((_ extract 999 992)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #x0000 ((_ extract 31 16) a!1))
       (bvule a!2 (concat mem_c00cf000_195_8 mem_c00cefff_194_8))
       (bvule a!2 mem_c0093b83_196_16)
       (bvule a!2 mem_c00986ab_205_16)
       (bvule a!2 mem_c009d1d3_211_16)
       (bvule a!2 mem_c00a1cfb_218_16)
       (not (bvule a!2 mem_c00a6823_229_16))
       (= (concat #x000000000000 mem_c00a6823_229_16) a!3)
       (= #x00
          ((_ extract 983 976)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #x87
          ((_ extract 975 968)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #xf9
          ((_ extract 967 960)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #xe9
          ((_ extract 959 952)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= #xff
          ((_ extract 951 944)
            file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       (= a!5 strlen_270_64)
       a!6
       a!7
       (= (concat #x00000000c008 mem_c00a6823_229_16) a!8)
       (not (bvule a!2 mem_c00ab34b_303_16))))))
(define-fun goal () (_ BitVec 64) (bvadd (concat #x000000000000 mem_c00ab34b_303_16)
       (concat (concat #x000000000000
                       ((_ extract 983 976)
                         file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
               ((_ extract 991 984)
                 file_1_/usr/lib/x86_64-linux-gnu/gconv/gconv-modules.cache_0_120_1024))
       #x00000000c0080000)) 
(minimize goal)
(check-sat)