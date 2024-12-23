(declare-fun mem_fffffffffffc3bc0_95_128 () (_ BitVec 128))
(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(declare-fun mem_fffffffffffc3bb0_83_128 () (_ BitVec 128))
(assert (let ((a!1 (= #b1
              ((_ extract 63 63)
                (bvadd mem_c0000f50_66_64
                       (bvmul #xffffffffffffffff mem_c0000f48_65_64)))))
      (a!2 (concat #x000000000000
                   (ite (= #x0a
                           ((_ extract 127 120) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!19 (bvadd #x0000000000000010
                   (bvmul #xffffffffffffffff
                          (concat #x000000000000000
                                  ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!21 (ite (= #x0a ((_ extract 119 112) mem_fffffffffffc3bc0_95_128))
                 #x0000000e
                 (ite (= #x0a ((_ extract 127 120) mem_fffffffffffc3bc0_95_128))
                      #x0000000f
                      #x00000040)))
      (a!30 (ite (= #x0a ((_ extract 119 112) mem_fffffffffffc3bc0_95_128))
                 #b0001110
                 (ite (= #x0a ((_ extract 127 120) mem_fffffffffffc3bc0_95_128))
                      #b0001111
                      #b1000000)))
      (a!39 (and (not (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 23 16) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 31 24) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 39 32) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 47 40) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 55 48) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 63 56) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 103 96) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 111 104) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 119 112) mem_fffffffffffc3bc0_95_128)))
                 (not (= #x0a ((_ extract 127 120) mem_fffffffffffc3bc0_95_128)))))
      (a!40 (concat #x0000
                    (ite (= #x0a
                            ((_ extract 127 120) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0)))
      (a!58 (bvule (bvadd ((_ extract 6 0) mem_c0000f50_66_64)
                          (bvmul #b1111111 ((_ extract 6 0) mem_c0000f48_65_64))
                          (concat #b111 ((_ extract 3 0) mem_c0000f48_65_64)))
                   #b1000000))
      (a!59 ((_ extract 63 7)
              (bvadd (bvadd mem_c0000f50_66_64
                            (bvmul #xffffffffffffffff mem_c0000f48_65_64))
                     (concat #xfffffffffffffff
                             ((_ extract 3 0) mem_c0000f48_65_64))))))
(let ((a!3 (concat a!2
                   (ite (= #x0a
                           ((_ extract 119 112) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!20 (not (bvule (bvadd mem_c0000f50_66_64
                               (bvmul #xffffffffffffffff mem_c0000f48_65_64))
                        a!19)))
      (a!22 (ite (= #x0a ((_ extract 103 96) mem_fffffffffffc3bc0_95_128))
                 #x0000000c
                 (ite (= #x0a ((_ extract 111 104) mem_fffffffffffc3bc0_95_128))
                      #x0000000d
                      a!21)))
      (a!31 (ite (= #x0a ((_ extract 103 96) mem_fffffffffffc3bc0_95_128))
                 #b0001100
                 (ite (= #x0a ((_ extract 111 104) mem_fffffffffffc3bc0_95_128))
                      #b0001101
                      a!30)))
      (a!41 (concat a!40
                    (ite (= #x0a
                            ((_ extract 119 112) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!4 (concat a!3
                   (ite (= #x0a
                           ((_ extract 111 104) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!23 (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128))
                 #x0000000a
                 (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128))
                      #x0000000b
                      a!22)))
      (a!32 (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128))
                 #b0001010
                 (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128))
                      #b0001011
                      a!31)))
      (a!42 (concat a!41
                    (ite (= #x0a
                            ((_ extract 111 104) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!5 (concat a!4
                   (ite (= #x0a
                           ((_ extract 103 96) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!24 (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128))
                 #x00000008
                 (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128))
                      #x00000009
                      a!23)))
      (a!33 (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128))
                 #b0001000
                 (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128))
                      #b0001001
                      a!32)))
      (a!43 (concat a!42
                    (ite (= #x0a
                            ((_ extract 103 96) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!6 (concat a!5
                   (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!25 (ite (= #x0a ((_ extract 55 48) mem_fffffffffffc3bc0_95_128))
                 #x00000006
                 (ite (= #x0a ((_ extract 63 56) mem_fffffffffffc3bc0_95_128))
                      #x00000007
                      a!24)))
      (a!34 (ite (= #x0a ((_ extract 55 48) mem_fffffffffffc3bc0_95_128))
                 #b0000110
                 (ite (= #x0a ((_ extract 63 56) mem_fffffffffffc3bc0_95_128))
                      #b0000111
                      a!33)))
      (a!44 (concat a!43
                    (ite (= #x0a
                            ((_ extract 95 88) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!7 (concat a!6
                   (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!26 (ite (= #x0a ((_ extract 39 32) mem_fffffffffffc3bc0_95_128))
                 #x00000004
                 (ite (= #x0a ((_ extract 47 40) mem_fffffffffffc3bc0_95_128))
                      #x00000005
                      a!25)))
      (a!35 (ite (= #x0a ((_ extract 39 32) mem_fffffffffffc3bc0_95_128))
                 #b0000100
                 (ite (= #x0a ((_ extract 47 40) mem_fffffffffffc3bc0_95_128))
                      #b0000101
                      a!34)))
      (a!45 (concat a!44
                    (ite (= #x0a
                            ((_ extract 87 80) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!8 (concat a!7
                   (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!27 (ite (= #x0a ((_ extract 23 16) mem_fffffffffffc3bc0_95_128))
                 #x00000002
                 (ite (= #x0a ((_ extract 31 24) mem_fffffffffffc3bc0_95_128))
                      #x00000003
                      a!26)))
      (a!36 (ite (= #x0a ((_ extract 23 16) mem_fffffffffffc3bc0_95_128))
                 #b0000010
                 (ite (= #x0a ((_ extract 31 24) mem_fffffffffffc3bc0_95_128))
                      #b0000011
                      a!35)))
      (a!46 (concat a!45
                    (ite (= #x0a
                            ((_ extract 79 72) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!9 (concat a!8
                   (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bb0_83_128))
                        #b1
                        #b0)))
      (a!28 (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128))
                 #x00000000
                 (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128))
                      #x00000001
                      a!27)))
      (a!37 (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128))
                 #b0000000
                 (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128))
                      #b0000001
                      a!36)))
      (a!47 (concat a!46
                    (ite (= #x0a
                            ((_ extract 71 64) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!10 (concat a!9
                    (ite (= #x0a
                            ((_ extract 63 56) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!29 (= #b000000000000000000000000000000000000000000000000000000000
               ((_ extract 63 7)
                 (bvadd #xfffffffffffc3bc2
                        (concat #x00000000 a!28)
                        (bvmul #xffffffffffffffff mem_c0000f48_65_64)))))
      (a!38 (bvule (bvadd #b0010010
                          a!37
                          (concat ((_ extract 6 4) mem_c0000f48_65_64) #x0)
                          (bvmul #b1111111 ((_ extract 6 0) mem_c0000f48_65_64)))
                   #b1111000))
      (a!48 (concat a!47
                    (ite (= #x0a
                            ((_ extract 63 56) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!11 (concat a!10
                    (ite (= #x0a
                            ((_ extract 55 48) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!49 (concat a!48
                    (ite (= #x0a
                            ((_ extract 55 48) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!12 (concat a!11
                    (ite (= #x0a
                            ((_ extract 47 40) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!50 (concat a!49
                    (ite (= #x0a
                            ((_ extract 47 40) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!13 (concat a!12
                    (ite (= #x0a
                            ((_ extract 39 32) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!51 (concat a!50
                    (ite (= #x0a
                            ((_ extract 39 32) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!14 (concat a!13
                    (ite (= #x0a
                            ((_ extract 31 24) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!52 (concat a!51
                    (ite (= #x0a
                            ((_ extract 31 24) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!15 (concat a!14
                    (ite (= #x0a
                            ((_ extract 23 16) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!53 (concat a!52
                    (ite (= #x0a
                            ((_ extract 23 16) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!16 (concat a!15
                    (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!54 (concat a!53
                    (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!17 (concat a!16
                    (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bb0_83_128))
                         #b1
                         #b0)))
      (a!55 (concat a!54
                    (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!18 ((_ extract 31 0)
              (bvashr a!17
                      (concat #x000000000000000
                              ((_ extract 3 0) mem_c0000f48_65_64)))))
      (a!56 ((_ extract 63 5)
              (bvadd #xfffffffffffc3bc1
                     (concat #x00000000 (ite a!39 a!55 a!28))
                     (bvmul #xffffffffffffffff mem_c0000f48_65_64)))))
(let ((a!57 (ite (= #x0003c440 (ite a!39 a!55 a!28))
                 ((_ extract 63 5)
                   (bvadd mem_c0000f50_66_64
                          (bvmul #xffffffffffffffff mem_c0000f48_65_64)))
                 a!56)))
  (and (not (bvule ((_ extract 5 0) mem_c0000f48_65_64) #b110000))
       (not (= mem_c0000f50_66_64 mem_c0000f48_65_64))
       (not a!1)
       (= #xfffffffffffc3bb ((_ extract 63 4) mem_c0000f48_65_64))
       (= #x00000000 a!18)
       a!20
       a!29
       a!38
       (= #b00000000000000000000000000000000000000000000000000000000000 a!57)
       (or (not a!58)
           (not (= #b000000000000000000000000000000000000000000000000000000000
                   a!59)))
       (or (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 23 16) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 31 24) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 39 32) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 47 40) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 55 48) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 63 56) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 111 104) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 103 96) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 127 120) mem_fffffffffffc3bc0_95_128))
           (= #x0a ((_ extract 119 112) mem_fffffffffffc3bc0_95_128)))))))))))))))))))))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (and (not (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 23 16) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 31 24) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 39 32) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 47 40) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 55 48) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 63 56) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 103 96) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 111 104) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 119 112) mem_fffffffffffc3bc0_95_128)))
                (not (= #x0a ((_ extract 127 120) mem_fffffffffffc3bc0_95_128)))))
      (a!2 (concat #x0000
                   (ite (= #x0a
                           ((_ extract 127 120) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!18 (ite (= #x0a ((_ extract 119 112) mem_fffffffffffc3bc0_95_128))
                 #x0000000e
                 (ite (= #x0a ((_ extract 127 120) mem_fffffffffffc3bc0_95_128))
                      #x0000000f
                      #x00000040)))
      (a!26 (bvadd #xfffffffffffffff0
                   (bvmul #xffffffffffffffff
                          (concat ((_ extract 63 4) mem_c0000f48_65_64) #x0)))))
(let ((a!3 (concat a!2
                   (ite (= #x0a
                           ((_ extract 119 112) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!19 (ite (= #x0a ((_ extract 103 96) mem_fffffffffffc3bc0_95_128))
                 #x0000000c
                 (ite (= #x0a ((_ extract 111 104) mem_fffffffffffc3bc0_95_128))
                      #x0000000d
                      a!18))))
(let ((a!4 (concat a!3
                   (ite (= #x0a
                           ((_ extract 111 104) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!20 (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128))
                 #x0000000a
                 (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128))
                      #x0000000b
                      a!19))))
(let ((a!5 (concat a!4
                   (ite (= #x0a
                           ((_ extract 103 96) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!21 (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128))
                 #x00000008
                 (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128))
                      #x00000009
                      a!20))))
(let ((a!6 (concat a!5
                   (ite (= #x0a ((_ extract 95 88) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!22 (ite (= #x0a ((_ extract 55 48) mem_fffffffffffc3bc0_95_128))
                 #x00000006
                 (ite (= #x0a ((_ extract 63 56) mem_fffffffffffc3bc0_95_128))
                      #x00000007
                      a!21))))
(let ((a!7 (concat a!6
                   (ite (= #x0a ((_ extract 87 80) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!23 (ite (= #x0a ((_ extract 39 32) mem_fffffffffffc3bc0_95_128))
                 #x00000004
                 (ite (= #x0a ((_ extract 47 40) mem_fffffffffffc3bc0_95_128))
                      #x00000005
                      a!22))))
(let ((a!8 (concat a!7
                   (ite (= #x0a ((_ extract 79 72) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!24 (ite (= #x0a ((_ extract 23 16) mem_fffffffffffc3bc0_95_128))
                 #x00000002
                 (ite (= #x0a ((_ extract 31 24) mem_fffffffffffc3bc0_95_128))
                      #x00000003
                      a!23))))
(let ((a!9 (concat a!8
                   (ite (= #x0a ((_ extract 71 64) mem_fffffffffffc3bc0_95_128))
                        #b1
                        #b0)))
      (a!25 (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128))
                 #x00000000
                 (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128))
                      #x00000001
                      a!24))))
(let ((a!10 (concat a!9
                    (ite (= #x0a
                            ((_ extract 63 56) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!11 (concat a!10
                    (ite (= #x0a
                            ((_ extract 55 48) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!12 (concat a!11
                    (ite (= #x0a
                            ((_ extract 47 40) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!13 (concat a!12
                    (ite (= #x0a
                            ((_ extract 39 32) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!14 (concat a!13
                    (ite (= #x0a
                            ((_ extract 31 24) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!15 (concat a!14
                    (ite (= #x0a
                            ((_ extract 23 16) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!16 (concat a!15
                    (ite (= #x0a ((_ extract 15 8) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
(let ((a!17 (concat a!16
                    (ite (= #x0a ((_ extract 7 0) mem_fffffffffffc3bc0_95_128))
                         #b1
                         #b0))))
  (ite (= (concat #x00000000 (ite a!1 a!17 a!25)) a!26)
       (bvadd mem_c0000f50_66_64 (bvmul #xffffffffffffffff mem_c0000f48_65_64))
       (bvadd #x0000000000000011
              (concat #x00000000 (ite a!1 a!17 a!25))
              (concat ((_ extract 63 4) mem_c0000f48_65_64) #x0)
              (bvmul #xffffffffffffffff mem_c0000f48_65_64)))))))))))))))))))) 
(minimize goal)
(check-sat)