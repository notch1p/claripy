(declare-fun args_1_8 () (_ BitVec 8))
(assert (and (not (= #x00 args_1_8))))
(minimize (bvadd #x00000000004e6fe0
       (bvshl (concat #x00000000000000 args_1_8) #x0000000000000001)))
(check-sat)