(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_fffffffffffc3bb0_83_128 () (_ BitVec 128))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(assert (let ((a!1 (= #b1
              ((_ extract 63 63)
                (bvadd mem_c0000f50_66_64
                       (bvmul #xffffffffffffffff mem_c0000f48_65_64)))))
      (a!2 (concat #x000000000000
                   (ite (= #x0a
                           ((_ extract 127 120) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!62 (bvadd #x000000000003c450
                   (bvmul #xffffffffffffffff
                          (concat #x000000000000000
                                  ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!76 (= #x00000000
               ((_ extract 63 32)
                 (bvadd mem_c0000f50_66_64
                        (bvmul #xffffffffffffffff mem_c0000f48_65_64))))))
(let ((a!3 (concat a!2
                   (ite (= #x0a
                           ((_ extract 119 112) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!4 (concat a!3
                   (ite (= #x0a
                           ((_ extract 111 104) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!5 (concat a!4
                   (ite (= #x0a
                           ((_ extract 103 96) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!6 (concat a!5
                   (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!7 (concat a!6
                   (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!8 (concat a!7
                   (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!9 (concat a!8
                   (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0))))
(let ((a!10 (concat a!9
                    (ite (= #x0a
                            ((_ extract 63 56) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!11 (concat a!10
                    (ite (= #x0a
                            ((_ extract 55 48) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!12 (concat a!11
                    (ite (= #x0a
                            ((_ extract 47 40) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!13 (concat a!12
                    (ite (= #x0a
                            ((_ extract 39 32) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!14 (concat a!13
                    (ite (= #x0a
                            ((_ extract 31 24) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!15 (concat a!14
                    (ite (= #x0a
                            ((_ extract 23 16) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!16 (concat a!15
                    (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!17 (concat a!16
                    (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0))))
(let ((a!18 ((_ extract 31 0)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!19 ((_ extract 0 0)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!20 ((_ extract 1 1)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!21 ((_ extract 2 2)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!22 ((_ extract 3 3)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!23 ((_ extract 4 4)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!24 ((_ extract 5 5)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!25 ((_ extract 6 6)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!26 ((_ extract 7 7)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!27 ((_ extract 8 8)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!28 ((_ extract 9 9)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!29 ((_ extract 10 10)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!30 ((_ extract 11 11)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!31 ((_ extract 12 12)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!32 ((_ extract 13 13)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!33 ((_ extract 14 14)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!34 ((_ extract 15 15)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!35 ((_ extract 16 16)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!36 ((_ extract 17 17)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!37 ((_ extract 18 18)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!38 ((_ extract 19 19)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!39 ((_ extract 20 20)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!40 ((_ extract 21 21)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!41 ((_ extract 22 22)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!42 ((_ extract 23 23)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!43 ((_ extract 24 24)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!44 ((_ extract 25 25)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!45 ((_ extract 26 26)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!46 ((_ extract 27 27)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!47 ((_ extract 28 28)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!48 ((_ extract 29 29)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!49 ((_ extract 30 30)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!50 ((_ extract 31 31)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64))))))
(let ((a!51 (ite (= #b1 a!48)
                 #x0000001d
                 (ite (= #b1 a!49)
                      #x0000001e
                      (ite (= #b1 a!50) #x0000001f #x00000040))))
      (a!64 (ite (= #b1 a!48)
                 #b0011101
                 (ite (= #b1 a!49)
                      #b0011110
                      (ite (= #b1 a!50) #b0011111 #b1000000)))))
(let ((a!52 (ite (= #b1 a!45)
                 #x0000001a
                 (ite (= #b1 a!46)
                      #x0000001b
                      (ite (= #b1 a!47) #x0000001c a!51))))
      (a!65 (ite (= #b1 a!45)
                 #b0011010
                 (ite (= #b1 a!46) #b0011011 (ite (= #b1 a!47) #b0011100 a!64)))))
(let ((a!53 (ite (= #b1 a!42)
                 #x00000017
                 (ite (= #b1 a!43)
                      #x00000018
                      (ite (= #b1 a!44) #x00000019 a!52))))
      (a!66 (ite (= #b1 a!42)
                 #b0010111
                 (ite (= #b1 a!43) #b0011000 (ite (= #b1 a!44) #b0011001 a!65)))))
(let ((a!54 (ite (= #b1 a!39)
                 #x00000014
                 (ite (= #b1 a!40)
                      #x00000015
                      (ite (= #b1 a!41) #x00000016 a!53))))
      (a!67 (ite (= #b1 a!39)
                 #b0010100
                 (ite (= #b1 a!40) #b0010101 (ite (= #b1 a!41) #b0010110 a!66)))))
(let ((a!55 (ite (= #b1 a!36)
                 #x00000011
                 (ite (= #b1 a!37)
                      #x00000012
                      (ite (= #b1 a!38) #x00000013 a!54))))
      (a!68 (ite (= #b1 a!36)
                 #b0010001
                 (ite (= #b1 a!37) #b0010010 (ite (= #b1 a!38) #b0010011 a!67)))))
(let ((a!56 (ite (= #b1 a!33)
                 #x0000000e
                 (ite (= #b1 a!34)
                      #x0000000f
                      (ite (= #b1 a!35) #x00000010 a!55))))
      (a!69 (ite (= #b1 a!33)
                 #b0001110
                 (ite (= #b1 a!34) #b0001111 (ite (= #b1 a!35) #b0010000 a!68)))))
(let ((a!57 (ite (= #b1 a!30)
                 #x0000000b
                 (ite (= #b1 a!31)
                      #x0000000c
                      (ite (= #b1 a!32) #x0000000d a!56))))
      (a!70 (ite (= #b1 a!30)
                 #b0001011
                 (ite (= #b1 a!31) #b0001100 (ite (= #b1 a!32) #b0001101 a!69)))))
(let ((a!58 (ite (= #b1 a!27)
                 #x00000008
                 (ite (= #b1 a!28)
                      #x00000009
                      (ite (= #b1 a!29) #x0000000a a!57))))
      (a!71 (ite (= #b1 a!27)
                 #b0001000
                 (ite (= #b1 a!28) #b0001001 (ite (= #b1 a!29) #b0001010 a!70)))))
(let ((a!59 (ite (= #b1 a!24)
                 #x00000005
                 (ite (= #b1 a!25)
                      #x00000006
                      (ite (= #b1 a!26) #x00000007 a!58))))
      (a!72 (ite (= #b1 a!24)
                 #b0000101
                 (ite (= #b1 a!25) #b0000110 (ite (= #b1 a!26) #b0000111 a!71)))))
(let ((a!60 (ite (= #b1 a!21)
                 #x00000002
                 (ite (= #b1 a!22)
                      #x00000003
                      (ite (= #b1 a!23) #x00000004 a!59))))
      (a!73 (ite (= #b1 a!21)
                 #b0000010
                 (ite (= #b1 a!22) #b0000011 (ite (= #b1 a!23) #b0000100 a!72)))))
(let ((a!61 (ite (= #b1 a!19) #x00000000 (ite (= #b1 a!20) #x00000001 a!60)))
      (a!74 (bvadd #b0000001
                   (ite (= #b1 a!19)
                        #b0000000
                        (ite (= #b1 a!20) #b0000001 a!73))
                   (concat ((_ extract 6 4) mem_c0000f48_65_64) #x0)
                   (concat #b000 ((_ extract 3 0) mem_c0000f48_65_64))
                   (bvmul #b1111111 ((_ extract 6 0) mem_c0000f48_65_64)))))
(let ((a!63 (ite (= (concat #x00000000 a!61) a!62)
                 (bvadd mem_c0000f50_66_64
                        (bvmul #xffffffffffffffff mem_c0000f48_65_64))
                 (bvadd #xfffffffffffc3bb1
                        (concat #x00000000 a!61)
                        (concat #x000000000000000
                                ((_ extract 3 0) mem_c0000f48_65_64))
                        (bvmul #xffffffffffffffff mem_c0000f48_65_64))))
      (a!75 (ite (= (concat #x00000000 a!61) a!62)
                 (bvadd ((_ extract 6 0) mem_c0000f50_66_64)
                        (bvmul #b1111111 ((_ extract 6 0) mem_c0000f48_65_64)))
                 a!74))
      (a!77 (bvule (bvadd ((_ extract 31 0) mem_c0000f50_66_64)
                          (bvmul #xffffffff
                                 ((_ extract 31 0) mem_c0000f48_65_64)))
                   a!61)))
  (and (not (bvule ((_ extract 5 0) mem_c0000f48_65_64) #b110000))
       (not (= mem_c0000f50_66_64 mem_c0000f48_65_64))
       (not a!1)
       (= #xfffffffffffc3bb ((_ extract 63 4) mem_c0000f48_65_64))
       (not (= #x00000000 a!18))
       (= #b000000000000000000000000000000000000000000000000000000000
          ((_ extract 63 7) (bvadd #x0000000000000001 a!63)))
       (bvule (bvadd #b0000001 a!75) #b1111000)
       (or (not a!76) (not a!77)))))))))))))))))))))))))))))))))
(maximize (let ((a!1 (concat #x000000000000
                   (ite (= #x0a
                           ((_ extract 127 120) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!61 (bvadd (bvmul #xffffffffffffffff
                          (concat ((_ extract 63 4) mem_c0000f48_65_64) #x0))
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
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!18 ((_ extract 0 0)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!19 ((_ extract 1 1)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!20 ((_ extract 2 2)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!21 ((_ extract 3 3)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!22 ((_ extract 4 4)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!23 ((_ extract 5 5)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!24 ((_ extract 6 6)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!25 ((_ extract 7 7)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!26 ((_ extract 8 8)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!27 ((_ extract 9 9)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!28 ((_ extract 10 10)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!29 ((_ extract 11 11)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!30 ((_ extract 12 12)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!31 ((_ extract 13 13)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!32 ((_ extract 14 14)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!33 ((_ extract 15 15)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!34 ((_ extract 16 16)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!35 ((_ extract 17 17)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!36 ((_ extract 18 18)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!37 ((_ extract 19 19)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!38 ((_ extract 20 20)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!39 ((_ extract 21 21)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!40 ((_ extract 22 22)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!41 ((_ extract 23 23)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!42 ((_ extract 24 24)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!43 ((_ extract 25 25)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!44 ((_ extract 26 26)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!45 ((_ extract 27 27)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!46 ((_ extract 28 28)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!47 ((_ extract 29 29)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!48 ((_ extract 30 30)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!49 ((_ extract 31 31)
              (bvashr a!16
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64))))))
(let ((a!50 (ite (= #b1 a!47)
                 #x0000001d
                 (ite (= #b1 a!48)
                      #x0000001e
                      (ite (= #b1 a!49) #x0000001f #x00000040)))))
(let ((a!51 (ite (= #b1 a!44)
                 #x0000001a
                 (ite (= #b1 a!45)
                      #x0000001b
                      (ite (= #b1 a!46) #x0000001c a!50)))))
(let ((a!52 (ite (= #b1 a!41)
                 #x00000017
                 (ite (= #b1 a!42)
                      #x00000018
                      (ite (= #b1 a!43) #x00000019 a!51)))))
(let ((a!53 (ite (= #b1 a!38)
                 #x00000014
                 (ite (= #b1 a!39)
                      #x00000015
                      (ite (= #b1 a!40) #x00000016 a!52)))))
(let ((a!54 (ite (= #b1 a!35)
                 #x00000011
                 (ite (= #b1 a!36)
                      #x00000012
                      (ite (= #b1 a!37) #x00000013 a!53)))))
(let ((a!55 (ite (= #b1 a!32)
                 #x0000000e
                 (ite (= #b1 a!33)
                      #x0000000f
                      (ite (= #b1 a!34) #x00000010 a!54)))))
(let ((a!56 (ite (= #b1 a!29)
                 #x0000000b
                 (ite (= #b1 a!30)
                      #x0000000c
                      (ite (= #b1 a!31) #x0000000d a!55)))))
(let ((a!57 (ite (= #b1 a!26)
                 #x00000008
                 (ite (= #b1 a!27)
                      #x00000009
                      (ite (= #b1 a!28) #x0000000a a!56)))))
(let ((a!58 (ite (= #b1 a!23)
                 #x00000005
                 (ite (= #b1 a!24)
                      #x00000006
                      (ite (= #b1 a!25) #x00000007 a!57)))))
(let ((a!59 (ite (= #b1 a!20)
                 #x00000002
                 (ite (= #b1 a!21)
                      #x00000003
                      (ite (= #b1 a!22) #x00000004 a!58)))))
(let ((a!60 (ite (= #x00000000 a!17)
                 a!17
                 (ite (= #b1 a!18)
                      #x00000000
                      (ite (= #b1 a!19) #x00000001 a!59)))))
  (ite (= (concat #x00000000 a!60) a!61)
       (bvadd mem_c0000f50_66_64 (bvmul #xffffffffffffffff mem_c0000f48_65_64))
       (bvadd #x0000000000000001
              (concat #x00000000 a!60)
              (concat ((_ extract 63 4) mem_c0000f48_65_64) #x0)
              (concat #x000000000000000 ((_ extract 3 0) mem_c0000f48_65_64))
              (bvmul #xffffffffffffffff mem_c0000f48_65_64))))))))))))))))))))))))))))))))
(check-sat)