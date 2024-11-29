(declare-fun args_3_8 () (_ BitVec 8))
(assert (and (bvule #b000000010 (concat args_3_8 #b0))))
(maximize (bvadd #x00000000004e6fe0
       (bvshl (concat #x00000000000000 args_3_8) #x0000000000000001)))
(check-sat)