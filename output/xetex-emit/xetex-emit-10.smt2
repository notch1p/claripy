(declare-fun strlen_85_64 () (_ BitVec 64))
(declare-fun mem_c0012b40_72_16 () (_ BitVec 16))
(declare-fun args_0_8 () (_ BitVec 8))
(declare-fun strlen_73_64 () (_ BitVec 64))
(declare-fun mem_c0012b42_76_1016 () (_ BitVec 1016))
(declare-fun strlen_70_64 () (_ BitVec 64))
(declare-fun strlen_95_64 () (_ BitVec 64))
(assert (let ((a!1 (bvule (ite (= #xffffffffffffffff strlen_70_64)
                       #b01
                       (bvadd #b01 ((_ extract 1 0) strlen_70_64)))
                  #b10))
      (a!2 (ite (or (= #x0000000000000000 strlen_73_64)
                    (= #x0000000000000001 strlen_73_64))
                args_0_8
                ((_ extract 15 8) mem_c0012b40_72_16)))
      (a!3 (ite (= #x00 ((_ extract 567 560) mem_c0012b42_76_1016))
                #x00000000c0012b7a
                (ite (= #x00 ((_ extract 559 552) mem_c0012b42_76_1016))
                     #x00000000c0012b7b
                     #x0000000000000000)))
      (a!33 (ite (and (= #xfffffffd ((_ extract 31 0) strlen_85_64))
                      (= #b1 ((_ extract 31 31) strlen_85_64)))
                 #b001
                 (bvadd #b011 ((_ extract 2 0) strlen_85_64))))
      (a!34 (ite (= #x00 ((_ extract 919 912) mem_c0012b42_76_1016))
                 #x00000000c0012b4e
                 (ite (= #x00 ((_ extract 911 904) mem_c0012b42_76_1016))
                      #x00000000c0012b4f
                      #x00000000c0012b52)))
      (a!42 (or (= #xffffffffffffffff strlen_70_64)
                (= #b00000000000000000000000000000000000000000000000000000000000000
                   ((_ extract 63 2) (bvadd #x0000000000000001 strlen_70_64)))))
      (a!44 (concat (concat (concat ((_ extract 31 31) strlen_85_64)
                                    ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64)))
      (a!55 (or (not (= #b1 ((_ extract 31 31) strlen_85_64)))
                (not (= #xfffffffd ((_ extract 31 0) strlen_85_64))))))
(let ((a!4 (ite (= #x00 ((_ extract 583 576) mem_c0012b42_76_1016))
                #x00000000c0012b78
                (ite (= #x00 ((_ extract 575 568) mem_c0012b42_76_1016))
                     #x00000000c0012b79
                     a!3)))
      (a!35 (ite (= #x00 ((_ extract 935 928) mem_c0012b42_76_1016))
                 #x00000000c0012b4c
                 (ite (= #x00 ((_ extract 927 920) mem_c0012b42_76_1016))
                      #x00000000c0012b4d
                      a!34)))
      (a!43 (or (= #x00
                   (ite (= #x0000000000000001 strlen_73_64)
                        #x00
                        ((_ extract 7 0) mem_c0012b40_72_16)))
                (= #x00 ((_ extract 607 600) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 631 624) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 647 640) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 655 648) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 559 552) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 663 656) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 671 664) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 679 672) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 687 680) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 695 688) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 703 696) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 711 704) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 719 712) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 727 720) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 735 728) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 743 736) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 751 744) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 791 784) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 799 792) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 807 800) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 767 760) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 759 752) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 783 776) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 775 768) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 815 808) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 823 816) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 831 824) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 839 832) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 847 840) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 855 848) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 863 856) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 871 864) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 879 872) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 903 896) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 887 880) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 895 888) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 911 904) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 919 912) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 927 920) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 935 928) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 943 936) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 951 944) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 959 952) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 967 960) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 975 968) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 983 976) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 991 984) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 999 992) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 1007 1000) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 1015 1008) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 639 632) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 591 584) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 575 568) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 583 576) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 567 560) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 623 616) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 615 608) mem_c0012b42_76_1016))
                (= #x00 ((_ extract 599 592) mem_c0012b42_76_1016))
                (= #x00 a!2)))
      (a!45 (concat (concat (concat a!44 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!5 (ite (= #x00 ((_ extract 599 592) mem_c0012b42_76_1016))
                #x00000000c0012b76
                (ite (= #x00 ((_ extract 591 584) mem_c0012b42_76_1016))
                     #x00000000c0012b77
                     a!4)))
      (a!36 (ite (= #x00 ((_ extract 951 944) mem_c0012b42_76_1016))
                 #x00000000c0012b4a
                 (ite (= #x00 ((_ extract 943 936) mem_c0012b42_76_1016))
                      #x00000000c0012b4b
                      a!35)))
      (a!46 (concat (concat (concat a!45 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!6 (ite (= #x00 ((_ extract 615 608) mem_c0012b42_76_1016))
                #x00000000c0012b74
                (ite (= #x00 ((_ extract 607 600) mem_c0012b42_76_1016))
                     #x00000000c0012b75
                     a!5)))
      (a!37 (ite (= #x00 ((_ extract 967 960) mem_c0012b42_76_1016))
                 #x00000000c0012b48
                 (ite (= #x00 ((_ extract 959 952) mem_c0012b42_76_1016))
                      #x00000000c0012b49
                      a!36)))
      (a!47 (concat (concat (concat a!46 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!7 (ite (= #x00 ((_ extract 631 624) mem_c0012b42_76_1016))
                #x00000000c0012b72
                (ite (= #x00 ((_ extract 623 616) mem_c0012b42_76_1016))
                     #x00000000c0012b73
                     a!6)))
      (a!38 (ite (= #x00 ((_ extract 983 976) mem_c0012b42_76_1016))
                 #x00000000c0012b46
                 (ite (= #x00 ((_ extract 975 968) mem_c0012b42_76_1016))
                      #x00000000c0012b47
                      a!37)))
      (a!48 (concat (concat (concat a!47 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!8 (ite (= #x00 ((_ extract 647 640) mem_c0012b42_76_1016))
                #x00000000c0012b70
                (ite (= #x00 ((_ extract 639 632) mem_c0012b42_76_1016))
                     #x00000000c0012b71
                     a!7)))
      (a!39 (ite (= #x00 ((_ extract 999 992) mem_c0012b42_76_1016))
                 #x00000000c0012b44
                 (ite (= #x00 ((_ extract 991 984) mem_c0012b42_76_1016))
                      #x00000000c0012b45
                      a!38)))
      (a!49 (concat (concat (concat a!48 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!9 (ite (= #x00 ((_ extract 663 656) mem_c0012b42_76_1016))
                #x00000000c0012b6e
                (ite (= #x00 ((_ extract 655 648) mem_c0012b42_76_1016))
                     #x00000000c0012b6f
                     a!8)))
      (a!40 (ite (= #x00 ((_ extract 1015 1008) mem_c0012b42_76_1016))
                 #x00000000c0012b42
                 (ite (= #x00 ((_ extract 1007 1000) mem_c0012b42_76_1016))
                      #x00000000c0012b43
                      a!39)))
      (a!50 (concat (concat (concat a!49 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!10 (ite (= #x00 ((_ extract 679 672) mem_c0012b42_76_1016))
                 #x00000000c0012b6c
                 (ite (= #x00 ((_ extract 671 664) mem_c0012b42_76_1016))
                      #x00000000c0012b6d
                      a!9)))
      (a!41 (ite (= #x00
                    (ite (= #x0000000000000001 strlen_73_64)
                         #x00
                         ((_ extract 7 0) mem_c0012b40_72_16)))
                 #x00000000c0012b41
                 a!40))
      (a!51 (concat (concat (concat a!50 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!11 (ite (= #x00 ((_ extract 695 688) mem_c0012b42_76_1016))
                 #x00000000c0012b6a
                 (ite (= #x00 ((_ extract 687 680) mem_c0012b42_76_1016))
                      #x00000000c0012b6b
                      a!10)))
      (a!52 (concat (concat (concat a!51 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!12 (ite (= #x00 ((_ extract 711 704) mem_c0012b42_76_1016))
                 #x00000000c0012b68
                 (ite (= #x00 ((_ extract 703 696) mem_c0012b42_76_1016))
                      #x00000000c0012b69
                      a!11)))
      (a!53 (concat (concat (concat a!52 ((_ extract 31 31) strlen_85_64))
                            ((_ extract 31 31) strlen_85_64))
                    ((_ extract 31 31) strlen_85_64))))
(let ((a!13 (ite (= #x00 ((_ extract 727 720) mem_c0012b42_76_1016))
                 #x00000000c0012b66
                 (ite (= #x00 ((_ extract 719 712) mem_c0012b42_76_1016))
                      #x00000000c0012b67
                      a!12)))
      (a!54 (bvadd #x0000000000000003
                   (concat (concat a!53 ((_ extract 31 31) strlen_85_64))
                           ((_ extract 31 0) strlen_85_64)))))
(let ((a!14 (ite (= #x00 ((_ extract 743 736) mem_c0012b42_76_1016))
                 #x00000000c0012b64
                 (ite (= #x00 ((_ extract 735 728) mem_c0012b42_76_1016))
                      #x00000000c0012b65
                      a!13))))
(let ((a!15 (ite (= #x00 ((_ extract 759 752) mem_c0012b42_76_1016))
                 #x00000000c0012b62
                 (ite (= #x00 ((_ extract 751 744) mem_c0012b42_76_1016))
                      #x00000000c0012b63
                      a!14))))
(let ((a!16 (ite (= #x00 ((_ extract 775 768) mem_c0012b42_76_1016))
                 #x00000000c0012b60
                 (ite (= #x00 ((_ extract 767 760) mem_c0012b42_76_1016))
                      #x00000000c0012b61
                      a!15))))
(let ((a!17 (ite (= #x00 ((_ extract 791 784) mem_c0012b42_76_1016))
                 #x00000000c0012b5e
                 (ite (= #x00 ((_ extract 783 776) mem_c0012b42_76_1016))
                      #x00000000c0012b5f
                      a!16))))
(let ((a!18 (ite (= #x00 ((_ extract 807 800) mem_c0012b42_76_1016))
                 #x00000000c0012b5c
                 (ite (= #x00 ((_ extract 799 792) mem_c0012b42_76_1016))
                      #x00000000c0012b5d
                      a!17))))
(let ((a!19 (ite (= #x00 ((_ extract 823 816) mem_c0012b42_76_1016))
                 #x00000000c0012b5a
                 (ite (= #x00 ((_ extract 815 808) mem_c0012b42_76_1016))
                      #x00000000c0012b5b
                      a!18))))
(let ((a!20 (ite (= #x00 ((_ extract 839 832) mem_c0012b42_76_1016))
                 #x00000000c0012b58
                 (ite (= #x00 ((_ extract 831 824) mem_c0012b42_76_1016))
                      #x00000000c0012b59
                      a!19))))
(let ((a!21 (ite (= #x00 ((_ extract 855 848) mem_c0012b42_76_1016))
                 #x00000000c0012b56
                 (ite (= #x00 ((_ extract 847 840) mem_c0012b42_76_1016))
                      #x00000000c0012b57
                      a!20))))
(let ((a!22 (ite (= #x00 ((_ extract 871 864) mem_c0012b42_76_1016))
                 #x00000000c0012b54
                 (ite (= #x00 ((_ extract 863 856) mem_c0012b42_76_1016))
                      #x00000000c0012b55
                      a!21))))
(let ((a!23 (ite (= #x00 ((_ extract 887 880) mem_c0012b42_76_1016))
                 #x00000000c0012b52
                 (ite (= #x00 ((_ extract 879 872) mem_c0012b42_76_1016))
                      #x00000000c0012b53
                      a!22))))
(let ((a!24 (ite (= #x00 ((_ extract 903 896) mem_c0012b42_76_1016))
                 #x00000000c0012b50
                 (ite (= #x00 ((_ extract 895 888) mem_c0012b42_76_1016))
                      #x00000000c0012b51
                      a!23))))
(let ((a!25 (ite (= #x00 ((_ extract 919 912) mem_c0012b42_76_1016))
                 #x00000000c0012b4e
                 (ite (= #x00 ((_ extract 911 904) mem_c0012b42_76_1016))
                      #x00000000c0012b4f
                      a!24))))
(let ((a!26 (ite (= #x00 ((_ extract 935 928) mem_c0012b42_76_1016))
                 #x00000000c0012b4c
                 (ite (= #x00 ((_ extract 927 920) mem_c0012b42_76_1016))
                      #x00000000c0012b4d
                      a!25))))
(let ((a!27 (ite (= #x00 ((_ extract 951 944) mem_c0012b42_76_1016))
                 #x00000000c0012b4a
                 (ite (= #x00 ((_ extract 943 936) mem_c0012b42_76_1016))
                      #x00000000c0012b4b
                      a!26))))
(let ((a!28 (ite (= #x00 ((_ extract 967 960) mem_c0012b42_76_1016))
                 #x00000000c0012b48
                 (ite (= #x00 ((_ extract 959 952) mem_c0012b42_76_1016))
                      #x00000000c0012b49
                      a!27))))
(let ((a!29 (ite (= #x00 ((_ extract 983 976) mem_c0012b42_76_1016))
                 #x00000000c0012b46
                 (ite (= #x00 ((_ extract 975 968) mem_c0012b42_76_1016))
                      #x00000000c0012b47
                      a!28))))
(let ((a!30 (ite (= #x00 ((_ extract 999 992) mem_c0012b42_76_1016))
                 #x00000000c0012b44
                 (ite (= #x00 ((_ extract 991 984) mem_c0012b42_76_1016))
                      #x00000000c0012b45
                      a!29))))
(let ((a!31 (ite (= #x00 ((_ extract 1015 1008) mem_c0012b42_76_1016))
                 #x00000000c0012b42
                 (ite (= #x00 ((_ extract 1007 1000) mem_c0012b42_76_1016))
                      #x00000000c0012b43
                      a!30))))
(let ((a!32 (ite (= #x00
                    (ite (= #x0000000000000001 strlen_73_64)
                         #x00
                         ((_ extract 7 0) mem_c0012b40_72_16)))
                 #x00000000c0012b41
                 a!31)))
  (and (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
          (bvadd #x07fffffffffeffd0 strlen_70_64))
       a!1
       (= (ite (= #x00 args_0_8) #x07fffffffffeffd0 #x07fffffffffeffd1)
          (bvadd #x07fffffffffeffd0 strlen_73_64))
       (= #b00000000000000000000000000000000000000000000000000000000000000
          ((_ extract 63 2) (bvadd #x0000000000000001 strlen_73_64)))
       (bvule (bvadd #b01 ((_ extract 1 0) strlen_73_64)) #b10)
       (bvule strlen_73_64 #xfffffffffffffffe)
       (not (= #x2e a!2))
       (not (= #x2f a!2))
       (= (ite (= #x00 a!2) #x00000000c0012b40 a!32)
          (bvadd #x00000000c0012b40 strlen_85_64))
       (bvule a!33 #b100)
       (= (ite (= #x00 a!2) #x00000000c0012b40 a!41)
          (bvadd #x00000000c0012b40 strlen_95_64))
       a!42
       a!43
       (or (= #b0000000000000000000000000000000000000000000000000000000000000
              ((_ extract 63 3) a!54))
           (not a!55))))))))))))))))))))))))))))))))))
(define-fun goal () (_ BitVec 64) (bvadd strlen_95_64 #x0000000000000001)) 
(maximize goal)
(check-sat)