(declare-fun mem_c0001018_75_64 () (_ BitVec 64))
(assert (let ((a!1 (or (not (= #b000000000000000000000000000000000000000
                       ((_ extract 63 25) mem_c0001018_75_64)))
               (not (bvule ((_ extract 24 0) mem_c0001018_75_64)
                           #b1001100010110100111111111)))))
  (and a!1 (not (bvule #x0000000001317768 mem_c0001018_75_64)))))
(define-fun goal () (_ BitVec 64) (bvadd mem_c0001018_75_64 #x0000000000000020)) 
(minimize goal)
(check-sat)