(declare-fun mem_c0000f80_112_128 () (_ BitVec 128))
(declare-fun mem_c0000f98_113_64 () (_ BitVec 64))
(assert (and (not (bvule mem_c0000f98_113_64 ((_ extract 127 64) mem_c0000f80_112_128)))))
(define-fun goal () (_ BitVec 64) ((_ extract 127 64) mem_c0000f80_112_128)) 
(minimize goal)
(check-sat)