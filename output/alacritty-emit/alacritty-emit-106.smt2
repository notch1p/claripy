(declare-fun mem_f000000000000000_141_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_f000000000000000_141_64))))
(define-fun goal () (_ BitVec 64) (bvadd mem_f000000000000000_141_64 #x0000000000000010)) 
(maximize goal)
(check-sat)