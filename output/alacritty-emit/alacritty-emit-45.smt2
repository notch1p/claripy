(declare-fun mem_ffffffc000000000_115_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffffc000000000_115_64))))
(define-fun goal () (_ BitVec 64) (bvadd mem_ffffffc000000000_115_64 #x0000000000000010)) 
(minimize goal)
(check-sat)