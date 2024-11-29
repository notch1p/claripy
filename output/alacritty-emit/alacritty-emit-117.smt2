(declare-fun mem_fffffffffffffff1_152_64 () (_ BitVec 64))
(assert (and (not (= #x0000000000000000 mem_fffffffffffffff1_152_64))))
(minimize (bvadd mem_fffffffffffffff1_152_64 #x0000000000000010))
(check-sat)