(declare-fun mem_7fffffffffee5d4_316_744 () (_ BitVec 744))
(declare-fun strlen_931_64 () (_ BitVec 64))
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
                    ((_ extract 551 544) mem_7fffffffffee5d4_316_744)))
      (a!15 (concat (concat (concat ((_ extract 495 488)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 503 496)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 511 504) mem_7fffffffffee5d4_316_744))
                    ((_ extract 519 512) mem_7fffffffffee5d4_316_744)))
      (a!17 (concat (concat (concat ((_ extract 463 456)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 471 464)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 479 472) mem_7fffffffffee5d4_316_744))
                    ((_ extract 487 480) mem_7fffffffffee5d4_316_744)))
      (a!19 (concat (concat (concat ((_ extract 431 424)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 439 432)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 447 440) mem_7fffffffffee5d4_316_744))
                    ((_ extract 455 448) mem_7fffffffffee5d4_316_744)))
      (a!21 (concat (concat (concat ((_ extract 399 392)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 407 400)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 415 408) mem_7fffffffffee5d4_316_744))
                    ((_ extract 423 416) mem_7fffffffffee5d4_316_744)))
      (a!23 (concat (concat (concat ((_ extract 367 360)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 375 368)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 383 376) mem_7fffffffffee5d4_316_744))
                    ((_ extract 391 384) mem_7fffffffffee5d4_316_744)))
      (a!25 (concat (concat (concat ((_ extract 335 328)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 343 336)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 351 344) mem_7fffffffffee5d4_316_744))
                    ((_ extract 359 352) mem_7fffffffffee5d4_316_744)))
      (a!27 (concat (concat (concat ((_ extract 303 296)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 311 304)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 319 312) mem_7fffffffffee5d4_316_744))
                    ((_ extract 327 320) mem_7fffffffffee5d4_316_744)))
      (a!29 (concat (concat (concat ((_ extract 271 264)
                                      mem_7fffffffffee5d4_316_744)
                                    ((_ extract 279 272)
                                      mem_7fffffffffee5d4_316_744))
                            ((_ extract 287 280) mem_7fffffffffee5d4_316_744))
                    ((_ extract 295 288) mem_7fffffffffee5d4_316_744))))
(let ((a!2 (bvnot (bvor (bvnot (bvadd #xfefefeff a!1)) a!1 #x7f7f7f7f)))
      (a!4 (bvnot (bvor (bvnot (bvadd #xfefefeff a!3)) a!3 #x7f7f7f7f)))
      (a!6 (bvnot (bvor (bvnot (bvadd #xfefefeff a!5)) a!5 #x7f7f7f7f)))
      (a!8 (bvnot (bvor (bvnot (bvadd #xfefefeff a!7)) a!7 #x7f7f7f7f)))
      (a!10 (bvnot (bvor (bvnot (bvadd #xfefefeff a!9)) a!9 #x7f7f7f7f)))
      (a!12 (bvnot (bvor (bvnot (bvadd #xfefefeff a!11)) a!11 #x7f7f7f7f)))
      (a!14 (bvnot (bvor (bvnot (bvadd #xfefefeff a!13)) a!13 #x7f7f7f7f)))
      (a!16 (bvnot (bvor (bvnot (bvadd #xfefefeff a!15)) a!15 #x7f7f7f7f)))
      (a!18 (bvnot (bvor (bvnot (bvadd #xfefefeff a!17)) a!17 #x7f7f7f7f)))
      (a!20 (bvnot (bvor (bvnot (bvadd #xfefefeff a!19)) a!19 #x7f7f7f7f)))
      (a!22 (bvnot (bvor (bvnot (bvadd #xfefefeff a!21)) a!21 #x7f7f7f7f)))
      (a!24 (bvnot (bvor (bvnot (bvadd #xfefefeff a!23)) a!23 #x7f7f7f7f)))
      (a!26 (bvnot (bvor (bvnot (bvadd #xfefefeff a!25)) a!25 #x7f7f7f7f)))
      (a!28 (bvnot (bvor (bvnot (bvadd #xfefefeff a!27)) a!27 #x7f7f7f7f)))
      (a!30 (bvnot (bvor (bvnot (bvadd #xfefefeff a!29)) a!29 #x7f7f7f7f))))
  (and (= #x0000000000000000 strlen_931_64)
       (= #x00000000 a!2)
       (= #x00000000 a!4)
       (= #x00000000 a!6)
       (= #x00000000 a!8)
       (= #x00000000 a!10)
       (= #x00000000 a!12)
       (= #x00000000 a!14)
       (= #x00000000 a!16)
       (= #x00000000 a!18)
       (= #x00000000 a!20)
       (= #x00000000 a!22)
       (= #x00000000 a!24)
       (= #x00000000 a!26)
       (= #x00000000 a!28)
       (not (= #x00000000 a!30))))))
(define-fun goal () (_ BitVec 64) (let ((a!1 (bvor (bvnot (bvadd #xff
                               ((_ extract 295 288) mem_7fffffffffee5d4_316_744)))
                 ((_ extract 295 288) mem_7fffffffffee5d4_316_744)
                 #x7f))
      (a!2 ((_ extract 15 8)
             (bvadd #xfeff
                    (concat ((_ extract 287 280) mem_7fffffffffee5d4_316_744)
                            ((_ extract 295 288) mem_7fffffffffee5d4_316_744)))))
      (a!5 (concat (concat (concat ((_ extract 271 264)
                                     mem_7fffffffffee5d4_316_744)
                                   ((_ extract 279 272)
                                     mem_7fffffffffee5d4_316_744))
                           ((_ extract 287 280) mem_7fffffffffee5d4_316_744))
                   ((_ extract 295 288) mem_7fffffffffee5d4_316_744))))
(let ((a!3 (= #x00
              (bvnot (bvor (bvnot a!2)
                           ((_ extract 287 280) mem_7fffffffffee5d4_316_744)
                           #x7f))))
      (a!6 (bvor (bvnot ((_ extract 23 16) (bvadd #xfefefeff a!5)))
                 ((_ extract 279 272) mem_7fffffffffee5d4_316_744)
                 #x7f)))
(let ((a!4 (ite (and (= #x00 (bvnot a!1)) a!3)
                #x07fffffffffee612
                #x07fffffffffee610))
      (a!7 (ite (and (= #x00 (bvnot a!1)) a!3) (bvnot a!6) (bvnot a!1))))
(let ((a!8 (concat #b000000000000000000000000000000000000000000000000000000000000000
                   (ite (bvule a!7 (bvmul #x02 a!7)) #b0 #b1))))
  (bvadd #xfffffffffffffffd a!4 (bvmul #xffffffffffffffff a!8))))))) 
(maximize goal)
(check-sat)