(declare-fun args_1_8 () (_ BitVec 8))
(assert (and (bvule #b000000010 (concat args_1_8 #b0))))
(define-fun goal () (_ BitVec 64) (bvadd #x00000000004e6fe0
       (bvshl (concat #x00000000000000 args_1_8) #x0000000000000001))) 
(maximize goal)
(check-sat)