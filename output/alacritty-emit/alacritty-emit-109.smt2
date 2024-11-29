(declare-fun mem_ffffff001fffffe0_146_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_ffffff001fffffe0_146_64))))
(minimize (bvadd mem_ffffff001fffffe0_146_64 #x0000000000000010))
(check-sat)