(declare-fun mem_ffffff001fffffe0_146_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffff001fffffe0_146_64))))
(define-fun goal () (_ BitVec 64) (bvadd mem_ffffff001fffffe0_146_64 #x0000000000000010)) 
(maximize goal)
(check-sat)