(declare-fun mem_c0003f38_382_64 () (_ BitVec 64))
(assert and)
(minimize (bvadd mem_c0003f38_382_64 #x0000000000000008))
(check-sat)