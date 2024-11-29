(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_ff77df_82_128 () (_ BitVec 128))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(assert (let ((a!1 (not (= #b1
                   ((_ extract 63 63)
                     (bvadd #xffffffffff008821 mem_c0000f50_66_64)))))
      (a!2 (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                #x0000000e
                (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                     #x0000000f
                     #x00000040)))
      (a!11 (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                 #b0001110
                 (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                      #b0001111
                      #b1000000)))
      (a!19 (and (not (= #x0a ((_ extract 7 0) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 15 8) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 23 16) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 31 24) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 39 32) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 47 40) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 55 48) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 63 56) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 71 64) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 79 72) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 87 80) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 95 88) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 103 96) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 111 104) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 119 112) mem_ff77df_82_128)))
                 (not (= #x0a ((_ extract 127 120) mem_ff77df_82_128)))))
      (a!20 (concat #x0000
                    (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                         #b1
                         #b0)))
      (a!37 (concat (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128)) #b1 #b0)
                    (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128)) #b1 #b0)))
      (a!41 (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                 #b01110
                 (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                      #b01111
                      #b00000)))
      (a!49 (not (= #x00000000
                    ((_ extract 63 32)
                      (bvadd #xffffffffff008821 mem_c0000f50_66_64))))))
(let ((a!3 (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
                #x0000000c
                (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                     #x0000000d
                     a!2)))
      (a!12 (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
                 #b0001100
                 (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                      #b0001101
                      a!11)))
      (a!21 (concat a!20
                    (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                         #b1
                         #b0)))
      (a!38 (concat a!37
                    (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128)) #b1 #b0)))
      (a!42 (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
                 #b01100
                 (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                      #b01101
                      a!41))))
(let ((a!4 (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128))
                #x0000000a
                (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128))
                     #x0000000b
                     a!3)))
      (a!13 (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128))
                 #b0001010
                 (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128))
                      #b0001011
                      a!12)))
      (a!22 (concat a!21
                    (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                         #b1
                         #b0)))
      (a!39 (concat a!38
                    (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128)) #b1 #b0)))
      (a!43 (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128))
                 #b01010
                 (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128))
                      #b01011
                      a!42))))
(let ((a!5 (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128))
                #x00000008
                (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128))
                     #x00000009
                     a!4)))
      (a!14 (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128))
                 #b0001000
                 (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128))
                      #b0001001
                      a!13)))
      (a!23 (concat a!22
                    (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
                         #b1
                         #b0)))
      (a!40 (concat a!39
                    (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128)) #b1 #b0)))
      (a!44 (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128))
                 #b01000
                 (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128))
                      #b01001
                      a!43))))
(let ((a!6 (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128))
                #x00000006
                (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128))
                     #x00000007
                     a!5)))
      (a!15 (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128))
                 #b0000110
                 (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128))
                      #b0000111
                      a!14)))
      (a!24 (concat a!23
                    (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128)) #b1 #b0)))
      (a!45 (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128))
                 #b00110
                 (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128))
                      #b00111
                      a!44))))
(let ((a!7 (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128))
                #x00000004
                (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128))
                     #x00000005
                     a!6)))
      (a!16 (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128))
                 #b0000100
                 (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128))
                      #b0000101
                      a!15)))
      (a!25 (concat a!24
                    (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128)) #b1 #b0)))
      (a!46 (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128))
                 #b00100
                 (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128))
                      #b00101
                      a!45))))
(let ((a!8 (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128))
                #x00000002
                (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128))
                     #x00000003
                     a!7)))
      (a!17 (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128))
                 #b0000010
                 (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128))
                      #b0000011
                      a!16)))
      (a!26 (concat a!25
                    (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128)) #b1 #b0)))
      (a!47 (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128))
                 #b00010
                 (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128))
                      #b00011
                      a!46))))
(let ((a!9 (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128))
                #x00000000
                (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128))
                     #x00000001
                     a!8)))
      (a!18 (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128))
                 #b0000000
                 (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128))
                      #b0000001
                      a!17)))
      (a!27 (concat a!26
                    (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128)) #b1 #b0)))
      (a!48 (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128))
                 #b00000
                 (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128))
                      #b00001
                      a!47))))
(let ((a!10 (= #b000000000000000000000000000000000000000000000000000000000
               ((_ extract 63 7)
                 (bvadd #x0000000000000002 (concat #x00000000 a!9)))))
      (a!28 (concat a!27
                    (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128)) #b1 #b0)))
      (a!50 (not (bvule (bvadd #xff008821 ((_ extract 31 0) mem_c0000f50_66_64))
                        a!9))))
(let ((a!29 (concat a!28
                    (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!30 (concat a!29
                    (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!31 (concat a!30
                    (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!32 (concat a!31
                    (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!33 (concat a!32
                    (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!34 (concat a!33
                    (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!35 (concat a!34
                    (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!36 ((_ extract 63 5)
              (bvadd #x0000000000000001 (concat #x00000000 (ite a!19 a!35 a!9))))))
  (and a!1
       a!10
       (bvule (bvadd #b0000010 a!18) #b1111000)
       (= #b00000000000000000000000000000000000000000000000000000000000 a!36)
       (bvule (bvadd #b00001 (ite a!19 a!40 a!48)) #b10000)
       (or (= #x0a ((_ extract 7 0) mem_ff77df_82_128))
           (= #x0a ((_ extract 15 8) mem_ff77df_82_128))
           (= #x0a ((_ extract 23 16) mem_ff77df_82_128))
           (= #x0a ((_ extract 31 24) mem_ff77df_82_128))
           (= #x0a ((_ extract 39 32) mem_ff77df_82_128))
           (= #x0a ((_ extract 47 40) mem_ff77df_82_128))
           (= #x0a ((_ extract 55 48) mem_ff77df_82_128))
           (= #x0a ((_ extract 63 56) mem_ff77df_82_128))
           (= #x0a ((_ extract 71 64) mem_ff77df_82_128))
           (= #x0a ((_ extract 79 72) mem_ff77df_82_128))
           (= #x0a ((_ extract 87 80) mem_ff77df_82_128))
           (= #x0a ((_ extract 95 88) mem_ff77df_82_128))
           (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
           (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
           (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
           (= #x0a ((_ extract 119 112) mem_ff77df_82_128)))
       (or a!49 a!50)
       (= #x0000000000ff77df mem_c0000f48_65_64))))))))))))))))))))
(minimize (let ((a!1 (and (not (= #x0a ((_ extract 7 0) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 15 8) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 23 16) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 31 24) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 39 32) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 47 40) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 55 48) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 63 56) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 71 64) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 79 72) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 87 80) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 95 88) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 103 96) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 111 104) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 119 112) mem_ff77df_82_128)))
                (not (= #x0a ((_ extract 127 120) mem_ff77df_82_128)))))
      (a!2 (concat #x0000
                   (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                        #b1
                        #b0)))
      (a!18 (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                 #x0000000e
                 (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                      #x0000000f
                      #x00000040))))
(let ((a!3 (concat a!2
                   (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                        #b1
                        #b0)))
      (a!19 (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
                 #x0000000c
                 (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                      #x0000000d
                      a!18))))
(let ((a!4 (concat a!3
                   (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                        #b1
                        #b0)))
      (a!20 (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128))
                 #x0000000a
                 (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128))
                      #x0000000b
                      a!19))))
(let ((a!5 (concat a!4
                   (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128)) #b1 #b0)))
      (a!21 (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128))
                 #x00000008
                 (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128))
                      #x00000009
                      a!20))))
(let ((a!6 (concat a!5
                   (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128)) #b1 #b0)))
      (a!22 (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128))
                 #x00000006
                 (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128))
                      #x00000007
                      a!21))))
(let ((a!7 (concat a!6
                   (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128)) #b1 #b0)))
      (a!23 (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128))
                 #x00000004
                 (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128))
                      #x00000005
                      a!22))))
(let ((a!8 (concat a!7
                   (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128)) #b1 #b0)))
      (a!24 (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128))
                 #x00000002
                 (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128))
                      #x00000003
                      a!23))))
(let ((a!9 (concat a!8
                   (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128)) #b1 #b0)))
      (a!25 (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128))
                 #x00000000
                 (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128))
                      #x00000001
                      a!24))))
(let ((a!10 (concat a!9
                    (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!11 (concat a!10
                    (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!12 (concat a!11
                    (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!13 (concat a!12
                    (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!14 (concat a!13
                    (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!15 (concat a!14
                    (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!16 (concat a!15
                    (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128)) #b1 #b0))))
(let ((a!17 (concat a!16
                    (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128)) #b1 #b0))))
  (ite (= (concat #x00000000 (ite a!1 a!17 a!25))
          (bvmul #xffffffffffffffff mem_c0000f48_65_64))
       (bvadd mem_c0000f50_66_64 (bvmul #xffffffffffffffff mem_c0000f48_65_64))
       (bvadd #x0000000000000001 (concat #x00000000 (ite a!1 a!17 a!25)))))))))))))))))))))
(check-sat)