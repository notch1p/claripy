(declare-fun mem_7fffffffffef850_1753_256 () (_ BitVec 256))
(assert and)
(maximize (let ((a!1 (concat (concat (concat ((_ extract 135 128)
                                     mem_7fffffffffef850_1753_256)
                                   ((_ extract 143 136)
                                     mem_7fffffffffef850_1753_256))
                           ((_ extract 151 144) mem_7fffffffffef850_1753_256))
                   ((_ extract 159 152) mem_7fffffffffef850_1753_256))))
(let ((a!2 (concat (concat (concat a!1
                                   ((_ extract 167 160)
                                     mem_7fffffffffef850_1753_256))
                           ((_ extract 175 168) mem_7fffffffffef850_1753_256))
                   ((_ extract 183 176) mem_7fffffffffef850_1753_256))))
  (concat a!2 ((_ extract 191 184) mem_7fffffffffef850_1753_256)))))
(check-sat)