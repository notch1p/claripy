(declare-fun mem_7fffffffffefab0_117_64 () (_ BitVec 64))
(assert (and (not (= #x000000000000000 ((_ extract 63 4) mem_7fffffffffefab0_117_64)))))
(maximize mem_7fffffffffefab0_117_64)
(check-sat)