(declare-fun mem_c0003f38_375_64 () (_ BitVec 64))
(assert (and true))
(define-fun goal () (_ BitVec 64) (bvadd mem_c0003f38_375_64 #x0000000000000008)) 
(maximize goal)
(check-sat)