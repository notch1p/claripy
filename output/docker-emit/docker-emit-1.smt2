(declare-fun mem_7fffffffffefc68_57_64 () (_ BitVec 64))
(assert (and (bvule (bvadd #b1111111111111 ((_ extract 12 0) mem_7fffffffffefc68_57_64))
            #b1111111111110)
     (= #b000000000000000000000000000000000000000000000000000
        ((_ extract 63 13) (bvadd #xffffffffffffffff mem_7fffffffffefc68_57_64)))))
(maximize mem_7fffffffffefc68_57_64)
(check-sat)