(declare-fun mem_ff77df_82_128 () (_ BitVec 128))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(assert (let ((a!1 (ite (= #x0a ((_ extract 119 112) mem_ff77df_82_128))
                #x0000000e
                (ite (= #x0a ((_ extract 127 120) mem_ff77df_82_128))
                     #x0000000f
                     #x00000040))))
(let ((a!2 (ite (= #x0a ((_ extract 103 96) mem_ff77df_82_128))
                #x0000000c
                (ite (= #x0a ((_ extract 111 104) mem_ff77df_82_128))
                     #x0000000d
                     a!1))))
(let ((a!3 (ite (= #x0a ((_ extract 87 80) mem_ff77df_82_128))
                #x0000000a
                (ite (= #x0a ((_ extract 95 88) mem_ff77df_82_128))
                     #x0000000b
                     a!2))))
(let ((a!4 (ite (= #x0a ((_ extract 71 64) mem_ff77df_82_128))
                #x00000008
                (ite (= #x0a ((_ extract 79 72) mem_ff77df_82_128))
                     #x00000009
                     a!3))))
(let ((a!5 (ite (= #x0a ((_ extract 55 48) mem_ff77df_82_128))
                #x00000006
                (ite (= #x0a ((_ extract 63 56) mem_ff77df_82_128))
                     #x00000007
                     a!4))))
(let ((a!6 (ite (= #x0a ((_ extract 39 32) mem_ff77df_82_128))
                #x00000004
                (ite (= #x0a ((_ extract 47 40) mem_ff77df_82_128))
                     #x00000005
                     a!5))))
(let ((a!7 (ite (= #x0a ((_ extract 23 16) mem_ff77df_82_128))
                #x00000002
                (ite (= #x0a ((_ extract 31 24) mem_ff77df_82_128))
                     #x00000003
                     a!6))))
(let ((a!8 (ite (= #x0a ((_ extract 7 0) mem_ff77df_82_128))
                #x00000000
                (ite (= #x0a ((_ extract 15 8) mem_ff77df_82_128))
                     #x00000001
                     a!7))))
  (and (= #x0000000000ff77df mem_c0000f48_65_64)
       (not (= #x0000000000ff77df mem_c0000f50_66_64))
       (= #b000000000000000000000000000000000000000000000000000000000
          ((_ extract 63 7) (bvadd #xffffffffff008822 mem_c0000f50_66_64)))
       (bvule (bvadd #xff008821 ((_ extract 31 0) mem_c0000f50_66_64)) a!8)
       (bvule (bvadd #b0100010 ((_ extract 6 0) mem_c0000f50_66_64)) #b1111000)
       (= #x000000000000000
          ((_ extract 63 4) (bvadd #xffffffffff008821 mem_c0000f50_66_64)))
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
           (= #x0a ((_ extract 119 112) mem_ff77df_82_128)))))))))))))
(minimize (bvadd mem_c0000f50_66_64 (bvmul #xffffffffffffffff mem_c0000f48_65_64)))
(check-sat)