(declare-fun mem_7fffffffffee5d4_316_744 () (_ BitVec 744))
(declare-fun strlen_560_64 () (_ BitVec 64))
(assert (let ((a!1 (concat (concat (concat ((_ extract 687 680)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 695 688)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 703 696) mem_7fffffffffee5d4_316_744))
                   ((_ extract 711 704) mem_7fffffffffee5d4_316_744)))
      (a!3 (concat (concat (concat ((_ extract 719 712)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 727 720)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 735 728) mem_7fffffffffee5d4_316_744))
                   ((_ extract 743 736) mem_7fffffffffee5d4_316_744)))
      (a!5 (concat (concat (concat ((_ extract 655 648)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 663 656)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 671 664) mem_7fffffffffee5d4_316_744))
                   ((_ extract 679 672) mem_7fffffffffee5d4_316_744)))
      (a!7 (concat (concat (concat ((_ extract 623 616)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 631 624)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 639 632) mem_7fffffffffee5d4_316_744))
                   ((_ extract 647 640) mem_7fffffffffee5d4_316_744)))
      (a!9 (concat (concat (concat ((_ extract 591 584)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 599 592)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 607 600) mem_7fffffffffee5d4_316_744))
                   ((_ extract 615 608) mem_7fffffffffee5d4_316_744)))
      (a!11 (concat (concat (concat ((_ extract 559 552)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 567 560)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 575 568) mem_7fffffffffee5d4_316_744))
                    ((_ extract 583 576) mem_7fffffffffee5d4_316_744)))
      (a!13 (concat (concat (concat ((_ extract 527 520)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 535 528)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 543 536) mem_7fffffffffee5d4_316_744))
                    ((_ extract 551 544) mem_7fffffffffee5d4_316_744))))
(let ((a!2 (bvnot (bvor (bvnot (bvadd #xfefefeff a!1)) a!1 #x7f7f7f7f)))
      (a!4 (bvnot (bvor (bvnot (bvadd #xfefefeff a!3)) a!3 #x7f7f7f7f)))
      (a!6 (bvnot (bvor (bvnot (bvadd #xfefefeff a!5)) a!5 #x7f7f7f7f)))
      (a!8 (bvnot (bvor (bvnot (bvadd #xfefefeff a!7)) a!7 #x7f7f7f7f)))
      (a!10 (bvnot (bvor (bvnot (bvadd #xfefefeff a!9)) a!9 #x7f7f7f7f)))
      (a!12 (bvnot (bvor (bvnot (bvadd #xfefefeff a!11)) a!11 #x7f7f7f7f)))
      (a!14 (bvnot (bvor (bvnot (bvadd #xfefefeff a!13)) a!13 #x7f7f7f7f))))
  (and (= #x0000000000000000 strlen_560_64)
       (= #x00000000 a!2)
       (= #x00000000 a!4)
       (= #x00000000 a!6)
       (= #x00000000 a!8)
       (= #x00000000 a!10)
       (= #x00000000 a!12)
       (not (= #x00000000 a!14))))))
(maximize (let ((a!1 (bvor (bvnot (bvadd #xff
                               ((_ extract 551 544) mem_7fffffffffee5d4_316_744)))
                 ((_ extract 551 544) mem_7fffffffffee5d4_316_744)
                 #x7f))
      (a!2 ((_ extract 15 8)
             (bvadd #xfeff
                    (concat ((_ extract 543 536) mem_7fffffffffee5d4_316_744)
                            ((_ extract 551 544) mem_7fffffffffee5d4_316_744)))))
      (a!5 (concat (concat (concat ((_ extract 527 520)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 535 528)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 543 536) mem_7fffffffffee5d4_316_744))
                   ((_ extract 551 544) mem_7fffffffffee5d4_316_744))))
(let ((a!3 (= #x00
              (bvnot (bvor (bvnot a!2)
                           ((_ extract 543 536) mem_7fffffffffee5d4_316_744)
                           #x7f))))
      (a!6 (bvor (bvnot ((_ extract 23 16) (bvadd #xfefefeff a!5)))
                 ((_ extract 535 528) mem_7fffffffffee5d4_316_744)
                 #x7f)))
(let ((a!4 (ite (and (= #x00 (bvnot a!1)) a!3)
                #x07fffffffffee5f2
                #x07fffffffffee5f0))
      (a!7 (ite (and (= #x00 (bvnot a!1)) a!3) (bvnot a!6) (bvnot a!1))))
(let ((a!8 (concat #b000000000000000000000000000000000000000000000000000000000000000
                   (ite (bvule a!7 (bvmul #x02 a!7)) #b0 #b1))))
  (bvadd #xfffffffffffffffd a!4 (bvmul #xffffffffffffffff a!8)))))))
(check-sat)