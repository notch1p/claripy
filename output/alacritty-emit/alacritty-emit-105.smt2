(declare-fun mem_f000000000000000_141_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_f000000000000000_141_64))))
(minimize (bvadd mem_f000000000000000_141_64 #x0000000000000010))
(check-sat)