(declare-fun mem_0_126_56 () (_ BitVec 56))
(declare-fun mem_ffffffffffffffff_125_8 () (_ BitVec 8))
(assert (and (or (not (= #x00 mem_ffffffffffffffff_125_8))
         (not (= #x00000000000000 mem_0_126_56)))))
(define-fun goal () (_ BitVec 64) (bvadd (concat mem_0_126_56 mem_ffffffffffffffff_125_8) #x0000000000000010)) 
(maximize goal)
(check-sat)