(declare-fun strlen_66_64 () (_ BitVec 64))
(declare-fun args_1_8 () (_ BitVec 8))
(declare-fun strlen_64_64 () (_ BitVec 64))
(declare-fun args_0_8 () (_ BitVec 8))
(declare-fun strlen_63_64 () (_ BitVec 64))
(declare-fun strlen_61_64 () (_ BitVec 64))
(declare-fun strlen_59_64 () (_ BitVec 64))
(declare-fun strlen_57_64 () (_ BitVec 64))
(declare-fun args_3_8 () (_ BitVec 8))
(declare-fun args_2_8 () (_ BitVec 8))
(assert (let ((a!1 (not (= strlen_57_64
                   (bvadd #xffffffffffffffd4
                          (bvmul #xffffffffffffffff strlen_59_64)
                          (bvmul #xffffffffffffffff strlen_61_64)
                          (bvmul #xffffffffffffffff strlen_63_64))))))
  (and (= (ite (= #x00 args_2_8) #x07fffffffffeffd4 #x07fffffffffeffd5)
          (bvadd #x07fffffffffeffd4 strlen_61_64))
       (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
          (bvadd #x07fffffffffeffd0 strlen_57_64))
       (= (ite (= #x00 args_3_8) #x07fffffffffeffd6 #x07fffffffffeffd7)
          (bvadd #x07fffffffffeffd6 strlen_63_64))
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_59_64))
       a!1
       (= #b000000000000000000000000000000000000000000000000000000000
          ((_ extract 63 7)
            (bvadd #x000000000000004c
                   strlen_57_64
                   strlen_59_64
                   strlen_61_64
                   strlen_63_64)))
       (bvule (bvadd #b1001100
                     ((_ extract 6 0) strlen_57_64)
                     ((_ extract 6 0) strlen_59_64)
                     ((_ extract 6 0) strlen_61_64)
                     ((_ extract 6 0) strlen_63_64))
              #b1010000)
       (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
          (bvadd #x07fffffffffeffd0 strlen_64_64))
       (= #b00000000000000000000000000000000000000000000000000000000000000
          ((_ extract 63 2) (bvadd #x0000000000000001 strlen_64_64)))
       (bvule (bvadd #b01 ((_ extract 1 0) strlen_64_64)) #b10)
       (bvule strlen_64_64 #xfffffffffffffffe)
       (= (ite (= #x00 args_1_8) #x07fffffffffeffd2 #x07fffffffffeffd3)
          (bvadd #x07fffffffffeffd2 strlen_66_64)))))
(maximize (bvadd #x0000000000000001 strlen_66_64))
(check-sat)