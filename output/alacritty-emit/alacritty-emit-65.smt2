(declare-fun mem_c0000f48_65_64 () (_ BitVec 64))
(declare-fun mem_c0000f50_66_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000ff77df mem_c0000f50_66_64))
     (= #b00000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 5) (bvadd #xffffffffff008821 mem_c0000f50_66_64)))
     (= #b000000000000000000000000000000000000000000000000000000000
        ((_ extract 63 7) (bvadd #xffffffffff008822 mem_c0000f50_66_64)))
     (bvule (bvadd #b00001 ((_ extract 4 0) mem_c0000f50_66_64)) #b10000)
     (bvule (bvadd #b0100010 ((_ extract 6 0) mem_c0000f50_66_64)) #b1111000)
     (= #x0000000000ff77df mem_c0000f48_65_64)))
(minimize (bvadd mem_c0000f50_66_64 (bvmul #xffffffffffffffff mem_c0000f48_65_64)))
(check-sat)