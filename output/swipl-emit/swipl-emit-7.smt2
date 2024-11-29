(declare-fun syscall_stub_readlink_407_64 () (_ BitVec 64))
(assert (and (not (bvsge #x00000000 ((_ extract 31 0) syscall_stub_readlink_407_64)))))
(maximize (bvadd #x07fffffffffeadd0
       ((_ sign_extend 32) ((_ extract 31 0) syscall_stub_readlink_407_64))))
(check-sat)