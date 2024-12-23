(declare-fun args_0_8 () (_ BitVec 8))
(declare-fun args_2_8 () (_ BitVec 8))
(declare-fun args_3_8 () (_ BitVec 8))
(assert (let ((a!1 (or (= #xa2 args_0_8)
               (not (or (= #x01 args_0_8)
                        (= #xff args_0_8)
                        (= #x5e args_0_8)
                        (= #xa3 args_0_8)
                        (= #x5d args_0_8)
                        (= #xa4 args_0_8)
                        (= #x5c args_0_8)
                        (= #xa5 args_0_8)
                        (= #x5b args_0_8)
                        (= #xa6 args_0_8)
                        (= #x5a args_0_8)
                        (= #xa7 args_0_8)
                        (= #x59 args_0_8)
                        (= #xa8 args_0_8)
                        (= #x58 args_0_8)
                        (= #xa9 args_0_8)
                        (= #x57 args_0_8)
                        (= #xaa args_0_8)
                        (= #x56 args_0_8)
                        (= #xab args_0_8)
                        (= #x55 args_0_8)
                        (= #xac args_0_8)
                        (= #x54 args_0_8)
                        (= #xad args_0_8)
                        (= #x53 args_0_8)
                        (= #xae args_0_8)
                        (= #x52 args_0_8)
                        (= #xaf args_0_8)
                        (= #x51 args_0_8)
                        (= #xb0 args_0_8)
                        (= #x50 args_0_8)
                        (= #xb1 args_0_8)
                        (= #x4f args_0_8)
                        (= #xb2 args_0_8)
                        (= #x4e args_0_8)
                        (= #xb3 args_0_8)
                        (= #x4d args_0_8)
                        (= #xb4 args_0_8)
                        (= #x4c args_0_8)
                        (= #xb5 args_0_8)
                        (= #x4b args_0_8)
                        (= #xb6 args_0_8)
                        (= #x4a args_0_8)
                        (= #xb7 args_0_8)
                        (= #x49 args_0_8)
                        (= #xb8 args_0_8)
                        (= #x48 args_0_8)
                        (= #xb9 args_0_8)
                        (= #x47 args_0_8)
                        (= #xba args_0_8)
                        (= #x46 args_0_8)
                        (= #xbb args_0_8)
                        (= #x45 args_0_8)
                        (= #xbc args_0_8)
                        (= #x44 args_0_8)
                        (= #xbd args_0_8)
                        (= #x43 args_0_8)
                        (= #xbe args_0_8)
                        (= #x42 args_0_8)
                        (= #xbf args_0_8)
                        (= #x41 args_0_8)
                        (= #xc0 args_0_8)
                        (= #x40 args_0_8)
                        (= #xc1 args_0_8)
                        (= #x3f args_0_8)
                        (= #xc2 args_0_8)
                        (= #x3e args_0_8)
                        (= #xc3 args_0_8)
                        (= #x3d args_0_8)
                        (= #xc4 args_0_8)
                        (= #x3c args_0_8)
                        (= #xc5 args_0_8)
                        (= #x3b args_0_8)
                        (= #xc6 args_0_8)
                        (= #x3a args_0_8)
                        (= #xc7 args_0_8)
                        (= #x39 args_0_8)
                        (= #xc8 args_0_8)
                        (= #x38 args_0_8)
                        (= #xc9 args_0_8)
                        (= #x37 args_0_8)
                        (= #xca args_0_8)
                        (= #x36 args_0_8)
                        (= #xcb args_0_8)
                        (= #x35 args_0_8)
                        (= #xcc args_0_8)
                        (= #x34 args_0_8)
                        (= #xcd args_0_8)
                        (= #x33 args_0_8)
                        (= #xce args_0_8)
                        (= #x32 args_0_8)
                        (= #xcf args_0_8)
                        (= #x31 args_0_8)
                        (= #xd0 args_0_8)
                        (= #x30 args_0_8)
                        (= #xd1 args_0_8)
                        (= #x2f args_0_8)
                        (= #xd2 args_0_8)
                        (= #x2e args_0_8)
                        (= #xd3 args_0_8)
                        (= #x2d args_0_8)
                        (= #xd4 args_0_8)
                        (= #x2c args_0_8)
                        (= #xd5 args_0_8)
                        (= #x2b args_0_8)
                        (= #xd6 args_0_8)
                        (= #x2a args_0_8)
                        (= #xd7 args_0_8)
                        (= #x29 args_0_8)
                        (= #xd8 args_0_8)
                        (= #x28 args_0_8)
                        (= #xd9 args_0_8)
                        (= #x27 args_0_8)
                        (= #xda args_0_8)
                        (= #x26 args_0_8)
                        (= #xdb args_0_8)
                        (= #x25 args_0_8)
                        (= #xdc args_0_8)
                        (= #x24 args_0_8)
                        (= #xdd args_0_8)
                        (= #x23 args_0_8)
                        (= #xde args_0_8)
                        (= #x22 args_0_8)
                        (= #xdf args_0_8)
                        (= #x21 args_0_8)
                        (= #xe0 args_0_8)
                        (= #x20 args_0_8)
                        (= #xe1 args_0_8)
                        (= #x1f args_0_8)
                        (= #xe2 args_0_8)
                        (= #x1e args_0_8)
                        (= #xe3 args_0_8)
                        (= #x1d args_0_8)
                        (= #xe4 args_0_8)
                        (= #x1c args_0_8)
                        (= #xe5 args_0_8)
                        (= #x1b args_0_8)
                        (= #xe6 args_0_8)
                        (= #x1a args_0_8)
                        (= #xe7 args_0_8)
                        (= #x19 args_0_8)
                        (= #xe8 args_0_8)
                        (= #x18 args_0_8)
                        (= #xe9 args_0_8)
                        (= #x17 args_0_8)
                        (= #xea args_0_8)
                        (= #x16 args_0_8)
                        (= #xeb args_0_8)
                        (= #x15 args_0_8)
                        (= #xec args_0_8)
                        (= #x14 args_0_8)
                        (= #xed args_0_8)
                        (= #x13 args_0_8)
                        (= #xee args_0_8)
                        (= #x12 args_0_8)
                        (= #xef args_0_8)
                        (= #x11 args_0_8)
                        (= #xf0 args_0_8)
                        (= #x10 args_0_8)
                        (= #xf1 args_0_8)
                        (= #x0f args_0_8)
                        (= #xf2 args_0_8)
                        (= #x0e args_0_8)
                        (= #xf3 args_0_8)
                        (= #x0d args_0_8)
                        (= #xf4 args_0_8)
                        (= #x0c args_0_8)
                        (= #xf5 args_0_8)
                        (= #x0b args_0_8)
                        (= #xf6 args_0_8)
                        (= #x0a args_0_8)
                        (= #xf7 args_0_8)
                        (= #x09 args_0_8)
                        (= #xf8 args_0_8)
                        (= #x08 args_0_8)
                        (= #xf9 args_0_8)
                        (= #x07 args_0_8)
                        (= #xfa args_0_8)
                        (= #x06 args_0_8)
                        (= #xfb args_0_8)
                        (= #x05 args_0_8)
                        (= #xfc args_0_8)
                        (= #x04 args_0_8)
                        (= #xfd args_0_8)
                        (= #x03 args_0_8)
                        (= #xfe args_0_8)
                        (= #x02 args_0_8)))))
      (a!34 (or (= #xa2 args_3_8)
                (not (or (= #x4f args_3_8)
                         (= #xa3 args_3_8)
                         (= #x5c args_3_8)
                         (= #xab args_3_8)
                         (= #xb3 args_3_8)
                         (= #x5b args_3_8)
                         (= #xb0 args_3_8)
                         (= #xac args_3_8)
                         (= #xa4 args_3_8)
                         (= #x51 args_3_8)
                         (= #xbb args_3_8)
                         (= #x44 args_3_8)
                         (= #xa6 args_3_8)
                         (= #x5a args_3_8)
                         (= #x43 args_3_8)
                         (= #x52 args_3_8)
                         (= #x48 args_3_8)
                         (= #xae args_3_8)
                         (= #x4c args_3_8)
                         (= #x4e args_3_8)
                         (= #xb5 args_3_8)
                         (= #x47 args_3_8)
                         (= #xb7 args_3_8)
                         (= #x42 args_3_8)
                         (= #xa9 args_3_8)
                         (= #xb8 args_3_8)
                         (= #x58 args_3_8)
                         (= #xaa args_3_8)
                         (= #x49 args_3_8)
                         (= #x46 args_3_8)
                         (= #xbe args_3_8)
                         (= #xbd args_3_8)
                         (= #x4d args_3_8)
                         (= #x59 args_3_8)
                         (= #xa7 args_3_8)
                         (= #x01 args_3_8)
                         (= #xad args_3_8)
                         (= #xff args_3_8)
                         (= #x5e args_3_8)
                         (= #x50 args_3_8)
                         (= #x4a args_3_8)
                         (= #xb4 args_3_8)
                         (= #xb2 args_3_8)
                         (= #xbc args_3_8)
                         (= #x55 args_3_8)
                         (= #xb6 args_3_8)
                         (= #x5d args_3_8)
                         (= #x4b args_3_8)
                         (= #x54 args_3_8)
                         (= #x56 args_3_8)
                         (= #x45 args_3_8)
                         (= #xb1 args_3_8)
                         (= #xbf args_3_8)
                         (= #x57 args_3_8)
                         (= #xaf args_3_8)
                         (= #xb9 args_3_8)
                         (= #xa8 args_3_8)
                         (= #x53 args_3_8)
                         (= #xa5 args_3_8)
                         (= #xba args_3_8)
                         (= #x41 args_3_8)
                         (= #xc0 args_3_8)
                         (= #x40 args_3_8)
                         (= #xc1 args_3_8)
                         (= #x3f args_3_8)
                         (= #xc2 args_3_8)
                         (= #x3e args_3_8)
                         (= #xc3 args_3_8)
                         (= #x3d args_3_8)
                         (= #xc4 args_3_8)
                         (= #x3c args_3_8)
                         (= #xc5 args_3_8)
                         (= #x3b args_3_8)
                         (= #xc6 args_3_8)
                         (= #x3a args_3_8)
                         (= #xc7 args_3_8)
                         (= #x39 args_3_8)
                         (= #xc8 args_3_8)
                         (= #x38 args_3_8)
                         (= #xc9 args_3_8)
                         (= #x37 args_3_8)
                         (= #xca args_3_8)
                         (= #x36 args_3_8)
                         (= #xcb args_3_8)
                         (= #x35 args_3_8)
                         (= #xcc args_3_8)
                         (= #x34 args_3_8)
                         (= #xcd args_3_8)
                         (= #x33 args_3_8)
                         (= #xce args_3_8)
                         (= #x32 args_3_8)
                         (= #xcf args_3_8)
                         (= #x31 args_3_8)
                         (= #xd0 args_3_8)
                         (= #x30 args_3_8)
                         (= #xd1 args_3_8)
                         (= #x2f args_3_8)
                         (= #xd2 args_3_8)
                         (= #x2e args_3_8)
                         (= #xd3 args_3_8)
                         (= #x2d args_3_8)
                         (= #xd4 args_3_8)
                         (= #x2c args_3_8)
                         (= #xd5 args_3_8)
                         (= #x2b args_3_8)
                         (= #xd6 args_3_8)
                         (= #x2a args_3_8)
                         (= #xd7 args_3_8)
                         (= #x29 args_3_8)
                         (= #xd8 args_3_8)
                         (= #x28 args_3_8)
                         (= #xd9 args_3_8)
                         (= #x27 args_3_8)
                         (= #xda args_3_8)
                         (= #x26 args_3_8)
                         (= #xdb args_3_8)
                         (= #x25 args_3_8)
                         (= #xdc args_3_8)
                         (= #x24 args_3_8)
                         (= #xdd args_3_8)
                         (= #x23 args_3_8)
                         (= #xde args_3_8)
                         (= #x22 args_3_8)
                         (= #xdf args_3_8)
                         (= #x21 args_3_8)
                         (= #xe0 args_3_8)
                         (= #x20 args_3_8)
                         (= #xe1 args_3_8)
                         (= #x1f args_3_8)
                         (= #xe2 args_3_8)
                         (= #x1e args_3_8)
                         (= #xe3 args_3_8)
                         (= #x1d args_3_8)
                         (= #xe4 args_3_8)
                         (= #x1c args_3_8)
                         (= #xe5 args_3_8)
                         (= #x1b args_3_8)
                         (= #xe6 args_3_8)
                         (= #x1a args_3_8)
                         (= #xe7 args_3_8)
                         (= #x19 args_3_8)
                         (= #xe8 args_3_8)
                         (= #x18 args_3_8)
                         (= #xe9 args_3_8)
                         (= #x17 args_3_8)
                         (= #xea args_3_8)
                         (= #x16 args_3_8)
                         (= #xeb args_3_8)
                         (= #x15 args_3_8)
                         (= #xec args_3_8)
                         (= #x14 args_3_8)
                         (= #xed args_3_8)
                         (= #x13 args_3_8)
                         (= #xee args_3_8)
                         (= #x12 args_3_8)
                         (= #xef args_3_8)
                         (= #x11 args_3_8)
                         (= #xf0 args_3_8)
                         (= #x10 args_3_8)
                         (= #xf1 args_3_8)
                         (= #x0f args_3_8)
                         (= #xf2 args_3_8)
                         (= #x0e args_3_8)
                         (= #xf3 args_3_8)
                         (= #x0d args_3_8)
                         (= #xf4 args_3_8)
                         (= #x0c args_3_8)
                         (= #xf5 args_3_8)
                         (= #x0b args_3_8)
                         (= #xf6 args_3_8)
                         (= #x0a args_3_8)
                         (= #xf7 args_3_8)
                         (= #x09 args_3_8)
                         (= #xf8 args_3_8)
                         (= #x08 args_3_8)
                         (= #xf9 args_3_8)
                         (= #x07 args_3_8)
                         (= #xfa args_3_8)
                         (= #x06 args_3_8)
                         (= #xfb args_3_8)
                         (= #x05 args_3_8)
                         (= #xfc args_3_8)
                         (= #x04 args_3_8)
                         (= #xfd args_3_8)
                         (= #x03 args_3_8)
                         (= #xfe args_3_8)
                         (= #x02 args_3_8)))))
      (a!67 (or (= #xa2 args_2_8)
                (not (or (= #xc5 args_2_8)
                         (= #x51 args_2_8)
                         (= #xb6 args_2_8)
                         (= #xa5 args_2_8)
                         (= #xb0 args_2_8)
                         (= #xa3 args_2_8)
                         (= #x43 args_2_8)
                         (= #x5a args_2_8)
                         (= #xbd args_2_8)
                         (= #xb5 args_2_8)
                         (= #xc3 args_2_8)
                         (= #xc8 args_2_8)
                         (= #xc4 args_2_8)
                         (= #x4f args_2_8)
                         (= #xad args_2_8)
                         (= #xc9 args_2_8)
                         (= #x41 args_2_8)
                         (= #x3d args_2_8)
                         (= #x4d args_2_8)
                         (= #x46 args_2_8)
                         (= #xc1 args_2_8)
                         (= #xa8 args_2_8)
                         (= #x53 args_2_8)
                         (= #x50 args_2_8)
                         (= #x3a args_2_8)
                         (= #x55 args_2_8)
                         (= #x42 args_2_8)
                         (= #xb7 args_2_8)
                         (= #xbe args_2_8)
                         (= #xaa args_2_8)
                         (= #x36 args_2_8)
                         (= #xab args_2_8)
                         (= #xcb args_2_8)
                         (= #x5d args_2_8)
                         (= #xb8 args_2_8)
                         (= #xca args_2_8)
                         (= #x47 args_2_8)
                         (= #x44 args_2_8)
                         (= #x39 args_2_8)
                         (= #xb2 args_2_8)
                         (= #x3f args_2_8)
                         (= #x4c args_2_8)
                         (= #xa9 args_2_8)
                         (= #xbc args_2_8)
                         (= #xb3 args_2_8)
                         (= #x59 args_2_8)
                         (= #xba args_2_8)
                         (= #x01 args_2_8)
                         (= #x4b args_2_8)
                         (= #x38 args_2_8)
                         (= #xc7 args_2_8)
                         (= #xbb args_2_8)
                         (= #xc6 args_2_8)
                         (= #xc2 args_2_8)
                         (= #xbf args_2_8)
                         (= #xa7 args_2_8)
                         (= #x49 args_2_8)
                         (= #x40 args_2_8)
                         (= #xc0 args_2_8)
                         (= #xb9 args_2_8)
                         (= #xb1 args_2_8)
                         (= #x4e args_2_8)
                         (= #x57 args_2_8)
                         (= #x56 args_2_8)
                         (= #x48 args_2_8)
                         (= #x3b args_2_8)
                         (= #xff args_2_8)
                         (= #x54 args_2_8)
                         (= #x37 args_2_8)
                         (= #x45 args_2_8)
                         (= #xac args_2_8)
                         (= #x4a args_2_8)
                         (= #xae args_2_8)
                         (= #x5b args_2_8)
                         (= #xa4 args_2_8)
                         (= #x5e args_2_8)
                         (= #xa6 args_2_8)
                         (= #x3e args_2_8)
                         (= #xaf args_2_8)
                         (= #x58 args_2_8)
                         (= #xb4 args_2_8)
                         (= #x52 args_2_8)
                         (= #x3c args_2_8)
                         (= #x5c args_2_8)
                         (= #x35 args_2_8)
                         (= #xcc args_2_8)
                         (= #x34 args_2_8)
                         (= #xcd args_2_8)
                         (= #x33 args_2_8)
                         (= #xce args_2_8)
                         (= #x32 args_2_8)
                         (= #xcf args_2_8)
                         (= #x31 args_2_8)
                         (= #xd0 args_2_8)
                         (= #x30 args_2_8)
                         (= #xd1 args_2_8)
                         (= #x2f args_2_8)
                         (= #xd2 args_2_8)
                         (= #x2e args_2_8)
                         (= #xd3 args_2_8)
                         (= #x2d args_2_8)
                         (= #xd4 args_2_8)
                         (= #x2c args_2_8)
                         (= #xd5 args_2_8)
                         (= #x2b args_2_8)
                         (= #xd6 args_2_8)
                         (= #x2a args_2_8)
                         (= #xd7 args_2_8)
                         (= #x29 args_2_8)
                         (= #xd8 args_2_8)
                         (= #x28 args_2_8)
                         (= #xd9 args_2_8)
                         (= #x27 args_2_8)
                         (= #xda args_2_8)
                         (= #x26 args_2_8)
                         (= #xdb args_2_8)
                         (= #x25 args_2_8)
                         (= #xdc args_2_8)
                         (= #x24 args_2_8)
                         (= #xdd args_2_8)
                         (= #x23 args_2_8)
                         (= #xde args_2_8)
                         (= #x22 args_2_8)
                         (= #xdf args_2_8)
                         (= #x21 args_2_8)
                         (= #xe0 args_2_8)
                         (= #x20 args_2_8)
                         (= #xe1 args_2_8)
                         (= #x1f args_2_8)
                         (= #xe2 args_2_8)
                         (= #x1e args_2_8)
                         (= #xe3 args_2_8)
                         (= #x1d args_2_8)
                         (= #xe4 args_2_8)
                         (= #x1c args_2_8)
                         (= #xe5 args_2_8)
                         (= #x1b args_2_8)
                         (= #xe6 args_2_8)
                         (= #x1a args_2_8)
                         (= #xe7 args_2_8)
                         (= #x19 args_2_8)
                         (= #xe8 args_2_8)
                         (= #x18 args_2_8)
                         (= #xe9 args_2_8)
                         (= #x17 args_2_8)
                         (= #xea args_2_8)
                         (= #x16 args_2_8)
                         (= #xeb args_2_8)
                         (= #x15 args_2_8)
                         (= #xec args_2_8)
                         (= #x14 args_2_8)
                         (= #xed args_2_8)
                         (= #x13 args_2_8)
                         (= #xee args_2_8)
                         (= #x12 args_2_8)
                         (= #xef args_2_8)
                         (= #x11 args_2_8)
                         (= #xf0 args_2_8)
                         (= #x10 args_2_8)
                         (= #xf1 args_2_8)
                         (= #x0f args_2_8)
                         (= #xf2 args_2_8)
                         (= #x0e args_2_8)
                         (= #xf3 args_2_8)
                         (= #x0d args_2_8)
                         (= #xf4 args_2_8)
                         (= #x0c args_2_8)
                         (= #xf5 args_2_8)
                         (= #x0b args_2_8)
                         (= #xf6 args_2_8)
                         (= #x0a args_2_8)
                         (= #xf7 args_2_8)
                         (= #x09 args_2_8)
                         (= #xf8 args_2_8)
                         (= #x08 args_2_8)
                         (= #xf9 args_2_8)
                         (= #x07 args_2_8)
                         (= #xfa args_2_8)
                         (= #x06 args_2_8)
                         (= #xfb args_2_8)
                         (= #x05 args_2_8)
                         (= #xfc args_2_8)
                         (= #x04 args_2_8)
                         (= #xfd args_2_8)
                         (= #x03 args_2_8)
                         (= #xfe args_2_8)
                         (= #x02 args_2_8)))))
      (a!100 (concat (concat #b111111111111111111111111111111111111111111111111111111111
                             (ite (= #x2f args_3_8) #b0 #b1))
                     #b1))
      (a!102 (concat (concat #b000000000000000011111111111111111111111100000000000000001
                             (ite (= #x00 args_3_8) #b1 #b0))
                     #b1))
      (a!106 (concat (concat (ite (= #x00 args_3_8) #b1 #b0) #b1)
                     (ite (= #x00 args_2_8) #b1 #b0)))
      (a!109 (concat (concat #b1 (ite (= #x00 args_2_8) #b1 #b0)) #b111))
      (a!112 (concat (concat (ite (= #x00 args_2_8) #b1 #b0) #b111)
                     (ite (= #x00 args_0_8) #b1 #b0)))
      (a!114 (bvadd #xf (concat #b111 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!115 (bvxor (bvadd #b1 (ite (= #x00 args_0_8) #b1 #b0))
                    (ite (= #x00 args_0_8) #b1 #b0))))
(let ((a!2 (or (= #xa1 args_0_8) (not (or (= #x5f args_0_8) (not a!1)))))
      (a!35 (or (= #xa1 args_3_8) (not (or (= #x5f args_3_8) (not a!34)))))
      (a!68 (or (not (or (= #x5f args_2_8) (not a!67))) (= #xa1 args_2_8)))
      (a!101 (concat (concat a!100 (ite (= #x2f args_2_8) #b0 #b1)) #b111))
      (a!103 (concat (concat a!102 (ite (= #x00 args_2_8) #b1 #b0)) #b111))
      (a!107 (bvadd #b1111111
                    (concat (concat a!106 #b111)
                            (ite (= #x00 args_0_8) #b1 #b0))))
      (a!110 (bvadd #b111111 (concat a!109 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!113 (bvnot (bvxor ((_ extract 4 4) (bvadd #b11111 a!112))
                           (ite (= #x00 args_2_8) #b1 #b0)))))
(let ((a!3 (or (= #xa0 args_0_8) (not (or (= #x60 args_0_8) (not a!2)))))
      (a!36 (or (= #xa0 args_3_8) (not (or (= #x60 args_3_8) (not a!35)))))
      (a!69 (or (= #xa0 args_2_8) (not (or (= #x60 args_2_8) (not a!68)))))
      (a!104 (bvadd #xffffffffffffffff
                    (concat a!103 (ite (= #x00 args_0_8) #b1 #b0))))
      (a!108 (bvnot (bvxor ((_ extract 6 6) a!107)
                           (ite (= #x00 args_3_8) #b1 #b0)))))
(let ((a!4 (or (= #x9f args_0_8) (not (or (= #x61 args_0_8) (not a!3)))))
      (a!37 (or (not (or (= #x61 args_3_8) (not a!36))) (= #x9f args_3_8)))
      (a!70 (or (= #x9f args_2_8) (not (or (= #x61 args_2_8) (not a!69)))))
      (a!105 (concat (concat (bvnot ((_ extract 63 48) a!104))
                             ((_ extract 47 24) a!104))
                     (bvnot ((_ extract 23 8) a!104)))))
(let ((a!5 (or (= #x9e args_0_8) (not (or (= #x62 args_0_8) (not a!4)))))
      (a!38 (or (not (or (= #x62 args_3_8) (not a!37))) (= #x9e args_3_8)))
      (a!71 (or (= #x9e args_2_8) (not (or (= #x62 args_2_8) (not a!70)))))
      (a!111 (concat (concat (concat a!105 ((_ extract 7 7) a!104)) a!108)
                     ((_ extract 5 5) a!110))))
(let ((a!6 (or (= #x9d args_0_8) (not (or (= #x63 args_0_8) (not a!5)))))
      (a!39 (or (not (or (= #x63 args_3_8) (not a!38))) (= #x9d args_3_8)))
      (a!72 (or (not (or (= #x63 args_2_8) (not a!71))) (= #x9d args_2_8)))
      (a!116 (bvor (concat a!101 (ite (= #x2f args_0_8) #b0 #b1))
                   (concat (concat (concat a!111 a!113) ((_ extract 3 1) a!114))
                           (bvnot a!115)))))
(let ((a!7 (or (= #x9c args_0_8) (not (or (= #x64 args_0_8) (not a!6)))))
      (a!40 (or (= #x9c args_3_8) (not (or (not a!39) (= #x64 args_3_8)))))
      (a!73 (or (not (or (not a!72) (= #x64 args_2_8))) (= #x9c args_2_8))))
(let ((a!8 (or (not (or (not a!7) (= #x65 args_0_8))) (= #x9b args_0_8)))
      (a!41 (or (= #x9b args_3_8) (not (or (= #x65 args_3_8) (not a!40)))))
      (a!74 (or (= #x9b args_2_8) (not (or (= #x65 args_2_8) (not a!73))))))
(let ((a!9 (or (= #x9a args_0_8) (not (or (not a!8) (= #x66 args_0_8)))))
      (a!42 (or (= #x9a args_3_8) (not (or (= #x66 args_3_8) (not a!41)))))
      (a!75 (or (= #x9a args_2_8) (not (or (= #x66 args_2_8) (not a!74))))))
(let ((a!10 (or (= #x99 args_0_8) (not (or (= #x67 args_0_8) (not a!9)))))
      (a!43 (or (= #x99 args_3_8) (not (or (= #x67 args_3_8) (not a!42)))))
      (a!76 (or (= #x99 args_2_8) (not (or (= #x67 args_2_8) (not a!75))))))
(let ((a!11 (or (= #x98 args_0_8) (not (or (= #x68 args_0_8) (not a!10)))))
      (a!44 (or (= #x98 args_3_8) (not (or (= #x68 args_3_8) (not a!43)))))
      (a!77 (or (= #x98 args_2_8) (not (or (= #x68 args_2_8) (not a!76))))))
(let ((a!12 (or (= #x97 args_0_8) (not (or (= #x69 args_0_8) (not a!11)))))
      (a!45 (or (not (or (not a!44) (= #x69 args_3_8))) (= #x97 args_3_8)))
      (a!78 (or (= #x97 args_2_8) (not (or (= #x69 args_2_8) (not a!77))))))
(let ((a!13 (or (= #x96 args_0_8) (not (or (= #x6a args_0_8) (not a!12)))))
      (a!46 (or (not (or (not a!45) (= #x6a args_3_8))) (= #x96 args_3_8)))
      (a!79 (or (not (or (= #x6a args_2_8) (not a!78))) (= #x96 args_2_8))))
(let ((a!14 (or (= #x95 args_0_8) (not (or (= #x6b args_0_8) (not a!13)))))
      (a!47 (or (not (or (= #x6b args_3_8) (not a!46))) (= #x95 args_3_8)))
      (a!80 (or (not (or (not a!79) (= #x6b args_2_8))) (= #x95 args_2_8))))
(let ((a!15 (or (= #x94 args_0_8) (not (or (= #x6c args_0_8) (not a!14)))))
      (a!48 (or (= #x94 args_3_8) (not (or (= #x6c args_3_8) (not a!47)))))
      (a!81 (or (= #x94 args_2_8) (not (or (= #x6c args_2_8) (not a!80))))))
(let ((a!16 (or (= #x93 args_0_8) (not (or (= #x6d args_0_8) (not a!15)))))
      (a!49 (or (= #x93 args_3_8) (not (or (not a!48) (= #x6d args_3_8)))))
      (a!82 (or (= #x93 args_2_8) (not (or (= #x6d args_2_8) (not a!81))))))
(let ((a!17 (or (= #x92 args_0_8) (not (or (= #x6e args_0_8) (not a!16)))))
      (a!50 (or (= #x92 args_3_8) (not (or (= #x6e args_3_8) (not a!49)))))
      (a!83 (or (= #x92 args_2_8) (not (or (= #x6e args_2_8) (not a!82))))))
(let ((a!18 (or (= #x91 args_0_8) (not (or (= #x6f args_0_8) (not a!17)))))
      (a!51 (or (= #x91 args_3_8) (not (or (not a!50) (= #x6f args_3_8)))))
      (a!84 (or (= #x91 args_2_8) (not (or (= #x6f args_2_8) (not a!83))))))
(let ((a!19 (or (= #x90 args_0_8) (not (or (= #x70 args_0_8) (not a!18)))))
      (a!52 (or (= #x90 args_3_8) (not (or (not a!51) (= #x70 args_3_8)))))
      (a!85 (or (= #x90 args_2_8) (not (or (= #x70 args_2_8) (not a!84))))))
(let ((a!20 (or (= #x8f args_0_8) (not (or (= #x71 args_0_8) (not a!19)))))
      (a!53 (or (= #x8f args_3_8) (not (or (= #x71 args_3_8) (not a!52)))))
      (a!86 (or (= #x8f args_2_8) (not (or (= #x71 args_2_8) (not a!85))))))
(let ((a!21 (or (= #x8e args_0_8) (not (or (= #x72 args_0_8) (not a!20)))))
      (a!54 (or (= #x8e args_3_8) (not (or (= #x72 args_3_8) (not a!53)))))
      (a!87 (or (= #x8e args_2_8) (not (or (= #x72 args_2_8) (not a!86))))))
(let ((a!22 (or (= #x8d args_0_8) (not (or (= #x73 args_0_8) (not a!21)))))
      (a!55 (or (= #x8d args_3_8) (not (or (= #x73 args_3_8) (not a!54)))))
      (a!88 (or (= #x8d args_2_8) (not (or (= #x73 args_2_8) (not a!87))))))
(let ((a!23 (or (= #x8c args_0_8) (not (or (= #x74 args_0_8) (not a!22)))))
      (a!56 (or (= #x8c args_3_8) (not (or (= #x74 args_3_8) (not a!55)))))
      (a!89 (or (not (or (= #x74 args_2_8) (not a!88))) (= #x8c args_2_8))))
(let ((a!24 (or (= #x8b args_0_8) (not (or (= #x75 args_0_8) (not a!23)))))
      (a!57 (or (= #x8b args_3_8) (not (or (= #x75 args_3_8) (not a!56)))))
      (a!90 (or (= #x8b args_2_8) (not (or (not a!89) (= #x75 args_2_8))))))
(let ((a!25 (or (= #x8a args_0_8) (not (or (= #x76 args_0_8) (not a!24)))))
      (a!58 (or (= #x8a args_3_8) (not (or (= #x76 args_3_8) (not a!57)))))
      (a!91 (or (not (or (= #x76 args_2_8) (not a!90))) (= #x8a args_2_8))))
(let ((a!26 (or (= #x89 args_0_8) (not (or (= #x77 args_0_8) (not a!25)))))
      (a!59 (or (= #x89 args_3_8) (not (or (= #x77 args_3_8) (not a!58)))))
      (a!92 (or (= #x89 args_2_8) (not (or (not a!91) (= #x77 args_2_8))))))
(let ((a!27 (or (= #x88 args_0_8) (not (or (= #x78 args_0_8) (not a!26)))))
      (a!60 (or (not (or (= #x78 args_3_8) (not a!59))) (= #x88 args_3_8)))
      (a!93 (or (= #x88 args_2_8) (not (or (= #x78 args_2_8) (not a!92))))))
(let ((a!28 (or (= #x87 args_0_8) (not (or (= #x79 args_0_8) (not a!27)))))
      (a!61 (or (not (or (= #x79 args_3_8) (not a!60))) (= #x87 args_3_8)))
      (a!94 (or (= #x87 args_2_8) (not (or (= #x79 args_2_8) (not a!93))))))
(let ((a!29 (or (= #x86 args_0_8) (not (or (= #x7a args_0_8) (not a!28)))))
      (a!62 (or (not (or (= #x7a args_3_8) (not a!61))) (= #x86 args_3_8)))
      (a!95 (or (= #x86 args_2_8) (not (or (= #x7a args_2_8) (not a!94))))))
(let ((a!30 (or (= #x85 args_0_8) (not (or (= #x7b args_0_8) (not a!29)))))
      (a!63 (or (= #x85 args_3_8) (not (or (not a!62) (= #x7b args_3_8)))))
      (a!96 (or (= #x85 args_2_8) (not (or (= #x7b args_2_8) (not a!95))))))
(let ((a!31 (or (= #x84 args_0_8) (not (or (= #x7c args_0_8) (not a!30)))))
      (a!64 (or (= #x84 args_3_8) (not (or (not a!63) (= #x7c args_3_8)))))
      (a!97 (or (= #x84 args_2_8) (not (or (= #x7c args_2_8) (not a!96))))))
(let ((a!32 (or (= #x83 args_0_8) (not (or (= #x7d args_0_8) (not a!31)))))
      (a!65 (or (= #x83 args_3_8) (not (or (= #x7d args_3_8) (not a!64)))))
      (a!98 (or (not (or (= #x7d args_2_8) (not a!97))) (= #x83 args_2_8))))
(let ((a!33 (concat (ite (or (= #x7f args_0_8)
                             (= #x7e args_0_8)
                             (= #x82 args_0_8)
                             (= #x80 args_0_8)
                             (= #x81 args_0_8)
                             (not a!32))
                         #b0
                         #b1)
                    #x000))
      (a!66 (concat (ite (or (= #x7f args_3_8)
                             (= #x7e args_3_8)
                             (= #x80 args_3_8)
                             (= #x82 args_3_8)
                             (= #x81 args_3_8)
                             (not a!65))
                         #b0
                         #b1)
                    #x000))
      (a!99 (concat (ite (or (= #x82 args_2_8)
                             (= #x7e args_2_8)
                             (= #x81 args_2_8)
                             (= #x80 args_2_8)
                             (= #x7f args_2_8)
                             (not a!98))
                         #b0
                         #b1)
                    #x000)))
  (and (not (bvule #b0000000000001 a!33))
       (bvule #b000000010 (concat args_0_8 #b0))
       (bvule #b000000010 (concat args_3_8 #b0))
       (not (bvule #b0000000000001 a!66))
       (not (bvule #b0000000000001 a!99))
       (bvule #b000000010 (concat args_2_8 #b0))
       (= #x0000000000000000 (bvnot a!116)))))))))))))))))))))))))))))))))))))
(define-fun goal () (_ BitVec 64) (bvadd #x07fffffffffeffd0
       (concat #b000000000000000000000000000000000000000000000000000000000000000
               (ite (= #x2d args_0_8) #b1 #b0)))) 
(maximize goal)
(check-sat)