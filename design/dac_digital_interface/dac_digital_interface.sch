v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {ipin.sym} 0 -180 0 0 {name=p1 lab=clk_i}
C {opin.sym} 720 -170 0 0 {name=p2 lab=output_thermeter_o[255:0]}
C {opin.sym} 720 -130 0 0 {name=p3 lab=output_binary_o[1:0]}
C {opin.sym} 720 -100 0 0 {name=p4 lab=en_o}
C {ipin.sym} 0 -150 0 0 {name=p5 lab=rst_ni}
C {ipin.sym} 0 -120 0 0 {name=p6 lab=randomise_en_i}
C {ipin.sym} 0 -90 0 0 {name=p7 lab=en_i}
C {ipin.sym} 0 -60 0 0 {name=p8 lab=input_binary_i[9:0]}
C {iopin.sym} 0 -260 0 1 {name=p9 lab=VPWR}
C {iopin.sym} 0 0 0 1 {name=p10 lab=VGND}
C {code_shown.sym} 80 -510 0 0 {name=s1 only_toplevel=false value="


*.subckt dac_digital_interface output_thermometer_o[69] output_thermometer_o[112] output_thermometer_o[244]
*+ output_thermometer_o[83] output_thermometer_o[54] output_thermometer_o[166] output_thermometer_o[200]
*+ output_thermometer_o[17] output_thermometer_o[195] output_thermometer_o[15] output_thermometer_o[130]
*+ output_thermometer_o[229] output_thermometer_o[82] output_thermometer_o[4] output_thermometer_o[245]
*+ output_thermometer_o[61] output_thermometer_o[197] output_thermometer_o[101] output_thermometer_o[251]
*+ output_thermometer_o[213] output_thermometer_o[72] output_thermometer_o[43] output_thermometer_o[230]
*+ output_thermometer_o[134] output_thermometer_o[115] output_thermometer_o[212] output_thermometer_o[151]
*+ output_thermometer_o[236] output_thermometer_o[105] output_thermometer_o[174] output_thermometer_o[196]
*+ output_thermometer_o[57] output_thermometer_o[76] output_thermometer_o[142] output_thermometer_o[241]
*+ output_thermometer_o[110] output_thermometer_o[123] output_thermometer_o[81] output_thermometer_o[242]
*+ output_thermometer_o[14] output_thermometer_o[218] output_thermometer_o[250] output_thermometer_o[94]
*+ output_thermometer_o[129] output_thermometer_o[9] output_thermometer_o[117] output_thermometer_o[179]
*+ output_thermometer_o[73] output_thermometer_o[86] output_thermometer_o[215] output_thermometer_o[182]
*+ output_thermometer_o[12] output_thermometer_o[96] output_thermometer_o[132] output_thermometer_o[29]
*+ output_thermometer_o[232] output_thermometer_o[191] output_thermometer_o[5] output_thermometer_o[33]
*+ output_thermometer_o[161] output_thermometer_o[11] output_thermometer_o[160] output_thermometer_o[208]
*+ output_thermometer_o[47] output_thermometer_o[187] output_thermometer_o[79] output_thermometer_o[59]
*+ output_thermometer_o[116] output_thermometer_o[30] output_thermometer_o[194] output_thermometer_o[235]
*+ output_thermometer_o[227] output_thermometer_o[97] output_thermometer_o[67] output_thermometer_o[188]
*+ output_thermometer_o[31] output_thermometer_o[185] output_thermometer_o[20] output_thermometer_o[32]
*+ output_thermometer_o[125] output_thermometer_o[7] output_thermometer_o[21] output_thermometer_o[221]
*+ output_thermometer_o[190] output_thermometer_o[37] output_thermometer_o[74] output_thermometer_o[211]
*+ output_thermometer_o[198] output_thermometer_o[226] output_thermometer_o[193] output_thermometer_o[249]
*+ output_thermometer_o[84] output_thermometer_o[109] output_thermometer_o[253] output_thermometer_o[60]
*+ output_thermometer_o[64] output_thermometer_o[23] output_thermometer_o[164] output_thermometer_o[243]
*+ output_thermometer_o[137] output_thermometer_o[157] output_thermometer_o[119] output_thermometer_o[217]
*+ output_thermometer_o[90] output_thermometer_o[163] output_thermometer_o[18] output_thermometer_o[93]
*+ output_thermometer_o[26] output_thermometer_o[107] output_thermometer_o[144] output_thermometer_o[27]
*+ output_thermometer_o[201] output_thermometer_o[162] output_thermometer_o[146] output_thermometer_o[168]
*+ output_thermometer_o[53] output_thermometer_o[199] output_thermometer_o[147] output_thermometer_o[2]
*+ output_thermometer_o[3] output_thermometer_o[136] output_thermometer_o[204] output_thermometer_o[8]
*+ output_thermometer_o[102] output_thermometer_o[209] output_thermometer_o[234] output_thermometer_o[145]
*+ output_thermometer_o[16] output_thermometer_o[158] output_thermometer_o[45] output_thermometer_o[87]
*+ output_thermometer_o[149] output_thermometer_o[237] output_thermometer_o[224] output_thermometer_o[154]
*+ output_thermometer_o[98] output_thermometer_o[19] output_thermometer_o[222] output_thermometer_o[181]
*+ output_thermometer_o[35] output_thermometer_o[207] output_thermometer_o[124] output_thermometer_o[140]
*+ output_thermometer_o[25] output_thermometer_o[126] output_thermometer_o[68] output_thermometer_o[143]
*+ output_thermometer_o[175] output_thermometer_o[13] output_thermometer_o[178] output_thermometer_o[248]
*+ output_thermometer_o[131] output_thermometer_o[95] output_thermometer_o[156] output_thermometer_o[89]
*+ output_thermometer_o[176] output_thermometer_o[205] output_thermometer_o[62] output_thermometer_o[39]
*+ output_thermometer_o[99] output_thermometer_o[41] output_thermometer_o[104] output_thermometer_o[169]
*+ output_binary_o[0] output_thermometer_o[186] output_thermometer_o[180] output_thermometer_o[214]
*+ output_thermometer_o[63] output_thermometer_o[206] output_thermometer_o[128] output_thermometer_o[228]
*+ output_thermometer_o[55] output_thermometer_o[220] output_thermometer_o[111] output_thermometer_o[247]
*+ output_thermometer_o[183] output_thermometer_o[219] output_thermometer_o[58] output_thermometer_o[114]
*+ output_thermometer_o[252] output_thermometer_o[167] output_thermometer_o[49] output_thermometer_o[159]
*+ output_thermometer_o[120] output_thermometer_o[78] output_thermometer_o[152] output_thermometer_o[189]
*+ output_thermometer_o[103] output_thermometer_o[106] output_thermometer_o[233] output_thermometer_o[155]
*+ output_thermometer_o[34] output_thermometer_o[138] output_thermometer_o[48] output_binary_o[1]
*+ output_thermometer_o[225] output_thermometer_o[121] output_thermometer_o[10] output_thermometer_o[77]
*+ output_thermometer_o[170] output_thermometer_o[141] output_thermometer_o[40] output_thermometer_o[216]
*+ output_thermometer_o[139] output_thermometer_o[210] output_thermometer_o[42] output_thermometer_o[150]
*+ output_thermometer_o[88] output_thermometer_o[240] output_thermometer_o[1] output_thermometer_o[66]
*+ output_thermometer_o[36] output_thermometer_o[127] output_thermometer_o[177] output_thermometer_o[148]
*+ output_thermometer_o[239] output_thermometer_o[255] output_thermometer_o[71] output_thermometer_o[133]
*+ output_thermometer_o[91] output_thermometer_o[22] output_thermometer_o[65] output_thermometer_o[75]
*+ output_thermometer_o[192] output_thermometer_o[51] output_thermometer_o[171] output_thermometer_o[254]
*+ output_thermometer_o[28] output_thermometer_o[122] output_thermometer_o[70] output_thermometer_o[46]
*+ output_thermometer_o[100] output_thermometer_o[56] output_thermometer_o[172] output_thermometer_o[135]
*+ output_thermometer_o[184] output_thermometer_o[173] output_thermometer_o[85] output_thermometer_o[38]
*+ output_thermometer_o[52] output_thermometer_o[238] output_thermometer_o[92] output_thermometer_o[165]
*+ output_thermometer_o[223] output_thermometer_o[246] output_thermometer_o[118] output_thermometer_o[50]
*+ output_thermometer_o[202] output_thermometer_o[113] output_thermometer_o[80] output_thermometer_o[231]
*+ output_thermometer_o[153] output_thermometer_o[203] output_thermometer_o[6] output_thermometer_o[44]
*+ output_thermometer_o[0] output_thermometer_o[108] output_thermometer_o[24] en_o
*+ clk_i rst_ni randomise_en_i en_i input_binary_i[0] input_binary_i[1] input_binary_i[2]
*+ input_binary_i[3] input_binary_i[4] input_binary_i[5] input_binary_i[6] input_binary_i[7]
*+ input_binary_i[8] input_binary_i[9] VPWR VGND
X_3155_ _2756_/X _3365_/Q _3219_/S VGND VGND VPWR VPWR _3666_/D sky130_fd_sc_hd__mux2_2
X_3086_ _2550_/X _3434_/Q _3214_/S VGND VGND VPWR VPWR _3597_/D sky130_fd_sc_hd__mux2_1
X_2106_ _2106_/A _2112_/B VGND VGND VPWR VPWR _3302_/D sky130_fd_sc_hd__nor2_1
XFILLER_54_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2037_ _1917_/Y _2033_/X _1956_/X VGND VGND VPWR VPWR _3357_/D sky130_fd_sc_hd__a21oi_1
XFILLER_54_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_54_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_22_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2939_ _2953_/A VGND VGND VPWR VPWR _2951_/A sky130_fd_sc_hd__buf_1
XFILLER_50_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_516 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_5_332 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_68_328 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_36_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2724_ _2781_/A VGND VGND VPWR VPWR _2724_/X sky130_fd_sc_hd__clkbuf_2
X_2655_ _2659_/A _2659_/B _3335_/Q VGND VGND VPWR VPWR _2655_/X sky130_fd_sc_hd__and3_1
X_2586_ _3294_/Q _2576_/X _2578_/X _3231_/Q _2585_/X VGND VGND VPWR VPWR _2586_/X
+ sky130_fd_sc_hd__a221o_1
X_3207_ _2908_/X _3313_/Q _3208_/S VGND VGND VPWR VPWR _3718_/D sky130_fd_sc_hd__mux2_2
XFILLER_67_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3138_ _2702_/X _3382_/Q _3204_/S VGND VGND VPWR VPWR _3649_/D sky130_fd_sc_hd__mux2_2
XFILLER_27_203 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3069_ _2498_/X _3451_/Q _3229_/S VGND VGND VPWR VPWR _3580_/D sky130_fd_sc_hd__mux2_2
XFILLER_23_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_357 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_14_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_14_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_5_140 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2440_ _3343_/Q _2426_/X _2428_/X _3280_/Q _2439_/X VGND VGND VPWR VPWR _2440_/X
+ sky130_fd_sc_hd__a221o_1
X_2371_ _2375_/A _2375_/B _3430_/Q VGND VGND VPWR VPWR _2371_/X sky130_fd_sc_hd__and3_1
XFILLER_37_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3756_ _3762_/CLK _3756_/D input1/X VGND VGND VPWR VPWR _3757_/D sky130_fd_sc_hd__dfrtp_1
X_2707_ _2707_/A VGND VGND VPWR VPWR _2707_/X sky130_fd_sc_hd__clkbuf_2
X_3687_ _3713_/CLK _3687_/D VGND VGND VPWR VPWR _3687_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput242 _3608_/Q VGND VGND VPWR VPWR output_thermometer_o[122] sky130_fd_sc_hd__clkbuf_2
Xoutput220 _3636_/Q VGND VGND VPWR VPWR output_thermometer_o[150] sky130_fd_sc_hd__clkbuf_2
Xoutput253 _3538_/Q VGND VGND VPWR VPWR output_thermometer_o[52] sky130_fd_sc_hd__clkbuf_2
Xoutput231 _3557_/Q VGND VGND VPWR VPWR output_thermometer_o[71] sky130_fd_sc_hd__clkbuf_2
X_2638_ _3277_/Q _2633_/X _2634_/X _3468_/Q _2637_/X VGND VGND VPWR VPWR _2638_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput264 _3717_/Q VGND VGND VPWR VPWR output_thermometer_o[231] sky130_fd_sc_hd__clkbuf_2
X_2569_ _2643_/A VGND VGND VPWR VPWR _2629_/A sky130_fd_sc_hd__buf_2
XFILLER_55_375 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_702 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_735 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_724 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_713 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_768 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_757 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_746 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_779 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_501 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_334 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_356 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_14_250 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1940_ _2149_/A VGND VGND VPWR VPWR _1940_/X sky130_fd_sc_hd__buf_2
X_1871_ _2093_/A _1766_/X _1869_/X _1870_/X VGND VGND VPWR VPWR _3440_/D sky130_fd_sc_hd__a31o_1
X_3610_ _3738_/CLK _3610_/D VGND VGND VPWR VPWR _3610_/Q sky130_fd_sc_hd__dfxtp_1
X_3541_ _3720_/CLK _3541_/D VGND VGND VPWR VPWR _3541_/Q sky130_fd_sc_hd__dfxtp_1
X_3472_ _3479_/CLK _3472_/D VGND VGND VPWR VPWR _3472_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_50_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2423_ _2435_/A _2435_/B _3412_/Q VGND VGND VPWR VPWR _2423_/X sky130_fd_sc_hd__and3_1
X_2354_ _2410_/A VGND VGND VPWR VPWR _2354_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_29_309 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2285_ _2285_/A _2285_/B _3458_/Q VGND VGND VPWR VPWR _2285_/X sky130_fd_sc_hd__and3_1
XFILLER_37_320 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3739_ _3739_/CLK _3739_/D VGND VGND VPWR VPWR _3739_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_16_537 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_510 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_521 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_532 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_543 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_43_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_34_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_554 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_565 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_576 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_587 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_598 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_485 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2070_ _2076_/A _2070_/B VGND VGND VPWR VPWR _3331_/D sky130_fd_sc_hd__nor2_1
XFILLER_38_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_34_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2972_ _3754_/D _2972_/B VGND VGND VPWR VPWR _3749_/D sky130_fd_sc_hd__xnor2_1
X_1923_ _1712_/X _1921_/Y _1928_/A VGND VGND VPWR VPWR _3419_/D sky130_fd_sc_hd__o21ai_1
XFILLER_30_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1854_ _1839_/X _1853_/Y _1846_/X VGND VGND VPWR VPWR _3445_/D sky130_fd_sc_hd__o21ai_1
X_1785_ _1851_/A _1738_/B _1741_/A VGND VGND VPWR VPWR _2164_/B sky130_fd_sc_hd__a21oi_4
X_3524_ _3741_/CLK _3524_/D VGND VGND VPWR VPWR _3524_/Q sky130_fd_sc_hd__dfxtp_1
X_3455_ _3734_/CLK _3455_/D VGND VGND VPWR VPWR _3455_/Q sky130_fd_sc_hd__dfxtp_1
X_2406_ _2406_/A VGND VGND VPWR VPWR _2417_/B sky130_fd_sc_hd__buf_1
X_3386_ _3485_/CLK _3386_/D VGND VGND VPWR VPWR _3386_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_404 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2337_ _2341_/A _2341_/B _3440_/Q VGND VGND VPWR VPWR _2337_/X sky130_fd_sc_hd__and3_1
X_2268_ _2329_/A VGND VGND VPWR VPWR _2285_/A sky130_fd_sc_hd__buf_1
XFILLER_57_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_29_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_65_492 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2199_ input2/X _3763_/D VGND VGND VPWR VPWR _3747_/D sky130_fd_sc_hd__and2_1
XFILLER_37_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_175 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_20_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_340 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_351 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_362 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_373 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_384 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_395 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XANTENNA_5 _3601_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3240_ _3762_/CLK _3240_/D VGND VGND VPWR VPWR _3240_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3171_ _2804_/X _3349_/Q _3173_/S VGND VGND VPWR VPWR _3682_/D sky130_fd_sc_hd__mux2_2
XFILLER_13_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2122_ _1659_/A _2047_/A _2121_/X VGND VGND VPWR VPWR _3288_/D sky130_fd_sc_hd__a21oi_1
XFILLER_19_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_289 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2053_ _2053_/A _2053_/B VGND VGND VPWR VPWR _3345_/D sky130_fd_sc_hd__nor2_1
XFILLER_54_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2955_ _2965_/A _2965_/B _3233_/Q VGND VGND VPWR VPWR _2955_/X sky130_fd_sc_hd__and3_1
X_2886_ _3449_/Q _2872_/X _2874_/X _3385_/Q _2885_/X VGND VGND VPWR VPWR _2886_/X
+ sky130_fd_sc_hd__a221o_1
X_1906_ _1766_/X _1973_/B _2005_/B _1975_/A _1705_/A VGND VGND VPWR VPWR _3426_/D
+ sky130_fd_sc_hd__a41o_1
X_1837_ _1710_/A _1834_/X _1924_/A VGND VGND VPWR VPWR _3450_/D sky130_fd_sc_hd__a21o_1
X_3507_ _3736_/CLK _3507_/D VGND VGND VPWR VPWR _3507_/Q sky130_fd_sc_hd__dfxtp_1
X_1768_ _2057_/A _1766_/X _1767_/X VGND VGND VPWR VPWR _3470_/D sky130_fd_sc_hd__a21o_1
X_1699_ _2106_/A _2118_/A _1887_/B _1788_/B VGND VGND VPWR VPWR _2085_/A sky130_fd_sc_hd__and4_2
X_3438_ _3720_/CLK _3438_/D VGND VGND VPWR VPWR _3438_/Q sky130_fd_sc_hd__dfxtp_1
X_3369_ _3450_/CLK _3369_/D VGND VGND VPWR VPWR _3369_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_267 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_319 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput20 _3686_/Q VGND VGND VPWR VPWR output_thermometer_o[200] sky130_fd_sc_hd__clkbuf_2
Xoutput42 _3591_/Q VGND VGND VPWR VPWR output_thermometer_o[105] sky130_fd_sc_hd__clkbuf_2
Xoutput31 _3587_/Q VGND VGND VPWR VPWR output_thermometer_o[101] sky130_fd_sc_hd__clkbuf_2
Xoutput64 _3668_/Q VGND VGND VPWR VPWR output_thermometer_o[182] sky130_fd_sc_hd__clkbuf_2
Xoutput53 _3500_/Q VGND VGND VPWR VPWR output_thermometer_o[14] sky130_fd_sc_hd__clkbuf_2
Xoutput75 _3646_/Q VGND VGND VPWR VPWR output_thermometer_o[160] sky130_fd_sc_hd__clkbuf_2
Xoutput86 _3583_/Q VGND VGND VPWR VPWR output_thermometer_o[97] sky130_fd_sc_hd__clkbuf_2
Xoutput97 _3676_/Q VGND VGND VPWR VPWR output_thermometer_o[190] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_241 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_285 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_63_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_170 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_192 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_181 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2740_ _2782_/A VGND VGND VPWR VPWR _2740_/X sky130_fd_sc_hd__clkbuf_2
X_2671_ _2673_/A _2673_/B _3329_/Q VGND VGND VPWR VPWR _2671_/X sky130_fd_sc_hd__and3_1
X_1622_ input6/X VGND VGND VPWR VPWR _1683_/B sky130_fd_sc_hd__clkbuf_2
X_3223_ _2952_/X _3297_/Q _3225_/S VGND VGND VPWR VPWR _3734_/D sky130_fd_sc_hd__mux2_1
X_3154_ _2752_/X _3366_/Q _3219_/S VGND VGND VPWR VPWR _3665_/D sky130_fd_sc_hd__mux2_4
X_3085_ _2548_/X _3435_/Q _3214_/S VGND VGND VPWR VPWR _3596_/D sky130_fd_sc_hd__mux2_2
X_2105_ _2105_/A _2110_/B VGND VGND VPWR VPWR _3303_/D sky130_fd_sc_hd__nor2_1
X_2036_ _1915_/Y _2033_/X _1956_/X VGND VGND VPWR VPWR _3358_/D sky130_fd_sc_hd__a21oi_1
X_2938_ _3430_/Q _2929_/X _2930_/X _3366_/Q _2937_/X VGND VGND VPWR VPWR _2938_/X
+ sky130_fd_sc_hd__a221o_1
X_2869_ _2881_/A _2881_/B _3263_/Q VGND VGND VPWR VPWR _2869_/X sky130_fd_sc_hd__and3_1
XFILLER_58_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_58_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_18_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_53_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_42_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_366 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_521 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_36_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_51_207 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2723_ _2797_/A VGND VGND VPWR VPWR _2781_/A sky130_fd_sc_hd__buf_2
X_2654_ _3273_/Q _2650_/X _2652_/X _3464_/Q _2653_/X VGND VGND VPWR VPWR _2654_/X
+ sky130_fd_sc_hd__a221o_1
X_2585_ _2585_/A _2585_/B _3358_/Q VGND VGND VPWR VPWR _2585_/X sky130_fd_sc_hd__and3_1
XFILLER_59_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3206_ _2906_/X _3314_/Q _3208_/S VGND VGND VPWR VPWR _3717_/D sky130_fd_sc_hd__mux2_2
X_3137_ _2700_/X _3383_/Q _3204_/S VGND VGND VPWR VPWR _3648_/D sky130_fd_sc_hd__mux2_2
X_3068_ _2492_/X _3452_/Q _3196_/S VGND VGND VPWR VPWR _3579_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2019_ _1834_/X _2184_/C _1924_/A VGND VGND VPWR VPWR _3370_/D sky130_fd_sc_hd__o21a_1
XFILLER_35_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_37_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_33_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_5_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2370_ _3367_/Q _2367_/X _2368_/X _3303_/Q _2369_/X VGND VGND VPWR VPWR _2370_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_49_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_49_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_402 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3755_ _3762_/CLK _3755_/D input1/X VGND VGND VPWR VPWR _3756_/D sky130_fd_sc_hd__dfrtp_1
X_3686_ _3737_/CLK _3686_/D VGND VGND VPWR VPWR _3686_/Q sky130_fd_sc_hd__dfxtp_1
X_2706_ _3254_/Q _2693_/X _2694_/X _3445_/Q _2705_/X VGND VGND VPWR VPWR _2706_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput210 _3607_/Q VGND VGND VPWR VPWR output_thermometer_o[121] sky130_fd_sc_hd__clkbuf_2
X_2637_ _2641_/A _2641_/B _3340_/Q VGND VGND VPWR VPWR _2637_/X sky130_fd_sc_hd__and3_1
Xoutput232 _3619_/Q VGND VGND VPWR VPWR output_thermometer_o[133] sky130_fd_sc_hd__clkbuf_2
Xoutput221 _3574_/Q VGND VGND VPWR VPWR output_thermometer_o[88] sky130_fd_sc_hd__clkbuf_2
Xoutput243 _3556_/Q VGND VGND VPWR VPWR output_thermometer_o[70] sky130_fd_sc_hd__clkbuf_2
Xoutput254 _3724_/Q VGND VGND VPWR VPWR output_thermometer_o[238] sky130_fd_sc_hd__clkbuf_2
Xoutput265 _3639_/Q VGND VGND VPWR VPWR output_thermometer_o[153] sky130_fd_sc_hd__clkbuf_2
X_2568_ _3299_/Q _2559_/X _2560_/X _3236_/Q _2567_/X VGND VGND VPWR VPWR _2568_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_59_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2499_ _2871_/A VGND VGND VPWR VPWR _2797_/A sky130_fd_sc_hd__buf_1
XFILLER_67_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_365 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_736 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_725 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_714 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_703 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_769 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_758 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_747 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_11_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_129 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_58_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_61_324 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_64_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_14_273 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1870_ _1870_/A VGND VGND VPWR VPWR _1870_/X sky130_fd_sc_hd__buf_2
X_3540_ _3737_/CLK _3540_/D VGND VGND VPWR VPWR _3540_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3471_ _3476_/CLK _3471_/D VGND VGND VPWR VPWR _3471_/Q sky130_fd_sc_hd__dfxtp_1
X_2422_ _2480_/A VGND VGND VPWR VPWR _2435_/B sky130_fd_sc_hd__buf_1
XFILLER_43_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2353_ _2958_/A VGND VGND VPWR VPWR _2410_/A sky130_fd_sc_hd__buf_2
X_2284_ _3395_/Q _2275_/X _2278_/X _3331_/Q _2283_/X VGND VGND VPWR VPWR _2284_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_56_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1999_ _1853_/Y _1995_/X _1998_/X VGND VGND VPWR VPWR _3381_/D sky130_fd_sc_hd__a21oi_1
X_3738_ _3738_/CLK _3738_/D VGND VGND VPWR VPWR _3738_/Q sky130_fd_sc_hd__dfxtp_1
X_3669_ _3720_/CLK _3669_/D VGND VGND VPWR VPWR _3669_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_18_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_140 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_18_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_500 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_511 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_522 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_533 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_544 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_34_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_555 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_566 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_577 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_588 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_599 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_298 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_7_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_19_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_354 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_173 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2971_ _3751_/D _3750_/D VGND VGND VPWR VPWR _2972_/B sky130_fd_sc_hd__xnor2_1
X_1922_ _1949_/A VGND VGND VPWR VPWR _1928_/A sky130_fd_sc_hd__clkbuf_2
X_1853_ _2088_/B _1917_/A VGND VGND VPWR VPWR _1853_/Y sky130_fd_sc_hd__nand2_1
X_1784_ _2030_/B _2062_/A VGND VGND VPWR VPWR _1784_/Y sky130_fd_sc_hd__nor2_2
X_3523_ _3728_/CLK _3523_/D VGND VGND VPWR VPWR _3523_/Q sky130_fd_sc_hd__dfxtp_1
X_3454_ _3734_/CLK _3454_/D VGND VGND VPWR VPWR _3454_/Q sky130_fd_sc_hd__dfxtp_1
X_2405_ _2405_/A VGND VGND VPWR VPWR _2417_/A sky130_fd_sc_hd__buf_1
X_3385_ _3449_/CLK _3385_/D VGND VGND VPWR VPWR _3385_/Q sky130_fd_sc_hd__dfxtp_1
X_2336_ _3377_/Q _2333_/X _2334_/X _3313_/Q _2335_/X VGND VGND VPWR VPWR _2336_/X
+ sky130_fd_sc_hd__a221o_1
X_2267_ _2953_/A VGND VGND VPWR VPWR _2329_/A sky130_fd_sc_hd__buf_2
X_2198_ _2188_/A _1915_/Y _1659_/A VGND VGND VPWR VPWR _3231_/D sky130_fd_sc_hd__o21ai_1
XFILLER_52_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_508 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_438 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_195 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_43_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_330 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_341 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_352 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_363 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_374 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_385 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_396 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_6_24 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XANTENNA_6 _3601_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_3_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3170_ _2802_/X _3350_/Q _3173_/S VGND VGND VPWR VPWR _3681_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2121_ _2153_/A VGND VGND VPWR VPWR _2121_/X sky130_fd_sc_hd__buf_2
X_2052_ _2052_/A _2053_/B VGND VGND VPWR VPWR _3346_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2954_ _2954_/A VGND VGND VPWR VPWR _2965_/B sky130_fd_sc_hd__buf_1
X_2885_ _2895_/A _2895_/B _3258_/Q VGND VGND VPWR VPWR _2885_/X sky130_fd_sc_hd__and3_1
X_1905_ _1905_/A VGND VGND VPWR VPWR _2005_/B sky130_fd_sc_hd__clkbuf_2
X_1836_ _2194_/A VGND VGND VPWR VPWR _1924_/A sky130_fd_sc_hd__clkbuf_2
X_1767_ _1870_/A VGND VGND VPWR VPWR _1767_/X sky130_fd_sc_hd__clkbuf_2
X_3506_ _3736_/CLK _3506_/D VGND VGND VPWR VPWR _3506_/Q sky130_fd_sc_hd__dfxtp_1
X_1698_ _1758_/B VGND VGND VPWR VPWR _2106_/A sky130_fd_sc_hd__clkbuf_4
X_3437_ _3450_/CLK _3437_/D VGND VGND VPWR VPWR _3437_/Q sky130_fd_sc_hd__dfxtp_1
X_3368_ _3763_/CLK _3368_/D VGND VGND VPWR VPWR _3368_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2319_ _2333_/A VGND VGND VPWR VPWR _2319_/X sky130_fd_sc_hd__clkbuf_2
X_3299_ _3762_/CLK _3299_/D VGND VGND VPWR VPWR _3299_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_279 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_485 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_13_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_15_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput32 _3737_/Q VGND VGND VPWR VPWR output_thermometer_o[251] sky130_fd_sc_hd__clkbuf_2
Xoutput43 _3660_/Q VGND VGND VPWR VPWR output_thermometer_o[174] sky130_fd_sc_hd__clkbuf_2
Xoutput21 _3503_/Q VGND VGND VPWR VPWR output_thermometer_o[17] sky130_fd_sc_hd__clkbuf_2
Xoutput54 _3704_/Q VGND VGND VPWR VPWR output_thermometer_o[218] sky130_fd_sc_hd__clkbuf_2
Xoutput76 _3694_/Q VGND VGND VPWR VPWR output_thermometer_o[208] sky130_fd_sc_hd__clkbuf_2
Xoutput65 _3498_/Q VGND VGND VPWR VPWR output_thermometer_o[12] sky130_fd_sc_hd__clkbuf_2
Xoutput98 _3523_/Q VGND VGND VPWR VPWR output_thermometer_o[37] sky130_fd_sc_hd__clkbuf_2
Xoutput87 _3553_/Q VGND VGND VPWR VPWR output_thermometer_o[67] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_297 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_441 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_160 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_193 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_171 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_182 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2670_ _3267_/Q _2665_/X _2666_/X _3458_/Q _2669_/X VGND VGND VPWR VPWR _2670_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_8_331 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1621_ _1668_/A VGND VGND VPWR VPWR _1788_/A sky130_fd_sc_hd__buf_2
X_3222_ _2950_/X _3298_/Q _3222_/S VGND VGND VPWR VPWR _3733_/D sky130_fd_sc_hd__mux2_1
X_3153_ _2748_/X _3367_/Q _3219_/S VGND VGND VPWR VPWR _3664_/D sky130_fd_sc_hd__mux2_1
XFILLER_39_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2104_ _2104_/A VGND VGND VPWR VPWR _2105_/A sky130_fd_sc_hd__inv_2
X_3084_ _2544_/X _3436_/Q _3222_/S VGND VGND VPWR VPWR _3595_/D sky130_fd_sc_hd__mux2_2
XFILLER_35_430 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2035_ _1913_/Y _2033_/X _2027_/X VGND VGND VPWR VPWR _3359_/D sky130_fd_sc_hd__a21oi_1
XFILLER_35_474 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_168 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2937_ _2937_/A _2937_/B _3239_/Q VGND VGND VPWR VPWR _2937_/X sky130_fd_sc_hd__and3_1
XFILLER_30_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2868_ _2926_/A VGND VGND VPWR VPWR _2881_/B sky130_fd_sc_hd__clkbuf_2
X_2799_ _2799_/A VGND VGND VPWR VPWR _2856_/A sky130_fd_sc_hd__buf_2
X_1819_ _1981_/A _1903_/C _1800_/X VGND VGND VPWR VPWR _2074_/B sky130_fd_sc_hd__a21oi_2
XFILLER_58_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_58_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_26_463 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_41_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_1_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2722_ _3249_/Q _2707_/X _2708_/X _3440_/Q _2721_/X VGND VGND VPWR VPWR _2722_/X
+ sky130_fd_sc_hd__a221o_1
X_2653_ _2659_/A _2659_/B _3336_/Q VGND VGND VPWR VPWR _2653_/X sky130_fd_sc_hd__and3_1
X_2584_ _3295_/Q _2576_/X _2578_/X _3232_/Q _2583_/X VGND VGND VPWR VPWR _2584_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_59_319 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3205_ _2904_/X _3315_/Q _3208_/S VGND VGND VPWR VPWR _3716_/D sky130_fd_sc_hd__mux2_4
XFILLER_67_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3136_ _2698_/X _3384_/Q _3204_/S VGND VGND VPWR VPWR _3647_/D sky130_fd_sc_hd__mux2_2
XFILLER_27_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3067_ _2490_/X _3453_/Q _3196_/S VGND VGND VPWR VPWR _3578_/D sky130_fd_sc_hd__mux2_2
X_2018_ _2016_/Y _2012_/X _2017_/X VGND VGND VPWR VPWR _3371_/D sky130_fd_sc_hd__a21oi_1
XFILLER_23_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_503 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_411 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_26_282 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_68_138 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_285 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3754_ _3754_/CLK _3754_/D input1/X VGND VGND VPWR VPWR _3755_/D sky130_fd_sc_hd__dfrtp_1
X_3685_ _3728_/CLK _3685_/D VGND VGND VPWR VPWR _3685_/Q sky130_fd_sc_hd__dfxtp_1
X_2705_ _2715_/A _2715_/B _3317_/Q VGND VGND VPWR VPWR _2705_/X sky130_fd_sc_hd__and3_1
Xoutput200 _3675_/Q VGND VGND VPWR VPWR output_thermometer_o[189] sky130_fd_sc_hd__clkbuf_2
X_2636_ _3278_/Q _2633_/X _2634_/X _3469_/Q _2635_/X VGND VGND VPWR VPWR _2636_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput222 _3726_/Q VGND VGND VPWR VPWR output_thermometer_o[240] sky130_fd_sc_hd__clkbuf_2
Xoutput244 _3532_/Q VGND VGND VPWR VPWR output_thermometer_o[46] sky130_fd_sc_hd__clkbuf_2
Xoutput211 _3496_/Q VGND VGND VPWR VPWR output_thermometer_o[10] sky130_fd_sc_hd__clkbuf_2
Xoutput233 _3577_/Q VGND VGND VPWR VPWR output_thermometer_o[91] sky130_fd_sc_hd__clkbuf_2
Xoutput266 _3689_/Q VGND VGND VPWR VPWR output_thermometer_o[203] sky130_fd_sc_hd__clkbuf_2
Xoutput255 _3578_/Q VGND VGND VPWR VPWR output_thermometer_o[92] sky130_fd_sc_hd__clkbuf_2
X_2567_ _2567_/A _2567_/B _3363_/Q VGND VGND VPWR VPWR _2567_/X sky130_fd_sc_hd__and3_1
X_2498_ _3323_/Q _2483_/X _2484_/X _3260_/Q _2497_/X VGND VGND VPWR VPWR _2498_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_55_311 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_28_536 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_547 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_55_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3119_ _2648_/X _3401_/Q _3186_/S VGND VGND VPWR VPWR _3630_/D sky130_fd_sc_hd__mux2_2
XPHY_726 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_715 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_704 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_759 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_748 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_737 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_425 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_59 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_451 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3470_ _3479_/CLK _3470_/D VGND VGND VPWR VPWR _3470_/Q sky130_fd_sc_hd__dfxtp_1
X_2421_ _2645_/A VGND VGND VPWR VPWR _2480_/A sky130_fd_sc_hd__buf_2
X_2352_ _2409_/A VGND VGND VPWR VPWR _2352_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_36_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2283_ _2285_/A _2285_/B _3459_/Q VGND VGND VPWR VPWR _2283_/X sky130_fd_sc_hd__and3_1
XFILLER_64_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_347 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3737_ _3737_/CLK _3737_/D VGND VGND VPWR VPWR _3737_/Q sky130_fd_sc_hd__dfxtp_1
X_1998_ _2006_/A VGND VGND VPWR VPWR _1998_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_20_288 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3668_ _3716_/CLK _3668_/D VGND VGND VPWR VPWR _3668_/Q sky130_fd_sc_hd__dfxtp_1
X_3599_ _3745_/CLK _3599_/D VGND VGND VPWR VPWR _3599_/Q sky130_fd_sc_hd__dfxtp_1
X_2619_ _2633_/A VGND VGND VPWR VPWR _2619_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_28_300 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_501 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_512 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_523 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_534 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_43_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_545 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_556 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_567 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_578 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_589 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_50_42 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_38_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_311 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_22_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2970_ _3418_/Q _2257_/A _2258_/A _3354_/Q _2969_/X VGND VGND VPWR VPWR _2970_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_61_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_30_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1921_ _1921_/A _1921_/B _1975_/A VGND VGND VPWR VPWR _1921_/Y sky130_fd_sc_hd__nand3_4
X_1852_ _2091_/B _1852_/B VGND VGND VPWR VPWR _2088_/B sky130_fd_sc_hd__nand2_2
X_1783_ _1728_/X _2064_/B _1761_/X VGND VGND VPWR VPWR _3464_/D sky130_fd_sc_hd__o21ai_1
X_3522_ _3586_/CLK _3522_/D VGND VGND VPWR VPWR _3522_/Q sky130_fd_sc_hd__dfxtp_1
X_3453_ _3453_/CLK _3453_/D VGND VGND VPWR VPWR _3453_/Q sky130_fd_sc_hd__dfxtp_1
X_2404_ _3354_/Q _2395_/X _2396_/X _3290_/Q _2403_/X VGND VGND VPWR VPWR _2404_/X
+ sky130_fd_sc_hd__a221o_1
X_3384_ _3746_/CLK _3384_/D VGND VGND VPWR VPWR _3384_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_417 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2335_ _2341_/A _2341_/B _3441_/Q VGND VGND VPWR VPWR _2335_/X sky130_fd_sc_hd__and3_1
X_2266_ _3399_/Q _2257_/X _2258_/X _3335_/Q _2265_/X VGND VGND VPWR VPWR _2266_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_65_450 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2197_ _2188_/X _1913_/Y _2191_/X VGND VGND VPWR VPWR _3232_/D sky130_fd_sc_hd__o21ai_1
XFILLER_1_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_100 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_564 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_4_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_325 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_347 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_358 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_320 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_331 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_342 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_43_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_353 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_364 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_375 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_386 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_8_524 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_397 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XANTENNA_7 _3603_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_2120_ _1665_/X _1928_/B _2141_/B VGND VGND VPWR VPWR _3289_/D sky130_fd_sc_hd__o21ai_1
XFILLER_66_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2051_ _2051_/A _2053_/B VGND VGND VPWR VPWR _3347_/D sky130_fd_sc_hd__nor2_1
XFILLER_47_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_47_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_34_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2953_ _2953_/A VGND VGND VPWR VPWR _2965_/A sky130_fd_sc_hd__buf_1
XFILLER_15_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1904_ _1876_/X _1903_/Y _1897_/X VGND VGND VPWR VPWR _3427_/D sky130_fd_sc_hd__o21ai_1
X_2884_ _2926_/A VGND VGND VPWR VPWR _2895_/B sky130_fd_sc_hd__buf_1
XFILLER_30_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1835_ _2079_/B VGND VGND VPWR VPWR _2194_/A sky130_fd_sc_hd__clkbuf_2
X_1766_ _1766_/A VGND VGND VPWR VPWR _1766_/X sky130_fd_sc_hd__buf_2
X_3505_ _3728_/CLK _3505_/D VGND VGND VPWR VPWR _3505_/Q sky130_fd_sc_hd__dfxtp_1
X_1697_ _1697_/A VGND VGND VPWR VPWR _1697_/X sky130_fd_sc_hd__clkbuf_2
X_3436_ _3449_/CLK _3436_/D VGND VGND VPWR VPWR _3436_/Q sky130_fd_sc_hd__dfxtp_1
X_3367_ _3763_/CLK _3367_/D VGND VGND VPWR VPWR _3367_/Q sky130_fd_sc_hd__dfxtp_1
X_2318_ _3383_/Q _2305_/X _2306_/X _3319_/Q _2317_/X VGND VGND VPWR VPWR _2318_/X
+ sky130_fd_sc_hd__a221o_1
X_3298_ _3425_/CLK _3298_/D VGND VGND VPWR VPWR _3298_/Q sky130_fd_sc_hd__dfxtp_1
X_2249_ _2251_/A _2251_/B _3469_/Q VGND VGND VPWR VPWR _2249_/X sky130_fd_sc_hd__and3_1
XFILLER_25_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_317 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_497 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_5_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput22 _3681_/Q VGND VGND VPWR VPWR output_thermometer_o[195] sky130_fd_sc_hd__clkbuf_2
Xoutput33 _3699_/Q VGND VGND VPWR VPWR output_thermometer_o[213] sky130_fd_sc_hd__clkbuf_2
Xoutput44 _3682_/Q VGND VGND VPWR VPWR output_thermometer_o[196] sky130_fd_sc_hd__clkbuf_2
Xoutput66 _3582_/Q VGND VGND VPWR VPWR output_thermometer_o[96] sky130_fd_sc_hd__clkbuf_2
Xoutput55 _3736_/Q VGND VGND VPWR VPWR output_thermometer_o[250] sky130_fd_sc_hd__clkbuf_2
Xoutput88 _3674_/Q VGND VGND VPWR VPWR output_thermometer_o[188] sky130_fd_sc_hd__clkbuf_2
Xoutput77 _3533_/Q VGND VGND VPWR VPWR output_thermometer_o[47] sky130_fd_sc_hd__clkbuf_2
Xoutput99 _3560_/Q VGND VGND VPWR VPWR output_thermometer_o[74] sky130_fd_sc_hd__clkbuf_2
XFILLER_56_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_450 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_16_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_44_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_161 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_150 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_194 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_172 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_183 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1620_ input7/X VGND VGND VPWR VPWR _1668_/A sky130_fd_sc_hd__clkbuf_4
X_3221_ _2948_/X _3299_/Q _3225_/S VGND VGND VPWR VPWR _3732_/D sky130_fd_sc_hd__mux2_1
XFILLER_67_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3152_ _2746_/X _3368_/Q _3214_/S VGND VGND VPWR VPWR _3663_/D sky130_fd_sc_hd__mux2_1
X_2103_ _2103_/A _2110_/B VGND VGND VPWR VPWR _3304_/D sky130_fd_sc_hd__nor2_1
X_3083_ _2540_/X _3437_/Q _3222_/S VGND VGND VPWR VPWR _3594_/D sky130_fd_sc_hd__mux2_2
X_2034_ _1909_/Y _2033_/X _2027_/X VGND VGND VPWR VPWR _3360_/D sky130_fd_sc_hd__a21oi_1
XFILLER_50_467 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2936_ _3431_/Q _2929_/X _2930_/X _3367_/Q _2935_/X VGND VGND VPWR VPWR _2936_/X
+ sky130_fd_sc_hd__a221o_1
X_2867_ _2867_/A VGND VGND VPWR VPWR _2926_/A sky130_fd_sc_hd__buf_2
X_1818_ _1815_/X _2073_/B _1805_/X VGND VGND VPWR VPWR _3456_/D sky130_fd_sc_hd__o21ai_1
X_2798_ _2855_/A VGND VGND VPWR VPWR _2798_/X sky130_fd_sc_hd__clkbuf_2
X_1749_ _1749_/A _1887_/B VGND VGND VPWR VPWR _1794_/B sky130_fd_sc_hd__nand2_4
X_3419_ _3485_/CLK _3419_/D VGND VGND VPWR VPWR _3419_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_58_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_45_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_324 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_431 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_456 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2721_ _2733_/A _2733_/B _3312_/Q VGND VGND VPWR VPWR _2721_/X sky130_fd_sc_hd__and3_1
XFILLER_66_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2652_ _2708_/A VGND VGND VPWR VPWR _2652_/X sky130_fd_sc_hd__clkbuf_2
X_2583_ _2585_/A _2585_/B _3359_/Q VGND VGND VPWR VPWR _2583_/X sky130_fd_sc_hd__and3_1
X_3204_ _2900_/X _3316_/Q _3204_/S VGND VGND VPWR VPWR _3715_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3135_ _2696_/X _3385_/Q _3230_/S VGND VGND VPWR VPWR _3646_/D sky130_fd_sc_hd__mux2_2
X_3066_ _2488_/X _3454_/Q _3196_/S VGND VGND VPWR VPWR _3577_/D sky130_fd_sc_hd__mux2_2
XFILLER_27_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2017_ _2152_/A VGND VGND VPWR VPWR _2017_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_23_434 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_50_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2919_ _2923_/A _2923_/B _3246_/Q VGND VGND VPWR VPWR _2919_/X sky130_fd_sc_hd__and3_1
XFILLER_12_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_12_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_49_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_559 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3753_ _3762_/CLK _3753_/D input1/X VGND VGND VPWR VPWR _3754_/D sky130_fd_sc_hd__dfrtp_1
X_2704_ _2704_/A VGND VGND VPWR VPWR _2715_/B sky130_fd_sc_hd__buf_1
X_3684_ _3722_/CLK _3684_/D VGND VGND VPWR VPWR _3684_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput201 _3589_/Q VGND VGND VPWR VPWR output_thermometer_o[103] sky130_fd_sc_hd__clkbuf_2
X_2635_ _2641_/A _2641_/B _3341_/Q VGND VGND VPWR VPWR _2635_/X sky130_fd_sc_hd__and3_1
Xoutput234 _3508_/Q VGND VGND VPWR VPWR output_thermometer_o[22] sky130_fd_sc_hd__clkbuf_2
Xoutput212 _3563_/Q VGND VGND VPWR VPWR output_thermometer_o[77] sky130_fd_sc_hd__clkbuf_2
Xoutput223 _3487_/Q VGND VGND VPWR VPWR output_thermometer_o[1] sky130_fd_sc_hd__clkbuf_2
Xoutput256 _3651_/Q VGND VGND VPWR VPWR output_thermometer_o[165] sky130_fd_sc_hd__clkbuf_2
Xoutput245 _3586_/Q VGND VGND VPWR VPWR output_thermometer_o[100] sky130_fd_sc_hd__clkbuf_2
Xoutput267 _3492_/Q VGND VGND VPWR VPWR output_thermometer_o[6] sky130_fd_sc_hd__clkbuf_2
X_2566_ _3300_/Q _2559_/X _2560_/X _3237_/Q _2565_/X VGND VGND VPWR VPWR _2566_/X
+ sky130_fd_sc_hd__a221o_1
Xclkbuf_1_1_0_clk_i clkbuf_0_clk_i/X VGND VGND VPWR VPWR clkbuf_2_3_0_clk_i/A sky130_fd_sc_hd__clkbuf_1
XFILLER_59_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2497_ _2511_/A _2511_/B _3387_/Q VGND VGND VPWR VPWR _2497_/X sky130_fd_sc_hd__and3_1
XFILLER_28_515 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3118_ _2642_/X _3402_/Q _3186_/S VGND VGND VPWR VPWR _3629_/D sky130_fd_sc_hd__mux2_1
X_3049_ _2440_/X _3471_/Q _3179_/S VGND VGND VPWR VPWR _3560_/D sky130_fd_sc_hd__mux2_1
XPHY_727 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_716 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_705 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_749 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_738 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_19_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_264 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_9_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_6_474 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2420_ _2479_/A VGND VGND VPWR VPWR _2435_/A sky130_fd_sc_hd__buf_1
X_2351_ _2957_/A VGND VGND VPWR VPWR _2409_/A sky130_fd_sc_hd__buf_2
X_2282_ _3396_/Q _2275_/X _2278_/X _3332_/Q _2281_/X VGND VGND VPWR VPWR _2282_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_29_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_49_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_359 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_60_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1997_ _1849_/Y _1995_/X _1988_/X VGND VGND VPWR VPWR _3382_/D sky130_fd_sc_hd__a21oi_1
X_3736_ _3736_/CLK _3736_/D VGND VGND VPWR VPWR _3736_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3667_ _3754_/CLK _3667_/D VGND VGND VPWR VPWR _3667_/Q sky130_fd_sc_hd__dfxtp_1
X_3598_ _3722_/CLK _3598_/D VGND VGND VPWR VPWR _3598_/Q sky130_fd_sc_hd__dfxtp_1
X_2618_ _3284_/Q _2605_/X _2606_/X _3475_/Q _2617_/X VGND VGND VPWR VPWR _2618_/X
+ sky130_fd_sc_hd__a221o_1
X_2549_ _2553_/A _2553_/B _3370_/Q VGND VGND VPWR VPWR _2549_/X sky130_fd_sc_hd__and3_1
XFILLER_47_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_518 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_502 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_513 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_524 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_535 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_546 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_557 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_568 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_245 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_579 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_267 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_7_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_3_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_34_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_348 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_178 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1920_ _1920_/A _1920_/B VGND VGND VPWR VPWR _1921_/A sky130_fd_sc_hd__nor2_2
X_1851_ _1851_/A _1945_/A VGND VGND VPWR VPWR _2091_/B sky130_fd_sc_hd__nor2_4
XFILLER_30_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3521_ _3738_/CLK _3521_/D VGND VGND VPWR VPWR _3521_/Q sky130_fd_sc_hd__dfxtp_1
X_1782_ _1960_/A _1987_/B _1860_/B VGND VGND VPWR VPWR _2064_/B sky130_fd_sc_hd__a21oi_4
X_3452_ _3452_/CLK _3452_/D VGND VGND VPWR VPWR _3452_/Q sky130_fd_sc_hd__dfxtp_1
X_3383_ _3746_/CLK _3383_/D VGND VGND VPWR VPWR _3383_/Q sky130_fd_sc_hd__dfxtp_1
X_2403_ _2403_/A _2403_/B _3418_/Q VGND VGND VPWR VPWR _2403_/X sky130_fd_sc_hd__and3_1
X_2334_ _2334_/A VGND VGND VPWR VPWR _2334_/X sky130_fd_sc_hd__clkbuf_2
X_2265_ _2265_/A _2265_/B _3463_/Q VGND VGND VPWR VPWR _2265_/X sky130_fd_sc_hd__and3_1
X_2196_ _1868_/B _1651_/A _2191_/X VGND VGND VPWR VPWR _3233_/D sky130_fd_sc_hd__o21ai_1
XFILLER_37_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_112 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_189 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3719_ _3720_/CLK _3719_/D VGND VGND VPWR VPWR _3719_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_48_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_10 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_310 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_321 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_332 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_343 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_354 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_365 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_376 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_61_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_387 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_398 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA_8 _3603_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_2050_ _2050_/A _2053_/B VGND VGND VPWR VPWR _3348_/D sky130_fd_sc_hd__nor2_1
Xclkbuf_2_0_0_clk_i clkbuf_2_1_0_clk_i/A VGND VGND VPWR VPWR clkbuf_2_0_0_clk_i/X
+ sky130_fd_sc_hd__clkbuf_1
XFILLER_19_197 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2952_ _3425_/Q _2943_/X _2944_/X _3361_/Q _2951_/X VGND VGND VPWR VPWR _2952_/X
+ sky130_fd_sc_hd__a221o_1
X_1903_ _2109_/A _2165_/A _1903_/C VGND VGND VPWR VPWR _1903_/Y sky130_fd_sc_hd__nand3_4
X_2883_ _2925_/A VGND VGND VPWR VPWR _2895_/A sky130_fd_sc_hd__buf_1
X_1834_ _2079_/C VGND VGND VPWR VPWR _1834_/X sky130_fd_sc_hd__clkbuf_2
X_1765_ _1874_/A _2020_/A _1874_/B VGND VGND VPWR VPWR _2057_/A sky130_fd_sc_hd__nand3_4
X_3504_ _3713_/CLK _3504_/D VGND VGND VPWR VPWR _3504_/Q sky130_fd_sc_hd__dfxtp_1
X_3435_ _3435_/CLK _3435_/D VGND VGND VPWR VPWR _3435_/Q sky130_fd_sc_hd__dfxtp_1
X_1696_ _1766_/A VGND VGND VPWR VPWR _1697_/A sky130_fd_sc_hd__clkbuf_2
X_3366_ _3762_/CLK _3366_/D VGND VGND VPWR VPWR _3366_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_204 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2317_ _2327_/A _2327_/B _3447_/Q VGND VGND VPWR VPWR _2317_/X sky130_fd_sc_hd__and3_1
X_3297_ _3425_/CLK _3297_/D VGND VGND VPWR VPWR _3297_/Q sky130_fd_sc_hd__dfxtp_1
X_2248_ _3406_/Q _2243_/X _2244_/X _3342_/Q _2247_/X VGND VGND VPWR VPWR _2248_/X
+ sky130_fd_sc_hd__a221o_1
X_2179_ _2095_/A _2166_/X _2005_/B _2176_/X VGND VGND VPWR VPWR _3247_/D sky130_fd_sc_hd__a31o_1
XFILLER_25_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput34 _3558_/Q VGND VGND VPWR VPWR output_thermometer_o[72] sky130_fd_sc_hd__clkbuf_2
Xoutput23 _3501_/Q VGND VGND VPWR VPWR output_thermometer_o[15] sky130_fd_sc_hd__clkbuf_2
Xoutput56 _3580_/Q VGND VGND VPWR VPWR output_thermometer_o[94] sky130_fd_sc_hd__clkbuf_2
Xoutput45 _3543_/Q VGND VGND VPWR VPWR output_thermometer_o[57] sky130_fd_sc_hd__clkbuf_2
Xoutput67 _3618_/Q VGND VGND VPWR VPWR output_thermometer_o[132] sky130_fd_sc_hd__clkbuf_2
Xoutput78 _3673_/Q VGND VGND VPWR VPWR output_thermometer_o[187] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_233 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput89 _3517_/Q VGND VGND VPWR VPWR output_thermometer_o[31] sky130_fd_sc_hd__clkbuf_2
XFILLER_63_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_56_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_140 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_151 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_162 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_173 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_184 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_195 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_3220_ _2946_/X _3300_/Q _3225_/S VGND VGND VPWR VPWR _3731_/D sky130_fd_sc_hd__mux2_2
X_3151_ _2744_/X _3369_/Q _3222_/S VGND VGND VPWR VPWR _3662_/D sky130_fd_sc_hd__mux2_1
XFILLER_39_215 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2102_ _3305_/D VGND VGND VPWR VPWR _2110_/B sky130_fd_sc_hd__inv_2
XFILLER_39_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_39_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3082_ _2538_/X _3438_/Q _3214_/S VGND VGND VPWR VPWR _3593_/D sky130_fd_sc_hd__mux2_2
XFILLER_35_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2033_ _2033_/A VGND VGND VPWR VPWR _2033_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_50_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2935_ _2937_/A _2937_/B _3240_/Q VGND VGND VPWR VPWR _2935_/X sky130_fd_sc_hd__and3_1
X_2866_ _2925_/A VGND VGND VPWR VPWR _2881_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_30_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1817_ _1978_/A _1987_/B _1800_/X VGND VGND VPWR VPWR _2073_/B sky130_fd_sc_hd__a21oi_2
X_2797_ _2797_/A VGND VGND VPWR VPWR _2855_/A sky130_fd_sc_hd__buf_2
X_1748_ _2053_/A _1744_/X _1715_/X VGND VGND VPWR VPWR _3473_/D sky130_fd_sc_hd__o21ai_1
X_1679_ _1912_/A VGND VGND VPWR VPWR _1903_/C sky130_fd_sc_hd__clkbuf_4
X_3418_ _3485_/CLK _3418_/D VGND VGND VPWR VPWR _3418_/Q sky130_fd_sc_hd__dfxtp_1
X_3349_ _3618_/CLK _3349_/D VGND VGND VPWR VPWR _3349_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_45_207 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_476 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_26_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_32_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2720_ _2778_/A VGND VGND VPWR VPWR _2733_/B sky130_fd_sc_hd__buf_1
X_2651_ _2799_/A VGND VGND VPWR VPWR _2708_/A sky130_fd_sc_hd__buf_2
XFILLER_8_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2582_ _3296_/Q _2576_/X _2578_/X _3233_/Q _2581_/X VGND VGND VPWR VPWR _2582_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_4_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3203_ _2896_/X _3317_/Q _3204_/S VGND VGND VPWR VPWR _3714_/D sky130_fd_sc_hd__mux2_2
XFILLER_67_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3134_ _2692_/X _3386_/Q _3230_/S VGND VGND VPWR VPWR _3645_/D sky130_fd_sc_hd__mux2_2
X_3065_ _2486_/X _3455_/Q _3196_/S VGND VGND VPWR VPWR _3576_/D sky130_fd_sc_hd__mux2_2
XFILLER_55_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_27_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2016_ _2098_/A _2016_/B VGND VGND VPWR VPWR _2016_/Y sky130_fd_sc_hd__nand2_1
XFILLER_63_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_232 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2918_ _3438_/Q _2915_/X _2916_/X _3374_/Q _2917_/X VGND VGND VPWR VPWR _2918_/X
+ sky130_fd_sc_hd__a221o_1
X_2849_ _2849_/A _2849_/B _3269_/Q VGND VGND VPWR VPWR _2849_/X sky130_fd_sc_hd__and3_1
XFILLER_37_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_508 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_41_254 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_1_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_49_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_60_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_17_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_232 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_265 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3752_ _3762_/CLK _3752_/D input1/X VGND VGND VPWR VPWR _3753_/D sky130_fd_sc_hd__dfrtp_1
X_3683_ _3737_/CLK _3683_/D VGND VGND VPWR VPWR _3683_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2703_ _2703_/A VGND VGND VPWR VPWR _2715_/A sky130_fd_sc_hd__buf_1
X_2634_ _2634_/A VGND VGND VPWR VPWR _2634_/X sky130_fd_sc_hd__clkbuf_2
Xoutput224 _3552_/Q VGND VGND VPWR VPWR output_thermometer_o[66] sky130_fd_sc_hd__clkbuf_2
Xoutput202 _3592_/Q VGND VGND VPWR VPWR output_thermometer_o[106] sky130_fd_sc_hd__clkbuf_2
Xoutput235 _3551_/Q VGND VGND VPWR VPWR output_thermometer_o[65] sky130_fd_sc_hd__clkbuf_2
Xoutput213 _3656_/Q VGND VGND VPWR VPWR output_thermometer_o[170] sky130_fd_sc_hd__clkbuf_2
X_2565_ _2567_/A _2567_/B _3364_/Q VGND VGND VPWR VPWR _2565_/X sky130_fd_sc_hd__and3_1
Xoutput246 _3542_/Q VGND VGND VPWR VPWR output_thermometer_o[56] sky130_fd_sc_hd__clkbuf_2
Xoutput268 _3530_/Q VGND VGND VPWR VPWR output_thermometer_o[44] sky130_fd_sc_hd__clkbuf_2
Xoutput257 _3709_/Q VGND VGND VPWR VPWR output_thermometer_o[223] sky130_fd_sc_hd__clkbuf_2
X_2496_ _2556_/A VGND VGND VPWR VPWR _2511_/B sky130_fd_sc_hd__buf_1
XFILLER_4_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_505 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_28_527 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3117_ _2640_/X _3403_/Q _3187_/S VGND VGND VPWR VPWR _3628_/D sky130_fd_sc_hd__mux2_1
X_3048_ _2436_/X _3472_/Q _3179_/S VGND VGND VPWR VPWR _3559_/D sky130_fd_sc_hd__mux2_1
XPHY_717 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_706 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_739 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_728 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_2_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_6_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2350_ _3373_/Q _2333_/X _2334_/X _3309_/Q _2349_/X VGND VGND VPWR VPWR _2350_/X
+ sky130_fd_sc_hd__a221o_1
X_2281_ _2285_/A _2285_/B _3460_/Q VGND VGND VPWR VPWR _2281_/X sky130_fd_sc_hd__and3_1
XFILLER_1_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_195 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_379 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1996_ _1845_/Y _1995_/X _1988_/X VGND VGND VPWR VPWR _3383_/D sky130_fd_sc_hd__a21oi_1
X_3735_ _3735_/CLK _3735_/D VGND VGND VPWR VPWR _3735_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3666_ _3744_/CLK _3666_/D VGND VGND VPWR VPWR _3666_/Q sky130_fd_sc_hd__dfxtp_1
X_3597_ _3720_/CLK _3597_/D VGND VGND VPWR VPWR _3597_/Q sky130_fd_sc_hd__dfxtp_1
X_2617_ _2627_/A _2627_/B _3347_/Q VGND VGND VPWR VPWR _2617_/X sky130_fd_sc_hd__and3_1
X_2548_ _3307_/Q _2545_/X _2546_/X _3244_/Q _2547_/X VGND VGND VPWR VPWR _2548_/X
+ sky130_fd_sc_hd__a221o_1
X_2479_ _2479_/A VGND VGND VPWR VPWR _2491_/A sky130_fd_sc_hd__buf_1
XFILLER_68_460 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_346 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_55_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_305 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_563 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_503 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_514 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_525 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_574 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_536 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_547 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_558 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_569 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_360 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_11_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_11_279 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1850_ _1839_/X _1849_/Y _1846_/X VGND VGND VPWR VPWR _3446_/D sky130_fd_sc_hd__o21ai_1
XFILLER_30_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_30_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1781_ _1912_/A VGND VGND VPWR VPWR _1987_/B sky130_fd_sc_hd__clkbuf_4
X_3520_ _3738_/CLK _3520_/D VGND VGND VPWR VPWR _3520_/Q sky130_fd_sc_hd__dfxtp_1
X_3451_ _3453_/CLK _3451_/D VGND VGND VPWR VPWR _3451_/Q sky130_fd_sc_hd__dfxtp_1
X_3382_ _3746_/CLK _3382_/D VGND VGND VPWR VPWR _3382_/Q sky130_fd_sc_hd__dfxtp_1
X_2402_ _3355_/Q _2395_/X _2396_/X _3291_/Q _2401_/X VGND VGND VPWR VPWR _2402_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_41_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2333_ _2333_/A VGND VGND VPWR VPWR _2333_/X sky130_fd_sc_hd__clkbuf_2
X_2264_ _3400_/Q _2257_/X _2258_/X _3336_/Q _2263_/X VGND VGND VPWR VPWR _2264_/X
+ sky130_fd_sc_hd__a221o_1
X_2195_ _2188_/X _1907_/Y _2191_/X VGND VGND VPWR VPWR _3234_/D sky130_fd_sc_hd__o21ai_1
XFILLER_65_463 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_316 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_319 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1979_ _1966_/X _1978_/Y _1976_/X VGND VGND VPWR VPWR _3392_/D sky130_fd_sc_hd__a21oi_1
X_3718_ _3722_/CLK _3718_/D VGND VGND VPWR VPWR _3718_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3649_ _3714_/CLK _3649_/D VGND VGND VPWR VPWR _3649_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_48_419 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_300 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_45_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_311 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_322 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_333 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_344 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_355 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_366 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_377 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_388 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_399 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XANTENNA_9 _3603_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_6_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_8 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_411 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_360 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_308 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2951_ _2951_/A _2951_/B _3234_/Q VGND VGND VPWR VPWR _2951_/X sky130_fd_sc_hd__and3_1
X_1902_ _1876_/X _1901_/Y _1897_/X VGND VGND VPWR VPWR _3428_/D sky130_fd_sc_hd__o21ai_1
X_2882_ _3450_/Q _2872_/X _2874_/X _3386_/Q _2881_/X VGND VGND VPWR VPWR _2882_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_30_396 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1833_ _1815_/X _2078_/B _1820_/X VGND VGND VPWR VPWR _3451_/D sky130_fd_sc_hd__o21ai_1
X_1764_ _1822_/A _1822_/B _1828_/B VGND VGND VPWR VPWR _1874_/B sky130_fd_sc_hd__nand3_4
X_3503_ _3736_/CLK _3503_/D VGND VGND VPWR VPWR _3503_/Q sky130_fd_sc_hd__dfxtp_1
X_3434_ _3450_/CLK _3434_/D VGND VGND VPWR VPWR _3434_/Q sky130_fd_sc_hd__dfxtp_1
X_1695_ _2041_/B _2166_/A _2153_/A VGND VGND VPWR VPWR _1766_/A sky130_fd_sc_hd__a21oi_1
X_3365_ _3754_/CLK _3365_/D VGND VGND VPWR VPWR _3365_/Q sky130_fd_sc_hd__dfxtp_1
X_2316_ _2330_/A VGND VGND VPWR VPWR _2327_/B sky130_fd_sc_hd__buf_1
X_3296_ _3425_/CLK _3296_/D VGND VGND VPWR VPWR _3296_/Q sky130_fd_sc_hd__dfxtp_1
X_2247_ _2251_/A _2251_/B _3470_/Q VGND VGND VPWR VPWR _2247_/X sky130_fd_sc_hd__and3_1
X_2178_ _2094_/A _2166_/X _1883_/X _2176_/X VGND VGND VPWR VPWR _3248_/D sky130_fd_sc_hd__a31o_1
XFILLER_53_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xoutput24 _3616_/Q VGND VGND VPWR VPWR output_thermometer_o[130] sky130_fd_sc_hd__clkbuf_2
Xoutput46 _3562_/Q VGND VGND VPWR VPWR output_thermometer_o[76] sky130_fd_sc_hd__clkbuf_2
Xoutput35 _3529_/Q VGND VGND VPWR VPWR output_thermometer_o[43] sky130_fd_sc_hd__clkbuf_2
Xoutput57 _3615_/Q VGND VGND VPWR VPWR output_thermometer_o[129] sky130_fd_sc_hd__clkbuf_2
Xoutput68 _3515_/Q VGND VGND VPWR VPWR output_thermometer_o[29] sky130_fd_sc_hd__clkbuf_2
Xoutput79 _3565_/Q VGND VGND VPWR VPWR output_thermometer_o[79] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_289 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_56_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_168 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_141 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_152 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_301 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_163 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_174 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_185 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_196 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3150_ _2742_/X _3370_/Q _3214_/S VGND VGND VPWR VPWR _3661_/D sky130_fd_sc_hd__mux2_1
X_3081_ _2536_/X _3439_/Q _3214_/S VGND VGND VPWR VPWR _3592_/D sky130_fd_sc_hd__mux2_2
X_2101_ _2112_/B _2101_/B VGND VGND VPWR VPWR _3305_/D sky130_fd_sc_hd__nor2_4
X_2032_ _1907_/Y _2024_/X _2027_/X VGND VGND VPWR VPWR _3361_/D sky130_fd_sc_hd__a21oi_1
XFILLER_35_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_411 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_499 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_285 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2934_ _3432_/Q _2929_/X _2930_/X _3368_/Q _2933_/X VGND VGND VPWR VPWR _2934_/X
+ sky130_fd_sc_hd__a221o_1
X_2865_ _2865_/A VGND VGND VPWR VPWR _2925_/A sky130_fd_sc_hd__buf_2
X_1816_ _1822_/A _1822_/B _2113_/B VGND VGND VPWR VPWR _1978_/A sky130_fd_sc_hd__and3_2
X_2796_ _3479_/Q _2781_/X _2782_/X _3415_/Q _2795_/X VGND VGND VPWR VPWR _2796_/X
+ sky130_fd_sc_hd__a221o_1
X_1747_ _2112_/A _1747_/B _1747_/C VGND VGND VPWR VPWR _2053_/A sky130_fd_sc_hd__and3_1
X_1678_ _1895_/A VGND VGND VPWR VPWR _1912_/A sky130_fd_sc_hd__buf_1
X_3417_ _3739_/CLK _3417_/D VGND VGND VPWR VPWR _3417_/Q sky130_fd_sc_hd__dfxtp_1
X_3348_ _3476_/CLK _3348_/D VGND VGND VPWR VPWR _3348_/Q sky130_fd_sc_hd__dfxtp_1
X_3279_ _3479_/CLK _3279_/D VGND VGND VPWR VPWR _3279_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_580 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_38_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_447 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_411 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_403 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2650_ _2707_/A VGND VGND VPWR VPWR _2650_/X sky130_fd_sc_hd__clkbuf_2
X_2581_ _2585_/A _2585_/B _3360_/Q VGND VGND VPWR VPWR _2581_/X sky130_fd_sc_hd__and3_1
X_3202_ _2894_/X _3318_/Q _3204_/S VGND VGND VPWR VPWR _3713_/D sky130_fd_sc_hd__mux2_1
X_3133_ _2688_/X _3387_/Q _3229_/S VGND VGND VPWR VPWR _3644_/D sky130_fd_sc_hd__mux2_1
X_3064_ _2482_/X _3456_/Q _3192_/S VGND VGND VPWR VPWR _3575_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2015_ _2014_/Y _2012_/X _2006_/X VGND VGND VPWR VPWR _3372_/D sky130_fd_sc_hd__a21oi_1
XFILLER_63_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_50_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2917_ _2923_/A _2923_/B _3247_/Q VGND VGND VPWR VPWR _2917_/X sky130_fd_sc_hd__and3_1
XFILLER_50_288 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2848_ _3461_/Q _2841_/X _2842_/X _3397_/Q _2847_/X VGND VGND VPWR VPWR _2848_/X
+ sky130_fd_sc_hd__a221o_1
X_2779_ _2789_/A _2789_/B _3292_/Q VGND VGND VPWR VPWR _2779_/X sky130_fd_sc_hd__and3_1
XFILLER_2_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_41_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_5_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_222 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_244 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3751_ _3754_/CLK _3751_/D input1/X VGND VGND VPWR VPWR _3752_/D sky130_fd_sc_hd__dfrtp_1
X_2702_ _3255_/Q _2693_/X _2694_/X _3446_/Q _2701_/X VGND VGND VPWR VPWR _2702_/X
+ sky130_fd_sc_hd__a221o_1
X_3682_ _3737_/CLK _3682_/D VGND VGND VPWR VPWR _3682_/Q sky130_fd_sc_hd__dfxtp_1
X_2633_ _2633_/A VGND VGND VPWR VPWR _2633_/X sky130_fd_sc_hd__clkbuf_2
Xoutput214 _3627_/Q VGND VGND VPWR VPWR output_thermometer_o[141] sky130_fd_sc_hd__clkbuf_2
Xoutput203 _3719_/Q VGND VGND VPWR VPWR output_thermometer_o[233] sky130_fd_sc_hd__clkbuf_2
Xoutput225 _3522_/Q VGND VGND VPWR VPWR output_thermometer_o[36] sky130_fd_sc_hd__clkbuf_2
X_2564_ _3301_/Q _2559_/X _2560_/X _3238_/Q _2563_/X VGND VGND VPWR VPWR _2564_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput236 _3561_/Q VGND VGND VPWR VPWR output_thermometer_o[75] sky130_fd_sc_hd__clkbuf_2
Xoutput258 _3732_/Q VGND VGND VPWR VPWR output_thermometer_o[246] sky130_fd_sc_hd__clkbuf_2
Xoutput247 _3658_/Q VGND VGND VPWR VPWR output_thermometer_o[172] sky130_fd_sc_hd__clkbuf_2
Xoutput269 _3486_/Q VGND VGND VPWR VPWR output_thermometer_o[0] sky130_fd_sc_hd__clkbuf_2
X_2495_ _2645_/A VGND VGND VPWR VPWR _2556_/A sky130_fd_sc_hd__buf_2
X_3116_ _2638_/X _3404_/Q _3187_/S VGND VGND VPWR VPWR _3627_/D sky130_fd_sc_hd__mux2_2
X_3047_ _2434_/X _3473_/Q _3179_/S VGND VGND VPWR VPWR _3558_/D sky130_fd_sc_hd__mux2_1
XFILLER_43_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_718 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_707 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_729 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_233 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_51_553 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_23_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_46_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_64_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_410 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_43_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2280_ _3397_/Q _2275_/X _2278_/X _3333_/Q _2279_/X VGND VGND VPWR VPWR _2280_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_37_358 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_542 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1995_ _2002_/A VGND VGND VPWR VPWR _1995_/X sky130_fd_sc_hd__buf_1
XFILLER_20_225 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3734_ _3734_/CLK _3734_/D VGND VGND VPWR VPWR _3734_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3665_ _3728_/CLK _3665_/D VGND VGND VPWR VPWR _3665_/Q sky130_fd_sc_hd__dfxtp_1
X_2616_ _2630_/A VGND VGND VPWR VPWR _2627_/B sky130_fd_sc_hd__buf_1
X_3596_ _3722_/CLK _3596_/D VGND VGND VPWR VPWR _3596_/Q sky130_fd_sc_hd__dfxtp_1
X_2547_ _2553_/A _2553_/B _3371_/Q VGND VGND VPWR VPWR _2547_/X sky130_fd_sc_hd__and3_1
X_2478_ _3329_/Q _2469_/X _2470_/X _3266_/Q _2477_/X VGND VGND VPWR VPWR _2478_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_43_317 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_520 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_504 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_515 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_526 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_537 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_548 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_559 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_3_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_450 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_34_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1780_ _2103_/A VGND VGND VPWR VPWR _1960_/A sky130_fd_sc_hd__inv_2
XFILLER_10_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3450_ _3450_/CLK _3450_/D VGND VGND VPWR VPWR _3450_/Q sky130_fd_sc_hd__dfxtp_1
X_3381_ _3738_/CLK _3381_/D VGND VGND VPWR VPWR _3381_/Q sky130_fd_sc_hd__dfxtp_1
X_2401_ _2403_/A _2403_/B _3419_/Q VGND VGND VPWR VPWR _2401_/X sky130_fd_sc_hd__and3_1
X_2332_ _3378_/Q _2319_/X _2320_/X _3314_/Q _2331_/X VGND VGND VPWR VPWR _2332_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_34_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_57_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2263_ _2265_/A _2265_/B _3464_/Q VGND VGND VPWR VPWR _2263_/X sky130_fd_sc_hd__and3_1
XFILLER_65_442 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2194_ _2194_/A _2194_/B _2030_/Y VGND VGND VPWR VPWR _3235_/D sky130_fd_sc_hd__or3b_2
XFILLER_37_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_21_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3717_ _3735_/CLK _3717_/D VGND VGND VPWR VPWR _3717_/Q sky130_fd_sc_hd__dfxtp_1
X_1978_ _1978_/A _1983_/B VGND VGND VPWR VPWR _1978_/Y sky130_fd_sc_hd__nand2_1
X_3648_ _3714_/CLK _3648_/D VGND VGND VPWR VPWR _3648_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3579_ _3707_/CLK _3579_/D VGND VGND VPWR VPWR _3579_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_68_291 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_28_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_301 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_43_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_312 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_323 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_334 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_361 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_24_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_345 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_356 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_367 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_12_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_8_516 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_378 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_389 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_6_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_298 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2950_ _3426_/Q _2943_/X _2944_/X _3362_/Q _2949_/X VGND VGND VPWR VPWR _2950_/X
+ sky130_fd_sc_hd__a221o_1
X_2881_ _2881_/A _2881_/B _3259_/Q VGND VGND VPWR VPWR _2881_/X sky130_fd_sc_hd__and3_1
X_1901_ _1907_/A _2108_/B _1903_/C VGND VGND VPWR VPWR _1901_/Y sky130_fd_sc_hd__nand3_4
X_1832_ _1954_/B _1990_/B _1990_/C _1907_/A VGND VGND VPWR VPWR _2078_/B sky130_fd_sc_hd__a31oi_2
X_1763_ _1763_/A VGND VGND VPWR VPWR _1828_/B sky130_fd_sc_hd__clkbuf_2
XFILLER_7_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3502_ _3739_/CLK _3502_/D VGND VGND VPWR VPWR _3502_/Q sky130_fd_sc_hd__dfxtp_1
X_1694_ _3482_/D _1694_/B VGND VGND VPWR VPWR _2153_/A sky130_fd_sc_hd__nor2_8
X_3433_ _3450_/CLK _3433_/D VGND VGND VPWR VPWR _3433_/Q sky130_fd_sc_hd__dfxtp_1
X_3364_ _3754_/CLK _3364_/D VGND VGND VPWR VPWR _3364_/Q sky130_fd_sc_hd__dfxtp_1
X_2315_ _2329_/A VGND VGND VPWR VPWR _2327_/A sky130_fd_sc_hd__buf_1
X_3295_ _3425_/CLK _3295_/D VGND VGND VPWR VPWR _3295_/Q sky130_fd_sc_hd__dfxtp_1
X_2246_ _3407_/Q _2243_/X _2244_/X _3343_/Q _2245_/X VGND VGND VPWR VPWR _2246_/X
+ sky130_fd_sc_hd__a221o_1
X_2177_ _2093_/A _2124_/X _1883_/X _2176_/X VGND VGND VPWR VPWR _3249_/D sky130_fd_sc_hd__a31o_1
XFILLER_38_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_53_478 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput14 _3555_/Q VGND VGND VPWR VPWR output_thermometer_o[69] sky130_fd_sc_hd__clkbuf_2
Xoutput25 _3715_/Q VGND VGND VPWR VPWR output_thermometer_o[229] sky130_fd_sc_hd__clkbuf_2
Xoutput58 _3495_/Q VGND VGND VPWR VPWR output_thermometer_o[9] sky130_fd_sc_hd__clkbuf_2
Xoutput36 _3716_/Q VGND VGND VPWR VPWR output_thermometer_o[230] sky130_fd_sc_hd__clkbuf_2
Xoutput47 _3628_/Q VGND VGND VPWR VPWR output_thermometer_o[142] sky130_fd_sc_hd__clkbuf_2
Xoutput69 _3718_/Q VGND VGND VPWR VPWR output_thermometer_o[232] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_268 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_442 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_497 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_412 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_142 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_342 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_164 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_153 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_175 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_397 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_197 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_186 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_21_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_39_206 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3080_ _2534_/X _3440_/Q _3208_/S VGND VGND VPWR VPWR _3591_/D sky130_fd_sc_hd__mux2_4
X_2100_ _2112_/B VGND VGND VPWR VPWR _3306_/D sky130_fd_sc_hd__inv_2
X_2031_ _2030_/Y _2040_/B _1773_/X VGND VGND VPWR VPWR _3362_/D sky130_fd_sc_hd__a21oi_1
XFILLER_47_261 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_0 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_50_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_297 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2933_ _2937_/A _2937_/B _3241_/Q VGND VGND VPWR VPWR _2933_/X sky130_fd_sc_hd__and3_1
X_2864_ _3455_/Q _2855_/X _2856_/X _3391_/Q _2863_/X VGND VGND VPWR VPWR _2864_/X
+ sky130_fd_sc_hd__a221o_1
X_2795_ _2807_/A _2807_/B _3288_/Q VGND VGND VPWR VPWR _2795_/X sky130_fd_sc_hd__and3_1
X_1815_ _1876_/A VGND VGND VPWR VPWR _1815_/X sky130_fd_sc_hd__clkbuf_2
X_1746_ _1803_/B VGND VGND VPWR VPWR _2112_/A sky130_fd_sc_hd__buf_2
XFILLER_7_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1677_ _1938_/B VGND VGND VPWR VPWR _2165_/A sky130_fd_sc_hd__buf_4
X_3416_ _3713_/CLK _3416_/D VGND VGND VPWR VPWR _3416_/Q sky130_fd_sc_hd__dfxtp_1
X_3347_ _3618_/CLK _3347_/D VGND VGND VPWR VPWR _3347_/Q sky130_fd_sc_hd__dfxtp_1
X_3278_ _3731_/CLK _3278_/D VGND VGND VPWR VPWR _3278_/Q sky130_fd_sc_hd__dfxtp_1
X_2229_ _2257_/A VGND VGND VPWR VPWR _2229_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_26_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_316 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_250 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_29_261 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2580_ _3297_/Q _2576_/X _2578_/X _3234_/Q _2579_/X VGND VGND VPWR VPWR _2580_/X
+ sky130_fd_sc_hd__a221o_1
X_3201_ _2892_/X _3319_/Q _3204_/S VGND VGND VPWR VPWR _3712_/D sky130_fd_sc_hd__mux2_2
X_3132_ _2686_/X _3388_/Q _3196_/S VGND VGND VPWR VPWR _3643_/D sky130_fd_sc_hd__mux2_1
X_3063_ _2478_/X _3457_/Q _3196_/S VGND VGND VPWR VPWR _3574_/D sky130_fd_sc_hd__mux2_2
X_2014_ _2097_/A _2016_/B VGND VGND VPWR VPWR _2014_/Y sky130_fd_sc_hd__nand2_1
XFILLER_63_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_35_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2916_ _2930_/A VGND VGND VPWR VPWR _2916_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_31_492 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2847_ _2849_/A _2849_/B _3270_/Q VGND VGND VPWR VPWR _2847_/X sky130_fd_sc_hd__and3_1
XFILLER_12_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2778_ _2778_/A VGND VGND VPWR VPWR _2789_/B sky130_fd_sc_hd__clkbuf_2
X_1729_ _1729_/A VGND VGND VPWR VPWR _2099_/B sky130_fd_sc_hd__clkbuf_4
XFILLER_58_356 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_297 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_41_245 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_17_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_20_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3750_ _3754_/CLK _3750_/D input1/X VGND VGND VPWR VPWR _3751_/D sky130_fd_sc_hd__dfrtp_1
XFILLER_9_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_430 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_13_492 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2701_ _2701_/A _2701_/B _3318_/Q VGND VGND VPWR VPWR _2701_/X sky130_fd_sc_hd__and3_1
X_3681_ _3737_/CLK _3681_/D VGND VGND VPWR VPWR _3681_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_64_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2632_ _3279_/Q _2619_/X _2620_/X _3470_/Q _2631_/X VGND VGND VPWR VPWR _2632_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput204 _3641_/Q VGND VGND VPWR VPWR output_thermometer_o[155] sky130_fd_sc_hd__clkbuf_2
Xoutput226 _3613_/Q VGND VGND VPWR VPWR output_thermometer_o[127] sky130_fd_sc_hd__clkbuf_2
Xoutput215 _3526_/Q VGND VGND VPWR VPWR output_thermometer_o[40] sky130_fd_sc_hd__clkbuf_2
X_2563_ _2567_/A _2567_/B _3365_/Q VGND VGND VPWR VPWR _2563_/X sky130_fd_sc_hd__and3_1
Xoutput248 _3621_/Q VGND VGND VPWR VPWR output_thermometer_o[135] sky130_fd_sc_hd__clkbuf_2
Xoutput259 _3604_/Q VGND VGND VPWR VPWR output_thermometer_o[118] sky130_fd_sc_hd__clkbuf_2
Xoutput237 _3678_/Q VGND VGND VPWR VPWR output_thermometer_o[192] sky130_fd_sc_hd__clkbuf_2
X_2494_ _2555_/A VGND VGND VPWR VPWR _2511_/A sky130_fd_sc_hd__buf_1
XFILLER_67_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3115_ _2636_/X _3405_/Q _3187_/S VGND VGND VPWR VPWR _3626_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3046_ _2432_/X _3474_/Q _3173_/S VGND VGND VPWR VPWR _3557_/D sky130_fd_sc_hd__mux2_2
XPHY_708 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_51_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_719 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_565 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_64_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_61_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_45_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_60_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1994_ _1842_/Y _1930_/X _1988_/X VGND VGND VPWR VPWR _3384_/D sky130_fd_sc_hd__a21oi_1
X_3733_ _3734_/CLK _3733_/D VGND VGND VPWR VPWR _3733_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3664_ _3744_/CLK _3664_/D VGND VGND VPWR VPWR _3664_/Q sky130_fd_sc_hd__dfxtp_1
X_2615_ _2629_/A VGND VGND VPWR VPWR _2627_/A sky130_fd_sc_hd__buf_1
X_3595_ _3735_/CLK _3595_/D VGND VGND VPWR VPWR _3595_/Q sky130_fd_sc_hd__dfxtp_1
X_2546_ _2560_/A VGND VGND VPWR VPWR _2546_/X sky130_fd_sc_hd__clkbuf_2
X_2477_ _2477_/A _2477_/B _3393_/Q VGND VGND VPWR VPWR _2477_/X sky130_fd_sc_hd__and3_1
XFILLER_68_473 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3029_ _2380_/X _3236_/Q _3225_/S VGND VGND VPWR VPWR _3540_/D sky130_fd_sc_hd__mux2_2
XFILLER_24_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_24_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_505 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_516 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_527 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_538 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_549 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_11_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_68 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_19_304 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_112 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_6_296 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_6_274 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2400_ _3356_/Q _2395_/X _2396_/X _3292_/Q _2399_/X VGND VGND VPWR VPWR _2400_/X
+ sky130_fd_sc_hd__a221o_1
X_3380_ _3746_/CLK _3380_/D VGND VGND VPWR VPWR _3380_/Q sky130_fd_sc_hd__dfxtp_1
X_2331_ _2341_/A _2341_/B _3442_/Q VGND VGND VPWR VPWR _2331_/X sky130_fd_sc_hd__and3_1
X_2262_ _3401_/Q _2257_/X _2258_/X _3337_/Q _2261_/X VGND VGND VPWR VPWR _2262_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_27_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2193_ _2188_/X _1903_/Y _2191_/X VGND VGND VPWR VPWR _3236_/D sky130_fd_sc_hd__o21ai_1
XFILLER_21_535 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_557 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1977_ _1975_/Y _2142_/A _1976_/X VGND VGND VPWR VPWR _3393_/D sky130_fd_sc_hd__a21oi_1
X_3716_ _3716_/CLK _3716_/D VGND VGND VPWR VPWR _3716_/Q sky130_fd_sc_hd__dfxtp_1
X_3647_ _3736_/CLK _3647_/D VGND VGND VPWR VPWR _3647_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3578_ _3709_/CLK _3578_/D VGND VGND VPWR VPWR _3578_/Q sky130_fd_sc_hd__dfxtp_1
X_2529_ _2539_/A _2539_/B _3377_/Q VGND VGND VPWR VPWR _2529_/X sky130_fd_sc_hd__and3_1
XFILLER_29_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_43_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_302 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_313 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_324 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_335 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_346 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_357 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_368 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_12_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_379 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_200 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_59_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_19_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_34_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1900_ _1899_/Y _1866_/X _1897_/X VGND VGND VPWR VPWR _3429_/D sky130_fd_sc_hd__o21ai_1
X_2880_ _3451_/Q _2872_/X _2874_/X _3387_/Q _2879_/X VGND VGND VPWR VPWR _2880_/X
+ sky130_fd_sc_hd__a221o_1
X_1831_ _1773_/X _2188_/A _1797_/A _2077_/B VGND VGND VPWR VPWR _3452_/D sky130_fd_sc_hd__o22ai_1
X_1762_ _1728_/X _2056_/B _1761_/X VGND VGND VPWR VPWR _3471_/D sky130_fd_sc_hd__o21ai_1
X_3501_ _3736_/CLK _3501_/D VGND VGND VPWR VPWR _3501_/Q sky130_fd_sc_hd__dfxtp_1
X_1693_ _2176_/A VGND VGND VPWR VPWR _3481_/D sky130_fd_sc_hd__clkbuf_2
X_3432_ _3450_/CLK _3432_/D VGND VGND VPWR VPWR _3432_/Q sky130_fd_sc_hd__dfxtp_1
X_3363_ _3734_/CLK _3363_/D VGND VGND VPWR VPWR _3363_/Q sky130_fd_sc_hd__dfxtp_1
X_2314_ _3384_/Q _2305_/X _2306_/X _3320_/Q _2313_/X VGND VGND VPWR VPWR _2314_/X
+ sky130_fd_sc_hd__a221o_1
X_3294_ _3452_/CLK _3294_/D VGND VGND VPWR VPWR _3294_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2245_ _2251_/A _2251_/B _3471_/Q VGND VGND VPWR VPWR _2245_/X sky130_fd_sc_hd__and3_1
X_2176_ _2176_/A VGND VGND VPWR VPWR _2176_/X sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_65_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_53_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xoutput15 _3598_/Q VGND VGND VPWR VPWR output_thermometer_o[112] sky130_fd_sc_hd__clkbuf_2
Xoutput48 _3727_/Q VGND VGND VPWR VPWR output_thermometer_o[241] sky130_fd_sc_hd__clkbuf_2
Xoutput26 _3568_/Q VGND VGND VPWR VPWR output_thermometer_o[82] sky130_fd_sc_hd__clkbuf_2
Xoutput37 _3620_/Q VGND VGND VPWR VPWR output_thermometer_o[134] sky130_fd_sc_hd__clkbuf_2
Xoutput59 _3603_/Q VGND VGND VPWR VPWR output_thermometer_o[117] sky130_fd_sc_hd__clkbuf_2
XFILLER_56_45 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_487 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_402 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_12_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_143 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_165 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_154 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_176 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_198 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_187 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_21_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_39_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2030_ _2184_/C _2030_/B VGND VGND VPWR VPWR _2030_/Y sky130_fd_sc_hd__nand2_1
XFILLER_62_221 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_265 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_1 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2932_ _3433_/Q _2929_/X _2930_/X _3369_/Q _2931_/X VGND VGND VPWR VPWR _2932_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_50_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2863_ _2863_/A _2863_/B _3264_/Q VGND VGND VPWR VPWR _2863_/X sky130_fd_sc_hd__and3_1
X_2794_ _2852_/A VGND VGND VPWR VPWR _2807_/B sky130_fd_sc_hd__buf_1
X_1814_ _1797_/X _2072_/A _1805_/X VGND VGND VPWR VPWR _3457_/D sky130_fd_sc_hd__o21ai_1
X_1745_ _2052_/A _1744_/X _1715_/X VGND VGND VPWR VPWR _3474_/D sky130_fd_sc_hd__o21ai_1
X_1676_ _1803_/A _1920_/A VGND VGND VPWR VPWR _1987_/A sky130_fd_sc_hd__nor2_8
X_3415_ _3479_/CLK _3415_/D VGND VGND VPWR VPWR _3415_/Q sky130_fd_sc_hd__dfxtp_1
X_3346_ _3476_/CLK _3346_/D VGND VGND VPWR VPWR _3346_/Q sky130_fd_sc_hd__dfxtp_1
X_3277_ _3731_/CLK _3277_/D VGND VGND VPWR VPWR _3277_/Q sky130_fd_sc_hd__dfxtp_1
X_2228_ _3413_/Q _2211_/X _2214_/X _3349_/Q _2227_/X VGND VGND VPWR VPWR _2228_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_26_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2159_ _2158_/X _1981_/Y _2152_/X _2153_/X VGND VGND VPWR VPWR _3264_/D sky130_fd_sc_hd__a31oi_1
XFILLER_26_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_41_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_41_438 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_298 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_42_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_67_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_67_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_57_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_29_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_221 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_361 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3200_ _2890_/X _3320_/Q _3230_/S VGND VGND VPWR VPWR _3711_/D sky130_fd_sc_hd__mux2_1
X_3131_ _2684_/X _3389_/Q _3196_/S VGND VGND VPWR VPWR _3642_/D sky130_fd_sc_hd__mux2_2
X_3062_ _2476_/X _3458_/Q _3192_/S VGND VGND VPWR VPWR _3573_/D sky130_fd_sc_hd__mux2_1
X_2013_ _1878_/Y _2012_/X _2006_/X VGND VGND VPWR VPWR _3373_/D sky130_fd_sc_hd__a21oi_1
X_2915_ _2929_/A VGND VGND VPWR VPWR _2915_/X sky130_fd_sc_hd__clkbuf_2
X_2846_ _3462_/Q _2841_/X _2842_/X _3398_/Q _2845_/X VGND VGND VPWR VPWR _2846_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_12_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2777_ _2777_/A VGND VGND VPWR VPWR _2789_/A sky130_fd_sc_hd__clkbuf_2
X_1728_ _1797_/A VGND VGND VPWR VPWR _1728_/X sky130_fd_sc_hd__clkbuf_2
X_1659_ _1659_/A VGND VGND VPWR VPWR _1659_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_58_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3329_ _3420_/CLK _3329_/D VGND VGND VPWR VPWR _3329_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_37_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_519 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_405 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_232 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_438 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_305 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_379 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_563 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_213 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_60_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2700_ _3256_/Q _2693_/X _2694_/X _3447_/Q _2699_/X VGND VGND VPWR VPWR _2700_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_9_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3680_ _3713_/CLK _3680_/D VGND VGND VPWR VPWR _3680_/Q sky130_fd_sc_hd__dfxtp_1
X_2631_ _2641_/A _2641_/B _3342_/Q VGND VGND VPWR VPWR _2631_/X sky130_fd_sc_hd__and3_1
Xoutput216 _3702_/Q VGND VGND VPWR VPWR output_thermometer_o[216] sky130_fd_sc_hd__clkbuf_2
XFILLER_57_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
Xoutput205 _3520_/Q VGND VGND VPWR VPWR output_thermometer_o[34] sky130_fd_sc_hd__clkbuf_2
X_2562_ _3302_/Q _2559_/X _2560_/X _3239_/Q _2561_/X VGND VGND VPWR VPWR _2562_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput238 _3537_/Q VGND VGND VPWR VPWR output_thermometer_o[51] sky130_fd_sc_hd__clkbuf_2
Xoutput249 _3670_/Q VGND VGND VPWR VPWR output_thermometer_o[184] sky130_fd_sc_hd__clkbuf_2
Xoutput227 _3663_/Q VGND VGND VPWR VPWR output_thermometer_o[177] sky130_fd_sc_hd__clkbuf_2
X_2493_ _2643_/A VGND VGND VPWR VPWR _2555_/A sky130_fd_sc_hd__buf_2
XFILLER_4_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3114_ _2632_/X _3406_/Q _3179_/S VGND VGND VPWR VPWR _3625_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3045_ _2430_/X _3475_/Q _3173_/S VGND VGND VPWR VPWR _3556_/D sky130_fd_sc_hd__mux2_2
XPHY_709 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2829_ _2835_/A _2835_/B _3277_/Q VGND VGND VPWR VPWR _2829_/X sky130_fd_sc_hd__and3_1
XFILLER_2_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_42_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_8 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_64_168 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_18_541 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_33_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1993_ _1639_/A _2040_/B _1773_/X VGND VGND VPWR VPWR _3385_/D sky130_fd_sc_hd__a21oi_1
X_3732_ _3734_/CLK _3732_/D VGND VGND VPWR VPWR _3732_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3663_ _3744_/CLK _3663_/D VGND VGND VPWR VPWR _3663_/Q sky130_fd_sc_hd__dfxtp_1
X_2614_ _3285_/Q _2605_/X _2606_/X _3476_/Q _2613_/X VGND VGND VPWR VPWR _2614_/X
+ sky130_fd_sc_hd__a221o_1
X_3594_ _3745_/CLK _3594_/D VGND VGND VPWR VPWR _3594_/Q sky130_fd_sc_hd__dfxtp_1
X_2545_ _2559_/A VGND VGND VPWR VPWR _2545_/X sky130_fd_sc_hd__clkbuf_2
X_2476_ _3330_/Q _2469_/X _2470_/X _3267_/Q _2475_/X VGND VGND VPWR VPWR _2476_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_55_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3028_ _2376_/X _3237_/Q _3219_/S VGND VGND VPWR VPWR _3539_/D sky130_fd_sc_hd__mux2_2
XPHY_506 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_517 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_34_59 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_528 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_539 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_51_385 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_7_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2330_ _2330_/A VGND VGND VPWR VPWR _2341_/B sky130_fd_sc_hd__clkbuf_2
X_2261_ _2265_/A _2265_/B _3465_/Q VGND VGND VPWR VPWR _2261_/X sky130_fd_sc_hd__and3_1
XFILLER_65_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2192_ _2188_/X _1901_/Y _2191_/X VGND VGND VPWR VPWR _3237_/D sky130_fd_sc_hd__o21ai_1
XFILLER_1_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_488 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_393 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_138 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_33_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1976_ _2006_/A VGND VGND VPWR VPWR _1976_/X sky130_fd_sc_hd__clkbuf_2
X_3715_ _3722_/CLK _3715_/D VGND VGND VPWR VPWR _3715_/Q sky130_fd_sc_hd__dfxtp_1
X_3646_ _3736_/CLK _3646_/D VGND VGND VPWR VPWR _3646_/Q sky130_fd_sc_hd__dfxtp_1
X_3577_ _3709_/CLK _3577_/D VGND VGND VPWR VPWR _3577_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_407 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2528_ _2556_/A VGND VGND VPWR VPWR _2539_/B sky130_fd_sc_hd__buf_1
X_2459_ _2463_/A _2463_/B _3400_/Q VGND VGND VPWR VPWR _2459_/X sky130_fd_sc_hd__and3_1
XFILLER_56_422 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_56_444 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_303 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_314 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_325 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_336 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_347 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_358 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_369 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_47_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_422 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_92 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_62_403 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1830_ _1954_/B _1828_/X _1990_/C _1907_/A VGND VGND VPWR VPWR _2077_/B sky130_fd_sc_hd__a31oi_4
X_3500_ _3722_/CLK _3500_/D VGND VGND VPWR VPWR _3500_/Q sky130_fd_sc_hd__dfxtp_1
X_1761_ _1846_/A VGND VGND VPWR VPWR _1761_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_51_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1692_ _2041_/A _2040_/B VGND VGND VPWR VPWR _3482_/D sky130_fd_sc_hd__nand2_4
X_3431_ _3431_/CLK _3431_/D VGND VGND VPWR VPWR _3431_/Q sky130_fd_sc_hd__dfxtp_1
X_3362_ _3425_/CLK _3362_/D VGND VGND VPWR VPWR _3362_/Q sky130_fd_sc_hd__dfxtp_1
X_2313_ _2313_/A _2313_/B _3448_/Q VGND VGND VPWR VPWR _2313_/X sky130_fd_sc_hd__and3_1
X_3293_ _3452_/CLK _3293_/D VGND VGND VPWR VPWR _3293_/Q sky130_fd_sc_hd__dfxtp_1
X_2244_ _2258_/A VGND VGND VPWR VPWR _2244_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_38_422 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2175_ _2165_/X _2124_/X _2092_/A _2170_/X VGND VGND VPWR VPWR _3250_/D sky130_fd_sc_hd__a31o_1
XFILLER_53_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_499 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_447 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_311 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_377 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1959_ _2020_/B _2142_/A _1773_/X VGND VGND VPWR VPWR _3401_/D sky130_fd_sc_hd__a21oi_2
X_3629_ _3707_/CLK _3629_/D VGND VGND VPWR VPWR _3629_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput16 _3730_/Q VGND VGND VPWR VPWR output_thermometer_o[244] sky130_fd_sc_hd__clkbuf_2
Xoutput38 _3601_/Q VGND VGND VPWR VPWR output_thermometer_o[115] sky130_fd_sc_hd__clkbuf_2
Xoutput27 _3490_/Q VGND VGND VPWR VPWR output_thermometer_o[4] sky130_fd_sc_hd__clkbuf_2
Xoutput49 _3596_/Q VGND VGND VPWR VPWR output_thermometer_o[110] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_204 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_29_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_100 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_144 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_155 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_166 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_199 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_188 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_177 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_348 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_2 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2931_ _2937_/A _2937_/B _3242_/Q VGND VGND VPWR VPWR _2931_/X sky130_fd_sc_hd__and3_1
XFILLER_43_491 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_30_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2862_ _3456_/Q _2855_/X _2856_/X _3392_/Q _2861_/X VGND VGND VPWR VPWR _2862_/X
+ sky130_fd_sc_hd__a221o_1
X_2793_ _2867_/A VGND VGND VPWR VPWR _2852_/A sky130_fd_sc_hd__buf_2
XFILLER_30_174 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1813_ _1917_/B _1975_/B _1710_/A VGND VGND VPWR VPWR _2072_/A sky130_fd_sc_hd__a21oi_4
X_1744_ _1876_/A VGND VGND VPWR VPWR _1744_/X sky130_fd_sc_hd__buf_2
XFILLER_7_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3414_ _3618_/CLK _3414_/D VGND VGND VPWR VPWR _3414_/Q sky130_fd_sc_hd__dfxtp_1
X_1675_ _1722_/A _1822_/B VGND VGND VPWR VPWR _1920_/A sky130_fd_sc_hd__nand2_8
X_3345_ _3476_/CLK _3345_/D VGND VGND VPWR VPWR _3345_/Q sky130_fd_sc_hd__dfxtp_1
X_3276_ _3467_/CLK _3276_/D VGND VGND VPWR VPWR _3276_/Q sky130_fd_sc_hd__dfxtp_1
X_2227_ _2237_/A _2237_/B _3477_/Q VGND VGND VPWR VPWR _2227_/X sky130_fd_sc_hd__and3_1
XFILLER_66_572 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2158_ _2158_/A VGND VGND VPWR VPWR _2158_/X sky130_fd_sc_hd__clkbuf_2
X_2089_ _2091_/A _2089_/B VGND VGND VPWR VPWR _3316_/D sky130_fd_sc_hd__nor2_1
XFILLER_1_546 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_57_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_29_241 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_296 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_255 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_32_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_40_450 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_12_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3130_ _2682_/X _3390_/Q _3196_/S VGND VGND VPWR VPWR _3641_/D sky130_fd_sc_hd__mux2_1
X_3061_ _2474_/X _3459_/Q _3192_/S VGND VGND VPWR VPWR _3572_/D sky130_fd_sc_hd__mux2_1
XFILLER_48_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2012_ _2033_/A VGND VGND VPWR VPWR _2012_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_35_222 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2914_ _3439_/Q _2901_/X _2902_/X _3375_/Q _2913_/X VGND VGND VPWR VPWR _2914_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_31_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2845_ _2849_/A _2849_/B _3271_/Q VGND VGND VPWR VPWR _2845_/X sky130_fd_sc_hd__and3_1
X_2776_ _3485_/Q _2767_/X _2768_/X _3421_/Q _2775_/X VGND VGND VPWR VPWR _2776_/X
+ sky130_fd_sc_hd__a221o_1
X_1727_ _1743_/A VGND VGND VPWR VPWR _1797_/A sky130_fd_sc_hd__buf_2
X_1658_ _2191_/A VGND VGND VPWR VPWR _1659_/A sky130_fd_sc_hd__buf_2
X_3328_ _3705_/CLK _3328_/D VGND VGND VPWR VPWR _3328_/Q sky130_fd_sc_hd__dfxtp_1
X_3259_ _3482_/CLK _3259_/D VGND VGND VPWR VPWR _3259_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_41_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_37_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_542 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_60_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_32_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2630_ _2630_/A VGND VGND VPWR VPWR _2641_/B sky130_fd_sc_hd__buf_1
Xoutput206 _3624_/Q VGND VGND VPWR VPWR output_thermometer_o[138] sky130_fd_sc_hd__clkbuf_2
Xoutput217 _3625_/Q VGND VGND VPWR VPWR output_thermometer_o[139] sky130_fd_sc_hd__clkbuf_2
X_2561_ _2567_/A _2567_/B _3366_/Q VGND VGND VPWR VPWR _2561_/X sky130_fd_sc_hd__and3_1
Xoutput228 _3634_/Q VGND VGND VPWR VPWR output_thermometer_o[148] sky130_fd_sc_hd__clkbuf_2
X_2492_ _3324_/Q _2483_/X _2484_/X _3261_/Q _2491_/X VGND VGND VPWR VPWR _2492_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput239 _3657_/Q VGND VGND VPWR VPWR output_thermometer_o[171] sky130_fd_sc_hd__clkbuf_2
XFILLER_4_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_4_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3113_ _2628_/X _3407_/Q _3179_/S VGND VGND VPWR VPWR _3624_/D sky130_fd_sc_hd__mux2_2
XFILLER_67_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_317 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3044_ _2424_/X _3476_/Q _3173_/S VGND VGND VPWR VPWR _3555_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_553 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2828_ _2856_/A VGND VGND VPWR VPWR _2828_/X sky130_fd_sc_hd__clkbuf_2
X_2759_ _2761_/A _2761_/B _3299_/Q VGND VGND VPWR VPWR _2759_/X sky130_fd_sc_hd__and3_1
XFILLER_48_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_564 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_54_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_14_225 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_22_291 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_6_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_60_397 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1992_ _2040_/A _2142_/A VGND VGND VPWR VPWR _3386_/D sky130_fd_sc_hd__nor2_1
X_3731_ _3731_/CLK _3731_/D VGND VGND VPWR VPWR _3731_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_13_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3662_ _3720_/CLK _3662_/D VGND VGND VPWR VPWR _3662_/Q sky130_fd_sc_hd__dfxtp_1
X_3593_ _3734_/CLK _3593_/D VGND VGND VPWR VPWR _3593_/Q sky130_fd_sc_hd__dfxtp_1
X_2613_ _2613_/A _2613_/B _3348_/Q VGND VGND VPWR VPWR _2613_/X sky130_fd_sc_hd__and3_1
X_2544_ _3308_/Q _2531_/X _2532_/X _3245_/Q _2543_/X VGND VGND VPWR VPWR _2544_/X
+ sky130_fd_sc_hd__a221o_1
X_2475_ _2477_/A _2477_/B _3394_/Q VGND VGND VPWR VPWR _2475_/X sky130_fd_sc_hd__and3_1
XFILLER_68_431 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_328 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3027_ _2374_/X _3238_/Q _3219_/S VGND VGND VPWR VPWR _3538_/D sky130_fd_sc_hd__mux2_2
XPHY_507 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_518 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_529 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_464 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_61_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_54_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_10_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_6_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_221 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_6_287 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_471 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2260_ _3402_/Q _2257_/X _2258_/X _3338_/Q _2259_/X VGND VGND VPWR VPWR _2260_/X
+ sky130_fd_sc_hd__a221o_1
X_2191_ _2191_/A VGND VGND VPWR VPWR _2191_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_65_434 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_147 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1975_ _1975_/A _1975_/B VGND VGND VPWR VPWR _1975_/Y sky130_fd_sc_hd__nand2_1
X_3714_ _3714_/CLK _3714_/D VGND VGND VPWR VPWR _3714_/Q sky130_fd_sc_hd__dfxtp_1
X_3645_ _3714_/CLK _3645_/D VGND VGND VPWR VPWR _3645_/Q sky130_fd_sc_hd__dfxtp_1
X_3576_ _3713_/CLK _3576_/D VGND VGND VPWR VPWR _3576_/Q sky130_fd_sc_hd__dfxtp_1
X_2527_ _2555_/A VGND VGND VPWR VPWR _2539_/A sky130_fd_sc_hd__buf_1
X_2458_ _3337_/Q _2455_/X _2456_/X _3274_/Q _2457_/X VGND VGND VPWR VPWR _2458_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_29_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_401 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2389_ _2389_/A _2389_/B _3423_/Q VGND VGND VPWR VPWR _2389_/X sky130_fd_sc_hd__and3_1
XFILLER_36_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_304 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_315 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_326 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_337 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_348 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_359 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_20_570 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_92 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_30_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1760_ _1981_/A _1771_/B VGND VGND VPWR VPWR _2056_/B sky130_fd_sc_hd__nor2_4
XFILLER_7_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1691_ _1691_/A VGND VGND VPWR VPWR _2040_/B sky130_fd_sc_hd__inv_2
X_3430_ _3754_/CLK _3430_/D VGND VGND VPWR VPWR _3430_/Q sky130_fd_sc_hd__dfxtp_1
X_3361_ _3425_/CLK _3361_/D VGND VGND VPWR VPWR _3361_/Q sky130_fd_sc_hd__dfxtp_1
X_2312_ _3385_/Q _2305_/X _2306_/X _3321_/Q _2311_/X VGND VGND VPWR VPWR _2312_/X
+ sky130_fd_sc_hd__a221o_1
X_3292_ _3452_/CLK _3292_/D VGND VGND VPWR VPWR _3292_/Q sky130_fd_sc_hd__dfxtp_1
X_2243_ _2257_/A VGND VGND VPWR VPWR _2243_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_38_412 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2174_ _1860_/A _2124_/X _1883_/X _2170_/X VGND VGND VPWR VPWR _3251_/D sky130_fd_sc_hd__a31o_1
XFILLER_53_404 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_65_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_33_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1958_ _2040_/A _2141_/A VGND VGND VPWR VPWR _3402_/D sky130_fd_sc_hd__nor2_1
X_1889_ _2184_/C _1747_/B _2194_/B _2184_/A VGND VGND VPWR VPWR _3433_/D sky130_fd_sc_hd__a31o_1
X_3628_ _3722_/CLK _3628_/D VGND VGND VPWR VPWR _3628_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput28 _3731_/Q VGND VGND VPWR VPWR output_thermometer_o[245] sky130_fd_sc_hd__clkbuf_2
Xoutput39 _3698_/Q VGND VGND VPWR VPWR output_thermometer_o[212] sky130_fd_sc_hd__clkbuf_2
Xoutput17 _3569_/Q VGND VGND VPWR VPWR output_thermometer_o[83] sky130_fd_sc_hd__clkbuf_2
X_3559_ _3736_/CLK _3559_/D VGND VGND VPWR VPWR _3559_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_434 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_478 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_112 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_12_301 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_145 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_156 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_167 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_189 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_178 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_62_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_35_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2930_ _2930_/A VGND VGND VPWR VPWR _2930_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_43_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_19_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3745_/CLK sky130_fd_sc_hd__clkbuf_16
X_2861_ _2863_/A _2863_/B _3265_/Q VGND VGND VPWR VPWR _2861_/X sky130_fd_sc_hd__and3_1
X_1812_ _1797_/X _2071_/A _1805_/X VGND VGND VPWR VPWR _3458_/D sky130_fd_sc_hd__o21ai_1
X_2792_ _2851_/A VGND VGND VPWR VPWR _2807_/A sky130_fd_sc_hd__buf_1
XPHY_690 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1743_ _1743_/A VGND VGND VPWR VPWR _1876_/A sky130_fd_sc_hd__buf_2
X_1674_ _1758_/A _2030_/B _1753_/B VGND VGND VPWR VPWR _1822_/B sky130_fd_sc_hd__nand3_4
X_3413_ _3618_/CLK _3413_/D VGND VGND VPWR VPWR _3413_/Q sky130_fd_sc_hd__dfxtp_1
X_3344_ _3479_/CLK _3344_/D VGND VGND VPWR VPWR _3344_/Q sky130_fd_sc_hd__dfxtp_1
X_3275_ _3479_/CLK _3275_/D VGND VGND VPWR VPWR _3275_/Q sky130_fd_sc_hd__dfxtp_1
X_2226_ _2969_/B VGND VGND VPWR VPWR _2237_/B sky130_fd_sc_hd__buf_1
X_2157_ _2149_/X _1978_/Y _2152_/X _2153_/X VGND VGND VPWR VPWR _3265_/D sky130_fd_sc_hd__a31oi_1
XFILLER_53_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2088_ _3321_/D _2088_/B VGND VGND VPWR VPWR _3317_/D sky130_fd_sc_hd__and2_1
XFILLER_53_267 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_529 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_57_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_29_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_407 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_12_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_8_168 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3060_ _2472_/X _3460_/Q _3192_/S VGND VGND VPWR VPWR _3571_/D sky130_fd_sc_hd__mux2_2
X_2011_ _2010_/Y _2002_/X _2006_/X VGND VGND VPWR VPWR _3374_/D sky130_fd_sc_hd__a21oi_1
XFILLER_16_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_16_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2913_ _2923_/A _2923_/B _3248_/Q VGND VGND VPWR VPWR _2913_/X sky130_fd_sc_hd__and3_1
X_2844_ _3463_/Q _2841_/X _2842_/X _3399_/Q _2843_/X VGND VGND VPWR VPWR _2844_/X
+ sky130_fd_sc_hd__a221o_1
X_2775_ _2775_/A _2775_/B _3293_/Q VGND VGND VPWR VPWR _2775_/X sky130_fd_sc_hd__and3_1
X_1726_ _1697_/X _2049_/A _3417_/D VGND VGND VPWR VPWR _3477_/D sky130_fd_sc_hd__a21o_1
X_1657_ _2176_/A VGND VGND VPWR VPWR _2191_/A sky130_fd_sc_hd__inv_2
X_3327_ _3735_/CLK _3327_/D VGND VGND VPWR VPWR _3327_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_58_348 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3258_ _3482_/CLK _3258_/D VGND VGND VPWR VPWR _3258_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3189_ _2854_/X _3331_/Q _3192_/S VGND VGND VPWR VPWR _3700_/D sky130_fd_sc_hd__mux2_1
XFILLER_26_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2209_ _2865_/A _2212_/A VGND VGND VPWR VPWR _2871_/A sky130_fd_sc_hd__nor2_2
XFILLER_54_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_26_245 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_14_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_49_304 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_359 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_9_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput207 _3534_/Q VGND VGND VPWR VPWR output_thermometer_o[48] sky130_fd_sc_hd__clkbuf_2
X_2560_ _2560_/A VGND VGND VPWR VPWR _2560_/X sky130_fd_sc_hd__clkbuf_2
X_2491_ _2491_/A _2491_/B _3388_/Q VGND VGND VPWR VPWR _2491_/X sky130_fd_sc_hd__and3_1
Xoutput218 _3696_/Q VGND VGND VPWR VPWR output_thermometer_o[210] sky130_fd_sc_hd__clkbuf_2
XFILLER_4_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput229 _3725_/Q VGND VGND VPWR VPWR output_thermometer_o[239] sky130_fd_sc_hd__clkbuf_2
XFILLER_4_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_55_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3112_ _2626_/X _3408_/Q _3179_/S VGND VGND VPWR VPWR _3623_/D sky130_fd_sc_hd__mux2_1
X_3043_ _2418_/X _3477_/Q _3173_/S VGND VGND VPWR VPWR _3554_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_215 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_31_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2827_ _2855_/A VGND VGND VPWR VPWR _2827_/X sky130_fd_sc_hd__clkbuf_2
X_2758_ _3237_/Q _2753_/X _2754_/X _3428_/Q _2757_/X VGND VGND VPWR VPWR _2758_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_2_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1709_ _1709_/A _1738_/B VGND VGND VPWR VPWR _2086_/A sky130_fd_sc_hd__nand2_2
X_2689_ _2703_/A VGND VGND VPWR VPWR _2701_/A sky130_fd_sc_hd__buf_1
XFILLER_58_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_54_340 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_10_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_38_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_45_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_45_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1991_ _1980_/X _1990_/Y _1988_/X VGND VGND VPWR VPWR _3387_/D sky130_fd_sc_hd__a21oi_1
X_3730_ _3737_/CLK _3730_/D VGND VGND VPWR VPWR _3730_/Q sky130_fd_sc_hd__dfxtp_1
X_3661_ _3744_/CLK _3661_/D VGND VGND VPWR VPWR _3661_/Q sky130_fd_sc_hd__dfxtp_1
X_3592_ _3734_/CLK _3592_/D VGND VGND VPWR VPWR _3592_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_62_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2612_ _3286_/Q _2605_/X _2606_/X _3477_/Q _2611_/X VGND VGND VPWR VPWR _2612_/X
+ sky130_fd_sc_hd__a221o_1
X_2543_ _2553_/A _2553_/B _3372_/Q VGND VGND VPWR VPWR _2543_/X sky130_fd_sc_hd__and3_1
X_2474_ _3331_/Q _2469_/X _2470_/X _3268_/Q _2473_/X VGND VGND VPWR VPWR _2474_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3026_ _2372_/X _3239_/Q _3219_/S VGND VGND VPWR VPWR _3537_/D sky130_fd_sc_hd__mux2_1
XPHY_508 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_63_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_557 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_519 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_11_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_59_476 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_27_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_42_332 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_262 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2190_ _2107_/A _1651_/X _2180_/X VGND VGND VPWR VPWR _3238_/D sky130_fd_sc_hd__o21ai_1
XFILLER_1_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_527 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_387 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1974_ _1966_/X _1973_/Y _1964_/X VGND VGND VPWR VPWR _3394_/D sky130_fd_sc_hd__a21oi_1
X_3713_ _3713_/CLK _3713_/D VGND VGND VPWR VPWR _3713_/Q sky130_fd_sc_hd__dfxtp_1
X_3644_ _3714_/CLK _3644_/D VGND VGND VPWR VPWR _3644_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3575_ _3714_/CLK _3575_/D VGND VGND VPWR VPWR _3575_/Q sky130_fd_sc_hd__dfxtp_1
X_2526_ _3314_/Q _2517_/X _2518_/X _3251_/Q _2525_/X VGND VGND VPWR VPWR _2526_/X
+ sky130_fd_sc_hd__a221o_1
X_2457_ _2463_/A _2463_/B _3401_/Q VGND VGND VPWR VPWR _2457_/X sky130_fd_sc_hd__and3_1
XFILLER_68_262 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2388_ _3360_/Q _2381_/X _2382_/X _3296_/Q _2387_/X VGND VGND VPWR VPWR _2388_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_28_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_56_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3009_ _2318_/X _3256_/Q _3230_/S VGND VGND VPWR VPWR _3520_/D sky130_fd_sc_hd__mux2_1
XPHY_305 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_316 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_332 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_12_516 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_327 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_338 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_349 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_10_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_10_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_62_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_15_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_357 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1690_ _1689_/Y _1651_/X _1659_/X VGND VGND VPWR VPWR _3483_/D sky130_fd_sc_hd__o21ai_1
X_3360_ _3453_/CLK _3360_/D VGND VGND VPWR VPWR _3360_/Q sky130_fd_sc_hd__dfxtp_1
X_2311_ _2313_/A _2313_/B _3449_/Q VGND VGND VPWR VPWR _2311_/X sky130_fd_sc_hd__and3_1
X_3291_ _3452_/CLK _3291_/D VGND VGND VPWR VPWR _3291_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_25_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2242_ _3408_/Q _2229_/X _2230_/X _3344_/Q _2241_/X VGND VGND VPWR VPWR _2242_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_65_221 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2173_ _1857_/A _1869_/X _2124_/A _2170_/X VGND VGND VPWR VPWR _3252_/D sky130_fd_sc_hd__a31o_1
XFILLER_65_254 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_65_276 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_33_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_368 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1957_ _2063_/A _2002_/A _1689_/Y _1956_/X VGND VGND VPWR VPWR _3403_/D sky130_fd_sc_hd__a31oi_1
X_1888_ _2079_/C VGND VGND VPWR VPWR _2194_/B sky130_fd_sc_hd__clkbuf_2
X_3627_ _3714_/CLK _3627_/D VGND VGND VPWR VPWR _3627_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput18 _3540_/Q VGND VGND VPWR VPWR output_thermometer_o[54] sky130_fd_sc_hd__clkbuf_2
X_3558_ _3737_/CLK _3558_/D VGND VGND VPWR VPWR _3558_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput29 _3547_/Q VGND VGND VPWR VPWR output_thermometer_o[61] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_228 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2509_ _2511_/A _2511_/B _3384_/Q VGND VGND VPWR VPWR _2509_/X sky130_fd_sc_hd__and3_1
X_3489_ _3739_/CLK _3489_/D VGND VGND VPWR VPWR _3489_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_29_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_151 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_102 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_146 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_157 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_168 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_179 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_4_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_67_508 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_438 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_4 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_50_419 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_15_184 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2860_ _3457_/Q _2855_/X _2856_/X _3393_/Q _2859_/X VGND VGND VPWR VPWR _2860_/X
+ sky130_fd_sc_hd__a221o_1
X_1811_ _1917_/B _1973_/B _1860_/B VGND VGND VPWR VPWR _2071_/A sky130_fd_sc_hd__a21oi_4
XPHY_680 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2791_ _2865_/A VGND VGND VPWR VPWR _2851_/A sky130_fd_sc_hd__buf_2
XPHY_691 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_350 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1742_ _2062_/A _1973_/B VGND VGND VPWR VPWR _2052_/A sky130_fd_sc_hd__nor2_4
XFILLER_30_198 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_7_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1673_ input9/X VGND VGND VPWR VPWR _2030_/B sky130_fd_sc_hd__buf_2
X_3412_ _3479_/CLK _3412_/D VGND VGND VPWR VPWR _3412_/Q sky130_fd_sc_hd__dfxtp_1
X_3343_ _3476_/CLK _3343_/D VGND VGND VPWR VPWR _3343_/Q sky130_fd_sc_hd__dfxtp_1
X_3274_ _3479_/CLK _3274_/D VGND VGND VPWR VPWR _3274_/Q sky130_fd_sc_hd__dfxtp_1
X_2225_ _2954_/A VGND VGND VPWR VPWR _2969_/B sky130_fd_sc_hd__clkbuf_2
X_2156_ _1619_/Y _2030_/B _1877_/X _3259_/D VGND VGND VPWR VPWR _3266_/D sky130_fd_sc_hd__a31o_1
X_2087_ _2091_/A _2087_/B VGND VGND VPWR VPWR _3318_/D sky130_fd_sc_hd__nor2_1
XFILLER_53_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2989_ _2256_/X _3276_/Q _3187_/S VGND VGND VPWR VPWR _3500_/D sky130_fd_sc_hd__mux2_1
XFILLER_67_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_441 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_114 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_61 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_316 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_67_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2010_ _2095_/A _2016_/B VGND VGND VPWR VPWR _2010_/Y sky130_fd_sc_hd__nand2_1
XFILLER_48_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_35_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_35_268 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2912_ _2926_/A VGND VGND VPWR VPWR _2923_/B sky130_fd_sc_hd__buf_1
XFILLER_31_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2843_ _2849_/A _2849_/B _3272_/Q VGND VGND VPWR VPWR _2843_/X sky130_fd_sc_hd__and3_1
X_2774_ _3231_/Q _2767_/X _2768_/X _3422_/Q _2773_/X VGND VGND VPWR VPWR _2774_/X
+ sky130_fd_sc_hd__a221o_1
X_1725_ _2107_/A _1747_/C VGND VGND VPWR VPWR _2049_/A sky130_fd_sc_hd__nand2_2
X_1656_ _2041_/B _2142_/B VGND VGND VPWR VPWR _2176_/A sky130_fd_sc_hd__nand2_2
X_3326_ _3734_/CLK _3326_/D VGND VGND VPWR VPWR _3326_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_305 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3257_ _3449_/CLK _3257_/D VGND VGND VPWR VPWR _3257_/Q sky130_fd_sc_hd__dfxtp_1
X_2208_ _3748_/Q VGND VGND VPWR VPWR _2212_/A sky130_fd_sc_hd__inv_2
X_3188_ _2850_/X _3332_/Q _3192_/S VGND VGND VPWR VPWR _3699_/D sky130_fd_sc_hd__mux2_2
XFILLER_54_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_26_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2139_ _1665_/X _2060_/B _1659_/X VGND VGND VPWR VPWR _3277_/D sky130_fd_sc_hd__o21ai_1
XFILLER_54_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_41_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_49 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_18_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3734_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_17_213 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_268 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_441 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_13_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput208 _3745_/Q VGND VGND VPWR VPWR output_binary_o[1] sky130_fd_sc_hd__clkbuf_2
Xoutput219 _3528_/Q VGND VGND VPWR VPWR output_thermometer_o[42] sky130_fd_sc_hd__clkbuf_2
X_2490_ _3325_/Q _2483_/X _2484_/X _3262_/Q _2489_/X VGND VGND VPWR VPWR _2490_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_4_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3111_ _2624_/X _3409_/Q _3179_/S VGND VGND VPWR VPWR _3622_/D sky130_fd_sc_hd__mux2_1
XFILLER_67_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3042_ _2416_/X _3478_/Q _3173_/S VGND VGND VPWR VPWR _3553_/D sky130_fd_sc_hd__mux2_1
XFILLER_63_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_51_569 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2826_ _3469_/Q _2813_/X _2814_/X _3405_/Q _2825_/X VGND VGND VPWR VPWR _2826_/X
+ sky130_fd_sc_hd__a221o_1
X_2757_ _2761_/A _2761_/B _3300_/Q VGND VGND VPWR VPWR _2757_/X sky130_fd_sc_hd__and3_1
X_1708_ _1708_/A _1763_/A VGND VGND VPWR VPWR _1709_/A sky130_fd_sc_hd__nor2_4
X_2688_ _3260_/Q _2679_/X _2680_/X _3451_/Q _2687_/X VGND VGND VPWR VPWR _2688_/X
+ sky130_fd_sc_hd__a221o_1
X_1639_ _1639_/A _1694_/B VGND VGND VPWR VPWR _1938_/B sky130_fd_sc_hd__nand2_2
XFILLER_58_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3309_ _3450_/CLK _3309_/D VGND VGND VPWR VPWR _3309_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_10_433 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_426 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_1_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_64_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_33_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1990_ _1990_/A _1990_/B _1990_/C VGND VGND VPWR VPWR _1990_/Y sky130_fd_sc_hd__nand3_2
XFILLER_13_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3660_ _3722_/CLK _3660_/D VGND VGND VPWR VPWR _3660_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3591_ _3737_/CLK _3591_/D VGND VGND VPWR VPWR _3591_/Q sky130_fd_sc_hd__dfxtp_1
X_2611_ _2613_/A _2613_/B _3349_/Q VGND VGND VPWR VPWR _2611_/X sky130_fd_sc_hd__and3_1
X_2542_ _2556_/A VGND VGND VPWR VPWR _2553_/B sky130_fd_sc_hd__buf_1
XFILLER_55_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_5_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2473_ _2477_/A _2477_/B _3395_/Q VGND VGND VPWR VPWR _2473_/X sky130_fd_sc_hd__and3_1
XFILLER_68_444 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3025_ _2370_/X _3240_/Q _3219_/S VGND VGND VPWR VPWR _3536_/D sky130_fd_sc_hd__mux2_1
XPHY_509 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_51_377 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_580 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2809_ _2851_/A VGND VGND VPWR VPWR _2821_/A sky130_fd_sc_hd__buf_1
XFILLER_59_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_488 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_19_319 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_27_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_42_300 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_344 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_54_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_399 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_37_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_333 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1973_ _1985_/A _1973_/B VGND VGND VPWR VPWR _1973_/Y sky130_fd_sc_hd__nand2_1
X_3712_ _3728_/CLK _3712_/D VGND VGND VPWR VPWR _3712_/Q sky130_fd_sc_hd__dfxtp_1
X_3643_ _3728_/CLK _3643_/D VGND VGND VPWR VPWR _3643_/Q sky130_fd_sc_hd__dfxtp_1
X_3574_ _3738_/CLK _3574_/D VGND VGND VPWR VPWR _3574_/Q sky130_fd_sc_hd__dfxtp_1
X_2525_ _2525_/A _2525_/B _3378_/Q VGND VGND VPWR VPWR _2525_/X sky130_fd_sc_hd__and3_1
X_2456_ _2484_/A VGND VGND VPWR VPWR _2456_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_56_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2387_ _2389_/A _2389_/B _3424_/Q VGND VGND VPWR VPWR _2387_/X sky130_fd_sc_hd__and3_1
X_3008_ _2314_/X _3257_/Q _3230_/S VGND VGND VPWR VPWR _3519_/D sky130_fd_sc_hd__mux2_2
XPHY_306 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_528 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_317 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_328 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_339 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_20_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_59_241 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_40 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_311 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_27_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_840 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_42_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2310_ _3386_/Q _2305_/X _2306_/X _3322_/Q _2309_/X VGND VGND VPWR VPWR _2310_/X
+ sky130_fd_sc_hd__a221o_1
X_3290_ _3485_/CLK _3290_/D VGND VGND VPWR VPWR _3290_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_2_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2241_ _2251_/A _2251_/B _3472_/Q VGND VGND VPWR VPWR _2241_/X sky130_fd_sc_hd__and3_1
XFILLER_18_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2172_ _2165_/X _1941_/A _2124_/A _2170_/X VGND VGND VPWR VPWR _3253_/D sky130_fd_sc_hd__a31o_1
XFILLER_38_447 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_53_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_480 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_21_347 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_358 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1956_ _2152_/A VGND VGND VPWR VPWR _1956_/X sky130_fd_sc_hd__clkbuf_2
X_1887_ _2020_/A _1887_/B VGND VGND VPWR VPWR _2184_/C sky130_fd_sc_hd__nor2_2
X_3626_ _3728_/CLK _3626_/D VGND VGND VPWR VPWR _3626_/Q sky130_fd_sc_hd__dfxtp_1
X_3557_ _3709_/CLK _3557_/D VGND VGND VPWR VPWR _3557_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput19 _3652_/Q VGND VGND VPWR VPWR output_thermometer_o[166] sky130_fd_sc_hd__clkbuf_2
X_2508_ _3321_/Q _2501_/X _2504_/X _3258_/Q _2507_/X VGND VGND VPWR VPWR _2508_/X
+ sky130_fd_sc_hd__a221o_1
X_3488_ _3714_/CLK _3488_/D VGND VGND VPWR VPWR _3488_/Q sky130_fd_sc_hd__dfxtp_1
X_2439_ _2449_/A _2449_/B _3407_/Q VGND VGND VPWR VPWR _2439_/X sky130_fd_sc_hd__and3_1
XFILLER_56_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_114 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_158 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_147 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_169 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_4_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_46_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_5 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_30_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1810_ _1912_/A VGND VGND VPWR VPWR _1917_/B sky130_fd_sc_hd__buf_4
XPHY_670 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2790_ _3480_/Q _2781_/X _2782_/X _3416_/Q _2789_/X VGND VGND VPWR VPWR _2790_/X
+ sky130_fd_sc_hd__a221o_1
XPHY_681 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_692 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1741_ _1741_/A _1887_/B VGND VGND VPWR VPWR _2062_/A sky130_fd_sc_hd__nand2_4
X_1672_ _1788_/A _1683_/B _1645_/C _2111_/A VGND VGND VPWR VPWR _1722_/A sky130_fd_sc_hd__o31ai_4
X_3411_ _3476_/CLK _3411_/D VGND VGND VPWR VPWR _3411_/Q sky130_fd_sc_hd__dfxtp_1
X_3342_ _3479_/CLK _3342_/D VGND VGND VPWR VPWR _3342_/Q sky130_fd_sc_hd__dfxtp_1
X_3273_ _3731_/CLK _3273_/D VGND VGND VPWR VPWR _3273_/Q sky130_fd_sc_hd__dfxtp_1
X_2224_ _2969_/A VGND VGND VPWR VPWR _2237_/A sky130_fd_sc_hd__buf_1
X_2155_ _2149_/X _1973_/Y _2152_/X _2153_/X VGND VGND VPWR VPWR _3267_/D sky130_fd_sc_hd__a31oi_2
XFILLER_26_417 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_288 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2086_ _2086_/A _2092_/B _3322_/D VGND VGND VPWR VPWR _3319_/D sky130_fd_sc_hd__and3_1
XFILLER_53_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2988_ _2252_/X _3277_/Q _3187_/S VGND VGND VPWR VPWR _3499_/D sky130_fd_sc_hd__mux2_1
X_1939_ _2158_/A VGND VGND VPWR VPWR _2149_/A sky130_fd_sc_hd__clkbuf_2
X_3609_ _3737_/CLK _3609_/D VGND VGND VPWR VPWR _3609_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_1_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_12_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_35_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2911_ _2925_/A VGND VGND VPWR VPWR _2923_/A sky130_fd_sc_hd__buf_1
X_2842_ _2856_/A VGND VGND VPWR VPWR _2842_/X sky130_fd_sc_hd__clkbuf_2
X_2773_ _2775_/A _2775_/B _3294_/Q VGND VGND VPWR VPWR _2773_/X sky130_fd_sc_hd__and3_1
X_1724_ _1724_/A _1973_/B VGND VGND VPWR VPWR _2107_/A sky130_fd_sc_hd__nor2_4
XFILLER_7_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1655_ _2041_/A VGND VGND VPWR VPWR _2142_/B sky130_fd_sc_hd__clkbuf_2
X_3325_ _3734_/CLK _3325_/D VGND VGND VPWR VPWR _3325_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_339 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3256_ _3449_/CLK _3256_/D VGND VGND VPWR VPWR _3256_/Q sky130_fd_sc_hd__dfxtp_1
X_2207_ _2221_/A _2221_/B VGND VGND VPWR VPWR _3168_/S sky130_fd_sc_hd__nor2_8
XFILLER_39_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3187_ _2848_/X _3333_/Q _3187_/S VGND VGND VPWR VPWR _3698_/D sky130_fd_sc_hd__mux2_2
X_2138_ _1665_/X _2058_/A _1659_/X VGND VGND VPWR VPWR _3278_/D sky130_fd_sc_hd__o21ai_1
XFILLER_54_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2069_ _2078_/A VGND VGND VPWR VPWR _2076_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_26_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_22_442 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_57_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_250 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_9_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput209 _3711_/Q VGND VGND VPWR VPWR output_thermometer_o[225] sky130_fd_sc_hd__clkbuf_2
XFILLER_4_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3110_ _2622_/X _3410_/Q _3179_/S VGND VGND VPWR VPWR _3621_/D sky130_fd_sc_hd__mux2_2
X_3041_ _2414_/X _3479_/Q _3168_/S VGND VGND VPWR VPWR _3552_/D sky130_fd_sc_hd__mux2_2
XFILLER_48_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_51_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2825_ _2835_/A _2835_/B _3278_/Q VGND VGND VPWR VPWR _2825_/X sky130_fd_sc_hd__and3_1
X_2756_ _3238_/Q _2753_/X _2754_/X _3429_/Q _2755_/X VGND VGND VPWR VPWR _2756_/X
+ sky130_fd_sc_hd__a221o_1
X_1707_ _2079_/A VGND VGND VPWR VPWR _1710_/A sky130_fd_sc_hd__clkbuf_4
X_2687_ _2687_/A _2687_/B _3323_/Q VGND VGND VPWR VPWR _2687_/X sky130_fd_sc_hd__and3_1
X_1638_ _1682_/A _1758_/B _1747_/C VGND VGND VPWR VPWR _1694_/B sky130_fd_sc_hd__nand3_4
XFILLER_58_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3308_ _3450_/CLK _3308_/D VGND VGND VPWR VPWR _3308_/Q sky130_fd_sc_hd__dfxtp_1
X_3239_ _3754_/CLK _3239_/D VGND VGND VPWR VPWR _3239_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_556 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_54_397 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_456 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_54_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_20_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3590_ _3738_/CLK _3590_/D VGND VGND VPWR VPWR _3590_/Q sky130_fd_sc_hd__dfxtp_1
X_2610_ _3287_/Q _2605_/X _2606_/X _3478_/Q _2609_/X VGND VGND VPWR VPWR _2610_/X
+ sky130_fd_sc_hd__a221o_1
X_2541_ _2555_/A VGND VGND VPWR VPWR _2553_/A sky130_fd_sc_hd__buf_1
X_2472_ _3332_/Q _2469_/X _2470_/X _3269_/Q _2471_/X VGND VGND VPWR VPWR _2472_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3024_ _2366_/X _3241_/Q _3214_/S VGND VGND VPWR VPWR _3535_/D sky130_fd_sc_hd__mux2_1
XFILLER_48_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_504 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_356 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_17_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3735_/CLK sky130_fd_sc_hd__clkbuf_16
X_2808_ _3475_/Q _2798_/X _2800_/X _3411_/Q _2807_/X VGND VGND VPWR VPWR _2808_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_3_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2739_ _2781_/A VGND VGND VPWR VPWR _2739_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_27_320 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_24_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_231 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_24_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_463 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1972_ _1966_/X _1971_/Y _1964_/X VGND VGND VPWR VPWR _3395_/D sky130_fd_sc_hd__a21oi_1
X_3711_ _3738_/CLK _3711_/D VGND VGND VPWR VPWR _3711_/Q sky130_fd_sc_hd__dfxtp_1
X_3642_ _3738_/CLK _3642_/D VGND VGND VPWR VPWR _3642_/Q sky130_fd_sc_hd__dfxtp_1
X_3573_ _3707_/CLK _3573_/D VGND VGND VPWR VPWR _3573_/Q sky130_fd_sc_hd__dfxtp_1
X_2524_ _3315_/Q _2517_/X _2518_/X _3252_/Q _2523_/X VGND VGND VPWR VPWR _2524_/X
+ sky130_fd_sc_hd__a221o_1
X_2455_ _2483_/A VGND VGND VPWR VPWR _2455_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_68_220 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2386_ _3361_/Q _2381_/X _2382_/X _3297_/Q _2385_/X VGND VGND VPWR VPWR _2386_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_56_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3007_ _2312_/X _3258_/Q _3230_/S VGND VGND VPWR VPWR _3518_/D sky130_fd_sc_hd__mux2_2
XPHY_307 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_318 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_329 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_3_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_426 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_841 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_830 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_348 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2240_ _2969_/B VGND VGND VPWR VPWR _2251_/B sky130_fd_sc_hd__buf_1
X_2171_ _2088_/B _2165_/X _2124_/A _2170_/X VGND VGND VPWR VPWR _3254_/D sky130_fd_sc_hd__a31o_1
XFILLER_38_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_38_459 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1955_ _2146_/A VGND VGND VPWR VPWR _2152_/A sky130_fd_sc_hd__buf_2
X_1886_ _1710_/A _1877_/X _1834_/X _2184_/A VGND VGND VPWR VPWR _3434_/D sky130_fd_sc_hd__a31o_1
X_3625_ _3713_/CLK _3625_/D VGND VGND VPWR VPWR _3625_/Q sky130_fd_sc_hd__dfxtp_1
X_3556_ _3709_/CLK _3556_/D VGND VGND VPWR VPWR _3556_/Q sky130_fd_sc_hd__dfxtp_1
X_2507_ _2511_/A _2511_/B _3385_/Q VGND VGND VPWR VPWR _2507_/X sky130_fd_sc_hd__and3_1
X_3487_ _3739_/CLK _3487_/D VGND VGND VPWR VPWR _3487_/Q sky130_fd_sc_hd__dfxtp_1
X_2438_ _2480_/A VGND VGND VPWR VPWR _2449_/B sky130_fd_sc_hd__buf_1
XFILLER_56_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2369_ _2375_/A _2375_/B _3431_/Q VGND VGND VPWR VPWR _2369_/X sky130_fd_sc_hd__and3_1
XFILLER_44_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_126 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_12_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_148 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_159 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_21_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_62_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_660 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_671 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_682 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_693 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1740_ _1728_/X _2051_/A _1715_/X VGND VGND VPWR VPWR _3475_/D sky130_fd_sc_hd__o21ai_1
XFILLER_7_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1671_ input9/X VGND VGND VPWR VPWR _2111_/A sky130_fd_sc_hd__clkinv_4
X_3410_ _3479_/CLK _3410_/D VGND VGND VPWR VPWR _3410_/Q sky130_fd_sc_hd__dfxtp_1
X_3341_ _3731_/CLK _3341_/D VGND VGND VPWR VPWR _3341_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_30_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3272_ _3420_/CLK _3272_/D VGND VGND VPWR VPWR _3272_/Q sky130_fd_sc_hd__dfxtp_1
X_2223_ _2953_/A VGND VGND VPWR VPWR _2969_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_38_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_66_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_38_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2154_ _2149_/X _1971_/Y _2152_/X _2153_/X VGND VGND VPWR VPWR _3268_/D sky130_fd_sc_hd__a31oi_1
XFILLER_26_407 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2085_ _2085_/A _2091_/A VGND VGND VPWR VPWR _3320_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_53_259 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_156 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_21_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2987_ _2250_/X _3278_/Q _3179_/S VGND VGND VPWR VPWR _3498_/D sky130_fd_sc_hd__mux2_1
X_1938_ _2079_/C _1938_/B VGND VGND VPWR VPWR _2158_/A sky130_fd_sc_hd__nor2_1
X_1869_ _1905_/A VGND VGND VPWR VPWR _1869_/X sky130_fd_sc_hd__clkbuf_2
X_3608_ _3735_/CLK _3608_/D VGND VGND VPWR VPWR _3608_/Q sky130_fd_sc_hd__dfxtp_1
X_3539_ _3744_/CLK _3539_/D VGND VGND VPWR VPWR _3539_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_29_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_278 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_12_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_300 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_344 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2910_ _3440_/Q _2901_/X _2902_/X _3376_/Q _2909_/X VGND VGND VPWR VPWR _2910_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_16_462 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_31_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_2_3_0_clk_i clkbuf_2_3_0_clk_i/A VGND VGND VPWR VPWR clkbuf_2_3_0_clk_i/X
+ sky130_fd_sc_hd__clkbuf_1
XFILLER_31_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2841_ _2855_/A VGND VGND VPWR VPWR _2841_/X sky130_fd_sc_hd__clkbuf_2
XPHY_490 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2772_ _3232_/Q _2767_/X _2768_/X _3423_/Q _2771_/X VGND VGND VPWR VPWR _2772_/X
+ sky130_fd_sc_hd__a221o_1
X_1723_ _1822_/A VGND VGND VPWR VPWR _1973_/B sky130_fd_sc_hd__buf_4
X_1654_ _2079_/B VGND VGND VPWR VPWR _2041_/A sky130_fd_sc_hd__inv_2
X_3324_ _3453_/CLK _3324_/D VGND VGND VPWR VPWR _3324_/Q sky130_fd_sc_hd__dfxtp_1
X_3255_ _3586_/CLK _3255_/D VGND VGND VPWR VPWR _3255_/Q sky130_fd_sc_hd__dfxtp_1
X_2206_ _2954_/A VGND VGND VPWR VPWR _2221_/B sky130_fd_sc_hd__buf_2
X_3186_ _2846_/X _3334_/Q _3186_/S VGND VGND VPWR VPWR _3697_/D sky130_fd_sc_hd__mux2_1
XFILLER_66_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2137_ _2184_/A _1927_/B _2057_/A _3746_/D VGND VGND VPWR VPWR _3279_/D sky130_fd_sc_hd__o31a_1
X_2068_ _2068_/A _2068_/B VGND VGND VPWR VPWR _3332_/D sky130_fd_sc_hd__nor2_1
XFILLER_54_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_41_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_358 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_373 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_13_432 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_4_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3040_ _2412_/X _3480_/Q _3168_/S VGND VGND VPWR VPWR _3551_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_207 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2824_ _2852_/A VGND VGND VPWR VPWR _2835_/B sky130_fd_sc_hd__buf_1
X_2755_ _2761_/A _2761_/B _3301_/Q VGND VGND VPWR VPWR _2755_/X sky130_fd_sc_hd__and3_1
X_2686_ _3261_/Q _2679_/X _2680_/X _3452_/Q _2685_/X VGND VGND VPWR VPWR _2686_/X
+ sky130_fd_sc_hd__a221o_1
X_1706_ _1697_/X _2043_/B _3417_/D VGND VGND VPWR VPWR _3480_/D sky130_fd_sc_hd__a21o_1
X_1637_ _1647_/A _1729_/A VGND VGND VPWR VPWR _1747_/C sky130_fd_sc_hd__nor2_8
X_3307_ _3435_/CLK _3307_/D VGND VGND VPWR VPWR _3307_/Q sky130_fd_sc_hd__dfxtp_1
X_3238_ _3762_/CLK _3238_/D VGND VGND VPWR VPWR _3238_/Q sky130_fd_sc_hd__dfxtp_1
X_3169_ _2796_/X _3351_/Q _3173_/S VGND VGND VPWR VPWR _3680_/D sky130_fd_sc_hd__mux2_1
XFILLER_64_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_42_505 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_100 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_49_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_159 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_18_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_54_61 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_41_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2540_ _3309_/Q _2531_/X _2532_/X _3246_/Q _2539_/X VGND VGND VPWR VPWR _2540_/X
+ sky130_fd_sc_hd__a221o_1
X_2471_ _2477_/A _2477_/B _3396_/Q VGND VGND VPWR VPWR _2471_/X sky130_fd_sc_hd__and3_1
XFILLER_5_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_402 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_0_clk_i clk_i VGND VGND VPWR VPWR clkbuf_0_clk_i/X sky130_fd_sc_hd__clkbuf_16
X_3023_ _2362_/X _3242_/Q _3222_/S VGND VGND VPWR VPWR _3534_/D sky130_fd_sc_hd__mux2_1
XFILLER_48_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
Xclkbuf_1_0_0_clk_i clkbuf_0_clk_i/X VGND VGND VPWR VPWR clkbuf_2_1_0_clk_i/A sky130_fd_sc_hd__clkbuf_1
X_2807_ _2807_/A _2807_/B _3284_/Q VGND VGND VPWR VPWR _2807_/X sky130_fd_sc_hd__and3_1
X_2738_ _3244_/Q _2724_/X _2726_/X _3435_/Q _2737_/X VGND VGND VPWR VPWR _2738_/X
+ sky130_fd_sc_hd__a221o_1
X_2669_ _2673_/A _2673_/B _3330_/Q VGND VGND VPWR VPWR _2669_/X sky130_fd_sc_hd__and3_1
XFILLER_59_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_505 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_15_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_30_519 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_6_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_65_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_18_354 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_45_151 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_184 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3710_ _3739_/CLK _3710_/D VGND VGND VPWR VPWR _3710_/Q sky130_fd_sc_hd__dfxtp_1
X_1971_ _2109_/A _1983_/B VGND VGND VPWR VPWR _1971_/Y sky130_fd_sc_hd__nand2_1
X_3641_ _3735_/CLK _3641_/D VGND VGND VPWR VPWR _3641_/Q sky130_fd_sc_hd__dfxtp_1
X_3572_ _3728_/CLK _3572_/D VGND VGND VPWR VPWR _3572_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_60_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2523_ _2525_/A _2525_/B _3379_/Q VGND VGND VPWR VPWR _2523_/X sky130_fd_sc_hd__and3_1
X_2454_ _3338_/Q _2441_/X _2442_/X _3275_/Q _2453_/X VGND VGND VPWR VPWR _2454_/X
+ sky130_fd_sc_hd__a221o_1
X_2385_ _2389_/A _2389_/B _3425_/Q VGND VGND VPWR VPWR _2385_/X sky130_fd_sc_hd__and3_1
Xinput1 rst_ni VGND VGND VPWR VPWR input1/X sky130_fd_sc_hd__buf_6
X_3006_ _2310_/X _3259_/Q _3230_/S VGND VGND VPWR VPWR _3517_/D sky130_fd_sc_hd__mux2_2
XFILLER_51_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_308 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_319 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_20_541 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_563 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_3_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_419 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_820 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_35_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_842 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_831 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_35_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_7_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2170_ _2176_/A VGND VGND VPWR VPWR _2170_/X sky130_fd_sc_hd__buf_1
Xclkbuf_leaf_16_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3741_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_33_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_471 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1954_ _2079_/A _1954_/B VGND VGND VPWR VPWR _2063_/A sky130_fd_sc_hd__nor2_4
X_3624_ _3714_/CLK _3624_/D VGND VGND VPWR VPWR _3624_/Q sky130_fd_sc_hd__dfxtp_1
X_1885_ _2079_/B VGND VGND VPWR VPWR _2184_/A sky130_fd_sc_hd__buf_2
X_3555_ _3737_/CLK _3555_/D VGND VGND VPWR VPWR _3555_/Q sky130_fd_sc_hd__dfxtp_1
X_3486_ _3709_/CLK _3486_/D VGND VGND VPWR VPWR _3486_/Q sky130_fd_sc_hd__dfxtp_1
X_2506_ _3322_/Q _2501_/X _2504_/X _3259_/Q _2505_/X VGND VGND VPWR VPWR _2506_/X
+ sky130_fd_sc_hd__a221o_1
X_2437_ _2479_/A VGND VGND VPWR VPWR _2449_/A sky130_fd_sc_hd__buf_1
X_2368_ _2410_/A VGND VGND VPWR VPWR _2368_/X sky130_fd_sc_hd__clkbuf_2
X_2299_ _2299_/A _2299_/B _3453_/Q VGND VGND VPWR VPWR _2299_/X sky130_fd_sc_hd__and3_1
XPHY_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_138 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_149 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_198 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_4_559 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput190 _3705_/Q VGND VGND VPWR VPWR output_thermometer_o[219] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_55_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_43_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_43_485 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_62_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_650 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_661 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_672 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_683 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_694 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1670_ _1828_/A _1763_/A _1828_/C VGND VGND VPWR VPWR _1803_/A sky130_fd_sc_hd__nand3_4
X_3340_ _3731_/CLK _3340_/D VGND VGND VPWR VPWR _3340_/Q sky130_fd_sc_hd__dfxtp_1
X_3271_ _3716_/CLK _3271_/D VGND VGND VPWR VPWR _3271_/Q sky130_fd_sc_hd__dfxtp_1
X_2222_ _3414_/Q _2211_/X _2214_/X _3350_/Q _2221_/X VGND VGND VPWR VPWR _2222_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_23_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2153_ _2153_/A VGND VGND VPWR VPWR _2153_/X sky130_fd_sc_hd__clkbuf_2
X_2084_ _2084_/A VGND VGND VPWR VPWR _2091_/A sky130_fd_sc_hd__clkbuf_2
X_2986_ _2248_/X _3279_/Q _3186_/S VGND VGND VPWR VPWR _3497_/D sky130_fd_sc_hd__mux2_1
X_1937_ _1945_/B _2088_/B _1767_/X VGND VGND VPWR VPWR _3413_/D sky130_fd_sc_hd__o21a_1
X_1868_ _1874_/A _1868_/B VGND VGND VPWR VPWR _2093_/A sky130_fd_sc_hd__nand2_2
X_3607_ _3735_/CLK _3607_/D VGND VGND VPWR VPWR _3607_/Q sky130_fd_sc_hd__dfxtp_1
X_3538_ _3744_/CLK _3538_/D VGND VGND VPWR VPWR _3538_/Q sky130_fd_sc_hd__dfxtp_1
X_1799_ _1828_/A _1828_/B _2030_/B VGND VGND VPWR VPWR _1967_/B sky130_fd_sc_hd__a21o_2
X_3469_ _3731_/CLK _3469_/D VGND VGND VPWR VPWR _3469_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_29_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_419 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_238 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_430 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_37_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_16_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_94 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_35_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_31_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_208 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2840_ _3464_/Q _2827_/X _2828_/X _3400_/Q _2839_/X VGND VGND VPWR VPWR _2840_/X
+ sky130_fd_sc_hd__a221o_1
XPHY_480 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_491 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2771_ _2775_/A _2775_/B _3295_/Q VGND VGND VPWR VPWR _2771_/X sky130_fd_sc_hd__and3_1
X_1722_ _1722_/A VGND VGND VPWR VPWR _1822_/A sky130_fd_sc_hd__buf_2
XFILLER_7_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1653_ _1694_/B _2079_/C VGND VGND VPWR VPWR _2041_/B sky130_fd_sc_hd__nand2_4
X_3323_ _3453_/CLK _3323_/D VGND VGND VPWR VPWR _3323_/Q sky130_fd_sc_hd__dfxtp_1
X_3254_ _3586_/CLK _3254_/D VGND VGND VPWR VPWR _3254_/Q sky130_fd_sc_hd__dfxtp_1
X_2205_ _2867_/A VGND VGND VPWR VPWR _2954_/A sky130_fd_sc_hd__buf_2
XFILLER_39_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3185_ _2844_/X _3335_/Q _3186_/S VGND VGND VPWR VPWR _3696_/D sky130_fd_sc_hd__mux2_2
XFILLER_26_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2136_ _2056_/B _1659_/A _2121_/X VGND VGND VPWR VPWR _3280_/D sky130_fd_sc_hd__a21oi_1
X_2067_ _2068_/A _2067_/B VGND VGND VPWR VPWR _3333_/D sky130_fd_sc_hd__nor2_1
XFILLER_34_282 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2969_ _2969_/A _2969_/B _3482_/Q VGND VGND VPWR VPWR _2969_/X sky130_fd_sc_hd__and3_1
XFILLER_1_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_57_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_569 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_60_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_13_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_4_120 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_67_149 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_580 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2823_ _2851_/A VGND VGND VPWR VPWR _2835_/A sky130_fd_sc_hd__buf_1
X_2754_ _2782_/A VGND VGND VPWR VPWR _2754_/X sky130_fd_sc_hd__clkbuf_2
X_1705_ _1705_/A VGND VGND VPWR VPWR _3417_/D sky130_fd_sc_hd__clkbuf_2
X_2685_ _2687_/A _2687_/B _3324_/Q VGND VGND VPWR VPWR _2685_/X sky130_fd_sc_hd__and3_1
X_1636_ _1642_/A _2079_/A VGND VGND VPWR VPWR _1639_/A sky130_fd_sc_hd__nand2_1
X_3306_ _3763_/CLK _3306_/D VGND VGND VPWR VPWR _3306_/Q sky130_fd_sc_hd__dfxtp_1
X_3237_ _3754_/CLK _3237_/D VGND VGND VPWR VPWR _3237_/Q sky130_fd_sc_hd__dfxtp_1
X_3168_ _2790_/X _3352_/Q _3168_/S VGND VGND VPWR VPWR _3679_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2119_ _2119_/A _2119_/B VGND VGND VPWR VPWR _3291_/D sky130_fd_sc_hd__nor2_1
XFILLER_14_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3099_ _2590_/X _3421_/Q _3229_/S VGND VGND VPWR VPWR _3610_/D sky130_fd_sc_hd__mux2_2
XFILLER_6_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_6_418 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_333 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_388 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_451 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2470_ _2484_/A VGND VGND VPWR VPWR _2470_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_68_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3022_ _2360_/X _3243_/Q _3214_/S VGND VGND VPWR VPWR _3533_/D sky130_fd_sc_hd__mux2_4
XFILLER_36_344 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_314 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2806_ _3476_/Q _2798_/X _2800_/X _3412_/Q _2805_/X VGND VGND VPWR VPWR _2806_/X
+ sky130_fd_sc_hd__a221o_1
X_2737_ _2747_/A _2747_/B _3307_/Q VGND VGND VPWR VPWR _2737_/X sky130_fd_sc_hd__and3_1
X_2668_ _3268_/Q _2665_/X _2666_/X _3459_/Q _2667_/X VGND VGND VPWR VPWR _2668_/X
+ sky130_fd_sc_hd__a221o_1
X_1619_ _1758_/A _1753_/B VGND VGND VPWR VPWR _1619_/Y sky130_fd_sc_hd__nand2_2
X_2599_ _2599_/A _2599_/B _3353_/Q VGND VGND VPWR VPWR _2599_/X sky130_fd_sc_hd__and3_1
XFILLER_46_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_244 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_211 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_1_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1970_ _1966_/X _1969_/Y _1964_/X VGND VGND VPWR VPWR _3396_/D sky130_fd_sc_hd__a21oi_1
X_3640_ _3714_/CLK _3640_/D VGND VGND VPWR VPWR _3640_/Q sky130_fd_sc_hd__dfxtp_1
X_3571_ _3709_/CLK _3571_/D VGND VGND VPWR VPWR _3571_/Q sky130_fd_sc_hd__dfxtp_1
X_2522_ _3316_/Q _2517_/X _2518_/X _3253_/Q _2521_/X VGND VGND VPWR VPWR _2522_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_53_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_5_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2453_ _2463_/A _2463_/B _3402_/Q VGND VGND VPWR VPWR _2453_/X sky130_fd_sc_hd__and3_1
X_2384_ _3362_/Q _2381_/X _2382_/X _3298_/Q _2383_/X VGND VGND VPWR VPWR _2384_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_233 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xinput2 randomise_en_i VGND VGND VPWR VPWR input2/X sky130_fd_sc_hd__clkbuf_1
X_3005_ _2308_/X _3260_/Q _3229_/S VGND VGND VPWR VPWR _3516_/D sky130_fd_sc_hd__mux2_2
XFILLER_64_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_36_174 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_36_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_309 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_51_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_55_450 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_810 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_35_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_843 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_832 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_821 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_42_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_546 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_7_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_25_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_33_100 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_328 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1953_ _2060_/B _1930_/X _1949_/X VGND VGND VPWR VPWR _3404_/D sky130_fd_sc_hd__a21oi_1
X_1884_ _2098_/A _1697_/A _1883_/X _1705_/A VGND VGND VPWR VPWR _3435_/D sky130_fd_sc_hd__a31o_1
X_3623_ _3713_/CLK _3623_/D VGND VGND VPWR VPWR _3623_/Q sky130_fd_sc_hd__dfxtp_1
X_3554_ _3713_/CLK _3554_/D VGND VGND VPWR VPWR _3554_/Q sky130_fd_sc_hd__dfxtp_1
X_2505_ _2511_/A _2511_/B _3386_/Q VGND VGND VPWR VPWR _2505_/X sky130_fd_sc_hd__and3_1
X_3485_ _3485_/CLK _3485_/D VGND VGND VPWR VPWR _3485_/Q sky130_fd_sc_hd__dfxtp_1
X_2436_ _3344_/Q _2426_/X _2428_/X _3281_/Q _2435_/X VGND VGND VPWR VPWR _2436_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_29_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2367_ _2409_/A VGND VGND VPWR VPWR _2367_/X sky130_fd_sc_hd__clkbuf_2
X_2298_ _3390_/Q _2291_/X _2292_/X _3326_/Q _2297_/X VGND VGND VPWR VPWR _2298_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_56_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_461 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_139 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_52_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_20_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput180 _3700_/Q VGND VGND VPWR VPWR output_thermometer_o[214] sky130_fd_sc_hd__clkbuf_2
Xoutput191 _3544_/Q VGND VGND VPWR VPWR output_thermometer_o[58] sky130_fd_sc_hd__clkbuf_2
XFILLER_46_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_8 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_46_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_43_497 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_640 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_651 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_662 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_62_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_673 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_684 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_695 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_7_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3270_ _3716_/CLK _3270_/D VGND VGND VPWR VPWR _3270_/Q sky130_fd_sc_hd__dfxtp_1
X_2221_ _2221_/A _2221_/B _3478_/Q VGND VGND VPWR VPWR _2221_/X sky130_fd_sc_hd__and3_1
XFILLER_16_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_38_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2152_ _2152_/A VGND VGND VPWR VPWR _2152_/X sky130_fd_sc_hd__clkbuf_2
X_2083_ _2098_/B VGND VGND VPWR VPWR _3321_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_38_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_464 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2985_ _2246_/X _3280_/Q _3179_/S VGND VGND VPWR VPWR _3496_/D sky130_fd_sc_hd__mux2_1
X_1936_ _2142_/A VGND VGND VPWR VPWR _1945_/B sky130_fd_sc_hd__inv_2
X_1867_ _1865_/Y _1866_/X _1862_/X VGND VGND VPWR VPWR _3441_/D sky130_fd_sc_hd__o21ai_1
X_3606_ _3709_/CLK _3606_/D VGND VGND VPWR VPWR _3606_/Q sky130_fd_sc_hd__dfxtp_1
X_1798_ _1912_/A VGND VGND VPWR VPWR _1985_/A sky130_fd_sc_hd__buf_2
X_3537_ _3745_/CLK _3537_/D VGND VGND VPWR VPWR _3537_/Q sky130_fd_sc_hd__dfxtp_1
X_3468_ _3731_/CLK _3468_/D VGND VGND VPWR VPWR _3468_/Q sky130_fd_sc_hd__dfxtp_1
X_2419_ _2643_/A VGND VGND VPWR VPWR _2479_/A sky130_fd_sc_hd__buf_2
X_3399_ _3420_/CLK _3399_/D VGND VGND VPWR VPWR _3399_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_29_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_29_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_497 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_15_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3453_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_0_552 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_57_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_556 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_63_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_28_291 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_261 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_470 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_481 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_492 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2770_ _3233_/Q _2767_/X _2768_/X _3424_/Q _2769_/X VGND VGND VPWR VPWR _2770_/X
+ sky130_fd_sc_hd__a221o_1
X_1721_ _1697_/X _2048_/B _3417_/D VGND VGND VPWR VPWR _3478_/D sky130_fd_sc_hd__a21o_1
X_1652_ _1691_/A VGND VGND VPWR VPWR _2079_/C sky130_fd_sc_hd__buf_2
X_3322_ _3449_/CLK _3322_/D VGND VGND VPWR VPWR _3322_/Q sky130_fd_sc_hd__dfxtp_1
X_3253_ _3586_/CLK _3253_/D VGND VGND VPWR VPWR _3253_/Q sky130_fd_sc_hd__dfxtp_1
X_2204_ _3748_/Q VGND VGND VPWR VPWR _2867_/A sky130_fd_sc_hd__buf_1
XFILLER_39_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_39_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3184_ _2840_/X _3336_/Q _3187_/S VGND VGND VPWR VPWR _3695_/D sky130_fd_sc_hd__mux2_1
X_2135_ _2184_/A _1927_/B _2054_/A _3746_/D VGND VGND VPWR VPWR _3281_/D sky130_fd_sc_hd__o31a_1
X_2066_ _2066_/A _2066_/B VGND VGND VPWR VPWR _3334_/D sky130_fd_sc_hd__and2_1
XFILLER_41_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_478 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2968_ _3419_/Q _2957_/X _2958_/X _3355_/Q _2967_/X VGND VGND VPWR VPWR _2968_/X
+ sky130_fd_sc_hd__a221o_1
X_1919_ _1712_/X _1680_/Y _1910_/X VGND VGND VPWR VPWR _3420_/D sky130_fd_sc_hd__o21ai_1
X_2899_ _2909_/A _2909_/B _3253_/Q VGND VGND VPWR VPWR _2899_/X sky130_fd_sc_hd__and3_1
XFILLER_1_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_518 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_32_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_42 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_43_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_43_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_331 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2822_ _3470_/Q _2813_/X _2814_/X _3406_/Q _2821_/X VGND VGND VPWR VPWR _2822_/X
+ sky130_fd_sc_hd__a221o_1
X_2753_ _2781_/A VGND VGND VPWR VPWR _2753_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_8_460 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1704_ _1870_/A VGND VGND VPWR VPWR _1705_/A sky130_fd_sc_hd__buf_2
X_2684_ _3262_/Q _2679_/X _2680_/X _3453_/Q _2683_/X VGND VGND VPWR VPWR _2684_/X
+ sky130_fd_sc_hd__a221o_1
X_1635_ _1647_/A VGND VGND VPWR VPWR _2079_/A sky130_fd_sc_hd__buf_2
X_3305_ _3763_/CLK _3305_/D VGND VGND VPWR VPWR _3305_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3236_ _3754_/CLK _3236_/D VGND VGND VPWR VPWR _3236_/Q sky130_fd_sc_hd__dfxtp_1
X_3167_ _2788_/X _3353_/Q _3204_/S VGND VGND VPWR VPWR _3678_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_548 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2118_ _2118_/A _2119_/B VGND VGND VPWR VPWR _3292_/D sky130_fd_sc_hd__nor2_1
X_3098_ _2586_/X _3422_/Q _3229_/S VGND VGND VPWR VPWR _3609_/D sky130_fd_sc_hd__mux2_2
XFILLER_14_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2049_ _2049_/A _3353_/D VGND VGND VPWR VPWR _3349_/D sky130_fd_sc_hd__and2_1
XFILLER_42_518 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_356 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_10_404 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_49_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_312 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_537 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_54_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_68_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3021_ _2358_/X _3244_/Q _3214_/S VGND VGND VPWR VPWR _3532_/D sky130_fd_sc_hd__mux2_2
XFILLER_48_194 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2805_ _2807_/A _2807_/B _3285_/Q VGND VGND VPWR VPWR _2805_/X sky130_fd_sc_hd__and3_1
X_2736_ _2778_/A VGND VGND VPWR VPWR _2747_/B sky130_fd_sc_hd__buf_1
X_2667_ _2673_/A _2673_/B _3331_/Q VGND VGND VPWR VPWR _2667_/X sky130_fd_sc_hd__and3_1
X_1618_ _1645_/C VGND VGND VPWR VPWR _1753_/B sky130_fd_sc_hd__clkinv_4
X_2598_ _3290_/Q _2591_/X _2592_/X _3482_/Q _2597_/X VGND VGND VPWR VPWR _2598_/X
+ sky130_fd_sc_hd__a221o_1
X_3219_ _2942_/X _3301_/Q _3219_/S VGND VGND VPWR VPWR _3730_/D sky130_fd_sc_hd__mux2_4
XFILLER_39_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_42_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_175 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_40_10 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3570_ _3713_/CLK _3570_/D VGND VGND VPWR VPWR _3570_/Q sky130_fd_sc_hd__dfxtp_1
X_2521_ _2525_/A _2525_/B _3380_/Q VGND VGND VPWR VPWR _2521_/X sky130_fd_sc_hd__and3_1
X_2452_ _2480_/A VGND VGND VPWR VPWR _2463_/B sky130_fd_sc_hd__buf_1
XFILLER_68_212 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2383_ _2389_/A _2389_/B _3426_/Q VGND VGND VPWR VPWR _2383_/X sky130_fd_sc_hd__and3_1
XFILLER_68_278 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3004_ _2304_/X _3261_/Q _3196_/S VGND VGND VPWR VPWR _3515_/D sky130_fd_sc_hd__mux2_2
Xinput3 en_i VGND VGND VPWR VPWR input3/X sky130_fd_sc_hd__buf_1
XFILLER_36_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_64_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_20_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2719_ _2867_/A VGND VGND VPWR VPWR _2778_/A sky130_fd_sc_hd__buf_2
X_3699_ _3736_/CLK _3699_/D VGND VGND VPWR VPWR _3699_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_10_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_811 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_800 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_844 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_833 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_822 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_521 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_23_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_7_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_558 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_51_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_204 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_38_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_65_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_495 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_432 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_145 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_381 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1952_ _2058_/A _1930_/X _1949_/X VGND VGND VPWR VPWR _3405_/D sky130_fd_sc_hd__a21oi_1
X_1883_ _1905_/A VGND VGND VPWR VPWR _1883_/X sky130_fd_sc_hd__clkbuf_2
X_3622_ _3737_/CLK _3622_/D VGND VGND VPWR VPWR _3622_/Q sky130_fd_sc_hd__dfxtp_1
X_3553_ _3713_/CLK _3553_/D VGND VGND VPWR VPWR _3553_/Q sky130_fd_sc_hd__dfxtp_1
X_2504_ _2560_/A VGND VGND VPWR VPWR _2504_/X sky130_fd_sc_hd__clkbuf_2
X_3484_ _3485_/CLK _3484_/D VGND VGND VPWR VPWR _3484_/Q sky130_fd_sc_hd__dfxtp_1
X_2435_ _2435_/A _2435_/B _3408_/Q VGND VGND VPWR VPWR _2435_/X sky130_fd_sc_hd__and3_1
X_2366_ _3368_/Q _2352_/X _2354_/X _3304_/Q _2365_/X VGND VGND VPWR VPWR _2366_/X
+ sky130_fd_sc_hd__a221o_1
X_2297_ _2299_/A _2299_/B _3454_/Q VGND VGND VPWR VPWR _2297_/X sky130_fd_sc_hd__and3_1
XFILLER_2_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_37_495 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_129 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_118 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_12_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_4_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput170 _3691_/Q VGND VGND VPWR VPWR output_thermometer_o[205] sky130_fd_sc_hd__clkbuf_2
Xoutput192 _3600_/Q VGND VGND VPWR VPWR output_thermometer_o[114] sky130_fd_sc_hd__clkbuf_2
Xoutput181 _3549_/Q VGND VGND VPWR VPWR output_thermometer_o[63] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_62_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_62_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_476 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_30_126 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_630 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_641 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_652 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_663 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_674 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_685 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_696 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2220_ _3415_/Q _2211_/X _2214_/X _3351_/Q _2219_/X VGND VGND VPWR VPWR _2220_/X
+ sky130_fd_sc_hd__a221o_1
X_2151_ _2149_/X _1969_/Y _2130_/X _2144_/X VGND VGND VPWR VPWR _3269_/D sky130_fd_sc_hd__a31oi_1
X_2082_ _2084_/A VGND VGND VPWR VPWR _2098_/B sky130_fd_sc_hd__inv_2
XFILLER_38_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_207 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_53_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2984_ _2242_/X _3281_/Q _3179_/S VGND VGND VPWR VPWR _3495_/D sky130_fd_sc_hd__mux2_1
X_1935_ _1935_/A VGND VGND VPWR VPWR _2142_/A sky130_fd_sc_hd__buf_2
X_1866_ _1876_/A VGND VGND VPWR VPWR _1866_/X sky130_fd_sc_hd__buf_2
X_3605_ _3739_/CLK _3605_/D VGND VGND VPWR VPWR _3605_/Q sky130_fd_sc_hd__dfxtp_1
X_1797_ _1797_/A VGND VGND VPWR VPWR _1797_/X sky130_fd_sc_hd__clkbuf_2
X_3536_ _3745_/CLK _3536_/D VGND VGND VPWR VPWR _3536_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_1_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3467_ _3467_/CLK _3467_/D VGND VGND VPWR VPWR _3467_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2418_ _3349_/Q _2409_/X _2410_/X _3286_/Q _2417_/X VGND VGND VPWR VPWR _2418_/X
+ sky130_fd_sc_hd__a221o_1
X_3398_ _3467_/CLK _3398_/D VGND VGND VPWR VPWR _3398_/Q sky130_fd_sc_hd__dfxtp_1
X_2349_ _2361_/A _2361_/B _3437_/Q VGND VGND VPWR VPWR _2349_/X sky130_fd_sc_hd__and3_1
XFILLER_57_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_37_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_25_476 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_0_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_513 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_35_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_460 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_471 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_482 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_493 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1720_ _2087_/B _2020_/A VGND VGND VPWR VPWR _2048_/B sky130_fd_sc_hd__nand2_2
X_1651_ _1651_/A VGND VGND VPWR VPWR _1651_/X sky130_fd_sc_hd__buf_2
XFILLER_7_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3321_ _3482_/CLK _3321_/D VGND VGND VPWR VPWR _3321_/Q sky130_fd_sc_hd__dfxtp_1
X_3252_ _3586_/CLK _3252_/D VGND VGND VPWR VPWR _3252_/Q sky130_fd_sc_hd__dfxtp_1
X_2203_ _2953_/A VGND VGND VPWR VPWR _2221_/A sky130_fd_sc_hd__buf_2
X_3183_ _2836_/X _3337_/Q _3186_/S VGND VGND VPWR VPWR _3694_/D sky130_fd_sc_hd__mux2_1
X_2134_ _2194_/A _2134_/B _2112_/A VGND VGND VPWR VPWR _3282_/D sky130_fd_sc_hd__or3b_4
XFILLER_39_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2065_ _2065_/A _2066_/B VGND VGND VPWR VPWR _3335_/D sky130_fd_sc_hd__and2_1
XFILLER_22_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2967_ _2969_/A _2969_/B _3483_/Q VGND VGND VPWR VPWR _2967_/X sky130_fd_sc_hd__and3_1
X_2898_ _2926_/A VGND VGND VPWR VPWR _2909_/B sky130_fd_sc_hd__buf_1
X_1918_ _1917_/Y _1797_/A _1910_/X VGND VGND VPWR VPWR _3421_/D sky130_fd_sc_hd__o21ai_1
X_1849_ _1849_/A _1917_/A VGND VGND VPWR VPWR _1849_/Y sky130_fd_sc_hd__nand2_1
X_3519_ _3728_/CLK _3519_/D VGND VGND VPWR VPWR _3519_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_53_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_98 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_354 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_240 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2821_ _2821_/A _2821_/B _3279_/Q VGND VGND VPWR VPWR _2821_/X sky130_fd_sc_hd__and3_1
XPHY_290 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2752_ _3239_/Q _2739_/X _2740_/X _3430_/Q _2751_/X VGND VGND VPWR VPWR _2752_/X
+ sky130_fd_sc_hd__a221o_1
X_1703_ _1713_/A VGND VGND VPWR VPWR _1870_/A sky130_fd_sc_hd__inv_2
X_2683_ _2687_/A _2687_/B _3325_/Q VGND VGND VPWR VPWR _2683_/X sky130_fd_sc_hd__and3_1
XFILLER_8_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1634_ _1682_/A _1646_/A _1753_/B VGND VGND VPWR VPWR _1642_/A sky130_fd_sc_hd__nand3_1
X_3304_ _3763_/CLK _3304_/D VGND VGND VPWR VPWR _3304_/Q sky130_fd_sc_hd__dfxtp_1
X_3235_ _3450_/CLK _3235_/D VGND VGND VPWR VPWR _3235_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3166_ _2786_/X _3354_/Q _3230_/S VGND VGND VPWR VPWR _3677_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_354 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_173 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_39_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_14_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3452_/CLK sky130_fd_sc_hd__clkbuf_16
X_2117_ _2117_/A _2119_/B VGND VGND VPWR VPWR _3293_/D sky130_fd_sc_hd__nor2_1
X_3097_ _2584_/X _3423_/Q _3225_/S VGND VGND VPWR VPWR _3608_/D sky130_fd_sc_hd__mux2_1
XFILLER_54_346 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2048_ _3353_/D _2048_/B VGND VGND VPWR VPWR _3350_/D sky130_fd_sc_hd__and2_1
XFILLER_35_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xclkbuf_leaf_29_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3709_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_13_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_287 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_38_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_60_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3020_ _2356_/X _3245_/Q _3222_/S VGND VGND VPWR VPWR _3531_/D sky130_fd_sc_hd__mux2_1
XFILLER_17_560 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_51_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_541 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2804_ _3477_/Q _2798_/X _2800_/X _3413_/Q _2803_/X VGND VGND VPWR VPWR _2804_/X
+ sky130_fd_sc_hd__a221o_1
X_2735_ _2777_/A VGND VGND VPWR VPWR _2747_/A sky130_fd_sc_hd__buf_1
X_2666_ _2708_/A VGND VGND VPWR VPWR _2666_/X sky130_fd_sc_hd__clkbuf_2
X_1617_ input8/X VGND VGND VPWR VPWR _1645_/C sky130_fd_sc_hd__buf_4
X_2597_ _2599_/A _2599_/B _3354_/Q VGND VGND VPWR VPWR _2597_/X sky130_fd_sc_hd__and3_1
XFILLER_59_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3218_ _2938_/X _3302_/Q _3219_/S VGND VGND VPWR VPWR _3729_/D sky130_fd_sc_hd__mux2_1
X_3149_ _2738_/X _3371_/Q _3214_/S VGND VGND VPWR VPWR _3660_/D sky130_fd_sc_hd__mux2_2
XFILLER_40_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_49_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_58_460 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_346 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_541 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2520_ _3317_/Q _2517_/X _2518_/X _3254_/Q _2519_/X VGND VGND VPWR VPWR _2520_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_5_261 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2451_ _2479_/A VGND VGND VPWR VPWR _2463_/A sky130_fd_sc_hd__buf_1
XFILLER_39_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2382_ _2410_/A VGND VGND VPWR VPWR _2382_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_68_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xinput4 input_binary_i[0] VGND VGND VPWR VPWR input4/X sky130_fd_sc_hd__buf_1
XFILLER_49_482 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3003_ _2300_/X _3262_/Q _3196_/S VGND VGND VPWR VPWR _3514_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2718_ _2777_/A VGND VGND VPWR VPWR _2733_/A sky130_fd_sc_hd__buf_1
XFILLER_10_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3698_ _3722_/CLK _3698_/D VGND VGND VPWR VPWR _3698_/Q sky130_fd_sc_hd__dfxtp_1
X_2649_ _2797_/A VGND VGND VPWR VPWR _2707_/A sky130_fd_sc_hd__buf_2
XFILLER_59_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_268 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_801 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_35_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_845 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_834 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_823 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_812 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_42_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_533 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_50_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_2_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_360 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_1951_ _1927_/B _2057_/A _1870_/X VGND VGND VPWR VPWR _3406_/D sky130_fd_sc_hd__o21a_1
X_1882_ _1864_/A _2101_/B _1920_/A _1920_/B VGND VGND VPWR VPWR _2098_/A sky130_fd_sc_hd__o22ai_4
X_3621_ _3735_/CLK _3621_/D VGND VGND VPWR VPWR _3621_/Q sky130_fd_sc_hd__dfxtp_1
X_3552_ _3741_/CLK _3552_/D VGND VGND VPWR VPWR _3552_/Q sky130_fd_sc_hd__dfxtp_1
X_2503_ _2799_/A VGND VGND VPWR VPWR _2560_/A sky130_fd_sc_hd__buf_2
X_3483_ _3485_/CLK _3483_/D VGND VGND VPWR VPWR _3483_/Q sky130_fd_sc_hd__dfxtp_1
X_2434_ _3345_/Q _2426_/X _2428_/X _3282_/Q _2433_/X VGND VGND VPWR VPWR _2434_/X
+ sky130_fd_sc_hd__a221o_1
X_2365_ _2375_/A _2375_/B _3432_/Q VGND VGND VPWR VPWR _2365_/X sky130_fd_sc_hd__and3_1
X_2296_ _3391_/Q _2291_/X _2292_/X _3327_/Q _2295_/X VGND VGND VPWR VPWR _2296_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_56_238 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_52_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_20 _3728_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
Xoutput160 _3629_/Q VGND VGND VPWR VPWR output_thermometer_o[143] sky130_fd_sc_hd__clkbuf_2
Xoutput182 _3692_/Q VGND VGND VPWR VPWR output_thermometer_o[206] sky130_fd_sc_hd__clkbuf_2
Xoutput171 _3548_/Q VGND VGND VPWR VPWR output_thermometer_o[62] sky130_fd_sc_hd__clkbuf_2
Xoutput193 _3738_/Q VGND VGND VPWR VPWR output_thermometer_o[252] sky130_fd_sc_hd__clkbuf_2
XFILLER_43_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_620 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_631 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_642 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_653 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_62_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_664 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_675 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_686 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_697 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2150_ _2149_/X _1967_/Y _2130_/X _2144_/X VGND VGND VPWR VPWR _3270_/D sky130_fd_sc_hd__a31oi_2
X_2081_ _2092_/B _3322_/D VGND VGND VPWR VPWR _2084_/A sky130_fd_sc_hd__nand2_1
XFILLER_19_430 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_19_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2983_ _2238_/X _3282_/Q _3179_/S VGND VGND VPWR VPWR _3494_/D sky130_fd_sc_hd__mux2_1
X_1934_ _2141_/A _2106_/A _2040_/A VGND VGND VPWR VPWR _3414_/D sky130_fd_sc_hd__a21oi_2
X_1865_ _1899_/A _2092_/A VGND VGND VPWR VPWR _1865_/Y sky130_fd_sc_hd__nand2_1
X_3604_ _3744_/CLK _3604_/D VGND VGND VPWR VPWR _3604_/Q sky130_fd_sc_hd__dfxtp_1
X_1796_ _2066_/A _1766_/X _1767_/X VGND VGND VPWR VPWR _3462_/D sky130_fd_sc_hd__a21o_1
X_3535_ _3744_/CLK _3535_/D VGND VGND VPWR VPWR _3535_/Q sky130_fd_sc_hd__dfxtp_1
X_3466_ _3467_/CLK _3466_/D VGND VGND VPWR VPWR _3466_/Q sky130_fd_sc_hd__dfxtp_1
X_2417_ _2417_/A _2417_/B _3413_/Q VGND VGND VPWR VPWR _2417_/X sky130_fd_sc_hd__and3_1
X_3397_ _3716_/CLK _3397_/D VGND VGND VPWR VPWR _3397_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2348_ _2406_/A VGND VGND VPWR VPWR _2361_/B sky130_fd_sc_hd__buf_1
X_2279_ _2285_/A _2285_/B _3461_/Q VGND VGND VPWR VPWR _2279_/X sky130_fd_sc_hd__and3_1
XFILLER_25_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_422 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_37_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_488 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_403 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_274 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_52_285 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_458 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_4_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_31 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_576 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_282 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_274 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_450 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_461 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_472 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_483 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_494 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1650_ _1841_/A _1954_/B _2166_/A VGND VGND VPWR VPWR _1651_/A sky130_fd_sc_hd__nand3_2
X_3320_ _3449_/CLK _3320_/D VGND VGND VPWR VPWR _3320_/Q sky130_fd_sc_hd__dfxtp_1
X_3251_ _3586_/CLK _3251_/D VGND VGND VPWR VPWR _3251_/Q sky130_fd_sc_hd__dfxtp_1
X_2202_ _2865_/A VGND VGND VPWR VPWR _2953_/A sky130_fd_sc_hd__buf_2
X_3182_ _2834_/X _3338_/Q _3186_/S VGND VGND VPWR VPWR _3693_/D sky130_fd_sc_hd__mux2_1
XFILLER_39_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2133_ _2133_/A _2141_/B VGND VGND VPWR VPWR _3283_/D sky130_fd_sc_hd__nand2_1
XFILLER_26_208 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2064_ _2068_/A _2064_/B VGND VGND VPWR VPWR _3336_/D sky130_fd_sc_hd__nor2_1
XFILLER_34_252 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2966_ _3420_/Q _2957_/X _2958_/X _3356_/Q _2965_/X VGND VGND VPWR VPWR _2966_/X
+ sky130_fd_sc_hd__a221o_1
X_2897_ _2925_/A VGND VGND VPWR VPWR _2909_/A sky130_fd_sc_hd__buf_1
X_1917_ _1917_/A _1917_/B _1985_/B VGND VGND VPWR VPWR _1917_/Y sky130_fd_sc_hd__nand3_1
X_1848_ _2087_/B VGND VGND VPWR VPWR _1849_/A sky130_fd_sc_hd__inv_2
X_1779_ _2106_/A _2118_/A _1788_/B VGND VGND VPWR VPWR _2103_/A sky130_fd_sc_hd__and3_2
X_3518_ _3728_/CLK _3518_/D VGND VGND VPWR VPWR _3518_/Q sky130_fd_sc_hd__dfxtp_1
X_3449_ _3449_/CLK _3449_/D VGND VGND VPWR VPWR _3449_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_377 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_25_263 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_43_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_189 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_340 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_44_572 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2820_ _3471_/Q _2813_/X _2814_/X _3407_/Q _2819_/X VGND VGND VPWR VPWR _2820_/X
+ sky130_fd_sc_hd__a221o_1
XPHY_291 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_280 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2751_ _2761_/A _2761_/B _3302_/Q VGND VGND VPWR VPWR _2751_/X sky130_fd_sc_hd__and3_1
X_2682_ _3263_/Q _2679_/X _2680_/X _3454_/Q _2681_/X VGND VGND VPWR VPWR _2682_/X
+ sky130_fd_sc_hd__a221o_1
X_1702_ _1702_/A _2079_/B VGND VGND VPWR VPWR _1713_/A sky130_fd_sc_hd__nand2_2
X_1633_ input9/X _1729_/A VGND VGND VPWR VPWR _1646_/A sky130_fd_sc_hd__nor2_1
X_3303_ _3762_/CLK _3303_/D VGND VGND VPWR VPWR _3303_/Q sky130_fd_sc_hd__dfxtp_1
X_3234_ _3734_/CLK _3234_/D VGND VGND VPWR VPWR _3234_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3165_ _2784_/X _3355_/Q _3230_/S VGND VGND VPWR VPWR _3676_/D sky130_fd_sc_hd__mux2_1
XFILLER_66_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2116_ _2119_/B VGND VGND VPWR VPWR _3294_/D sky130_fd_sc_hd__inv_2
X_3096_ _2582_/X _3424_/Q _3225_/S VGND VGND VPWR VPWR _3607_/D sky130_fd_sc_hd__mux2_1
X_2047_ _2047_/A _2053_/B VGND VGND VPWR VPWR _3351_/D sky130_fd_sc_hd__nor2_1
XFILLER_62_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_22_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2949_ _2951_/A _2951_/B _3235_/Q VGND VGND VPWR VPWR _2949_/X sky130_fd_sc_hd__and3_1
XFILLER_13_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_517 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_542 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_325 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2803_ _2807_/A _2807_/B _3286_/Q VGND VGND VPWR VPWR _2803_/X sky130_fd_sc_hd__and3_1
X_2734_ _3245_/Q _2724_/X _2726_/X _3436_/Q _2733_/X VGND VGND VPWR VPWR _2734_/X
+ sky130_fd_sc_hd__a221o_1
X_2665_ _2707_/A VGND VGND VPWR VPWR _2665_/X sky130_fd_sc_hd__clkbuf_2
X_1616_ _1682_/A VGND VGND VPWR VPWR _1758_/A sky130_fd_sc_hd__clkbuf_4
X_2596_ _3291_/Q _2591_/X _2592_/X _3483_/Q _2595_/X VGND VGND VPWR VPWR _2596_/X
+ sky130_fd_sc_hd__a221o_1
X_3217_ _2936_/X _3303_/Q _3219_/S VGND VGND VPWR VPWR _3728_/D sky130_fd_sc_hd__mux2_4
X_3148_ _2734_/X _3372_/Q _3222_/S VGND VGND VPWR VPWR _3659_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_39_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_54_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_54_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3079_ _2530_/X _3441_/Q _3208_/S VGND VGND VPWR VPWR _3590_/D sky130_fd_sc_hd__mux2_1
XFILLER_54_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_65_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_114 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2450_ _3339_/Q _2441_/X _2442_/X _3276_/Q _2449_/X VGND VGND VPWR VPWR _2450_/X
+ sky130_fd_sc_hd__a221o_1
Xclkbuf_leaf_13_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3420_/CLK sky130_fd_sc_hd__clkbuf_16
X_2381_ _2409_/A VGND VGND VPWR VPWR _2381_/X sky130_fd_sc_hd__clkbuf_2
Xclkbuf_leaf_28_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3720_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_56_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3002_ _2298_/X _3263_/Q _3196_/S VGND VGND VPWR VPWR _3513_/D sky130_fd_sc_hd__mux2_1
Xinput5 input_binary_i[1] VGND VGND VPWR VPWR input5/X sky130_fd_sc_hd__buf_1
XFILLER_36_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_64_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_36_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_350 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2717_ _2865_/A VGND VGND VPWR VPWR _2777_/A sky130_fd_sc_hd__buf_2
X_3697_ _3707_/CLK _3697_/D VGND VGND VPWR VPWR _3697_/Q sky130_fd_sc_hd__dfxtp_1
X_2648_ _3274_/Q _2633_/X _2634_/X _3465_/Q _2647_/X VGND VGND VPWR VPWR _2648_/X
+ sky130_fd_sc_hd__a221o_1
X_2579_ _2585_/A _2585_/B _3361_/Q VGND VGND VPWR VPWR _2579_/X sky130_fd_sc_hd__and3_1
XFILLER_59_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_67_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_802 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_42_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_835 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_824 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_813 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_846 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_11_545 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_7_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_287 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_442 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_14_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1950_ _2056_/B _1930_/X _1949_/X VGND VGND VPWR VPWR _3407_/D sky130_fd_sc_hd__a21oi_1
X_1881_ _2097_/A _1697_/A _1869_/X _1705_/A VGND VGND VPWR VPWR _3436_/D sky130_fd_sc_hd__a31o_1
X_3620_ _3722_/CLK _3620_/D VGND VGND VPWR VPWR _3620_/Q sky130_fd_sc_hd__dfxtp_1
X_3551_ _3586_/CLK _3551_/D VGND VGND VPWR VPWR _3551_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2502_ _2873_/A VGND VGND VPWR VPWR _2799_/A sky130_fd_sc_hd__buf_1
X_3482_ _3482_/CLK _3482_/D VGND VGND VPWR VPWR _3482_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_51_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2433_ _2435_/A _2435_/B _3409_/Q VGND VGND VPWR VPWR _2433_/X sky130_fd_sc_hd__and3_1
X_2364_ _2406_/A VGND VGND VPWR VPWR _2375_/B sky130_fd_sc_hd__buf_1
X_2295_ _2299_/A _2299_/B _3455_/Q VGND VGND VPWR VPWR _2295_/X sky130_fd_sc_hd__and3_1
XFILLER_2_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_250 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_24_169 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XANTENNA_10 _3603_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_21 _3512_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_32_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3749_ _3754_/CLK _3749_/D input1/X VGND VGND VPWR VPWR _3750_/D sky130_fd_sc_hd__dfrtp_1
Xoutput150 _3505_/Q VGND VGND VPWR VPWR output_thermometer_o[19] sky130_fd_sc_hd__clkbuf_2
Xoutput161 _3661_/Q VGND VGND VPWR VPWR output_thermometer_o[175] sky130_fd_sc_hd__clkbuf_2
Xoutput194 _3653_/Q VGND VGND VPWR VPWR output_thermometer_o[167] sky130_fd_sc_hd__clkbuf_2
Xoutput172 _3525_/Q VGND VGND VPWR VPWR output_thermometer_o[39] sky130_fd_sc_hd__clkbuf_2
Xoutput183 _3614_/Q VGND VGND VPWR VPWR output_thermometer_o[128] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_261 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_497 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_412 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_610 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_621 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_632 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_643 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_62_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_654 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_665 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_676 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_687 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_698 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2080_ _2080_/A VGND VGND VPWR VPWR _3322_/D sky130_fd_sc_hd__clkbuf_2
XFILLER_34_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2982_ _2236_/X _3283_/Q _3173_/S VGND VGND VPWR VPWR _3493_/D sky130_fd_sc_hd__mux2_2
X_1933_ _2142_/B VGND VGND VPWR VPWR _2040_/A sky130_fd_sc_hd__clkbuf_2
X_3603_ _3722_/CLK _3603_/D VGND VGND VPWR VPWR _3603_/Q sky130_fd_sc_hd__dfxtp_1
X_1864_ _1864_/A _2112_/A VGND VGND VPWR VPWR _2092_/A sky130_fd_sc_hd__nand2_1
X_1795_ _1795_/A _1795_/B VGND VGND VPWR VPWR _2066_/A sky130_fd_sc_hd__nand2_1
X_3534_ _3720_/CLK _3534_/D VGND VGND VPWR VPWR _3534_/Q sky130_fd_sc_hd__dfxtp_1
X_3465_ _3485_/CLK _3465_/D VGND VGND VPWR VPWR _3465_/Q sky130_fd_sc_hd__dfxtp_1
X_2416_ _3350_/Q _2409_/X _2410_/X _3287_/Q _2415_/X VGND VGND VPWR VPWR _2416_/X
+ sky130_fd_sc_hd__a221o_1
X_3396_ _3420_/CLK _3396_/D VGND VGND VPWR VPWR _3396_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2347_ _2645_/A VGND VGND VPWR VPWR _2406_/A sky130_fd_sc_hd__buf_2
X_2278_ _2334_/A VGND VGND VPWR VPWR _2278_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_44_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_16_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_231 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_507 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_16_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_440 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_451 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_462 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_473 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_484 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_495 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3250_ _3709_/CLK _3250_/D VGND VGND VPWR VPWR _3250_/Q sky130_fd_sc_hd__dfxtp_1
X_2201_ _3747_/Q VGND VGND VPWR VPWR _2865_/A sky130_fd_sc_hd__clkbuf_2
X_3181_ _2832_/X _3339_/Q _3186_/S VGND VGND VPWR VPWR _3692_/D sky130_fd_sc_hd__mux2_1
XFILLER_14_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2132_ _2129_/X _2090_/B _2130_/X _2121_/X VGND VGND VPWR VPWR _3284_/D sky130_fd_sc_hd__a31oi_2
XFILLER_39_559 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2063_ _2063_/A _2072_/B VGND VGND VPWR VPWR _3337_/D sky130_fd_sc_hd__nor2_1
XFILLER_34_231 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_404 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2965_ _2965_/A _2965_/B _3484_/Q VGND VGND VPWR VPWR _2965_/X sky130_fd_sc_hd__and3_1
X_2896_ _3445_/Q _2887_/X _2888_/X _3381_/Q _2895_/X VGND VGND VPWR VPWR _2896_/X
+ sky130_fd_sc_hd__a221o_1
X_1916_ _1712_/X _1915_/Y _1910_/X VGND VGND VPWR VPWR _3422_/D sky130_fd_sc_hd__o21ai_1
X_1847_ _1845_/Y _1744_/X _1846_/X VGND VGND VPWR VPWR _3447_/D sky130_fd_sc_hd__o21ai_1
X_3517_ _3736_/CLK _3517_/D VGND VGND VPWR VPWR _3517_/Q sky130_fd_sc_hd__dfxtp_1
X_1778_ _1697_/X _1771_/B _1767_/X VGND VGND VPWR VPWR _3465_/D sky130_fd_sc_hd__a21o_1
X_3448_ _3746_/CLK _3448_/D VGND VGND VPWR VPWR _3448_/Q sky130_fd_sc_hd__dfxtp_1
X_3379_ _3738_/CLK _3379_/D VGND VGND VPWR VPWR _3379_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_334 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_57_356 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_25_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_4_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_36_518 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_16_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_270 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_292 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_281 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2750_ _2778_/A VGND VGND VPWR VPWR _2761_/B sky130_fd_sc_hd__buf_1
X_2681_ _2687_/A _2687_/B _3326_/Q VGND VGND VPWR VPWR _2681_/X sky130_fd_sc_hd__and3_1
X_1701_ _2085_/A _1741_/A VGND VGND VPWR VPWR _2043_/B sky130_fd_sc_hd__nand2_2
X_1632_ _1985_/B VGND VGND VPWR VPWR _1632_/Y sky130_fd_sc_hd__inv_2
X_3302_ _3762_/CLK _3302_/D VGND VGND VPWR VPWR _3302_/Q sky130_fd_sc_hd__dfxtp_1
X_3233_ _3425_/CLK _3233_/D VGND VGND VPWR VPWR _3233_/Q sky130_fd_sc_hd__dfxtp_1
X_3164_ _2780_/X _3356_/Q _3229_/S VGND VGND VPWR VPWR _3675_/D sky130_fd_sc_hd__mux2_1
X_2115_ _3298_/D _2115_/B VGND VGND VPWR VPWR _2119_/B sky130_fd_sc_hd__nand2_2
X_3095_ _2580_/X _3425_/Q _3225_/S VGND VGND VPWR VPWR _3606_/D sky130_fd_sc_hd__mux2_2
XFILLER_54_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2046_ _2078_/A VGND VGND VPWR VPWR _2053_/B sky130_fd_sc_hd__buf_2
XFILLER_22_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_50_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_278 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2948_ _3427_/Q _2943_/X _2944_/X _3363_/Q _2947_/X VGND VGND VPWR VPWR _2948_/X
+ sky130_fd_sc_hd__a221o_1
X_2879_ _2881_/A _2881_/B _3260_/Q VGND VGND VPWR VPWR _2879_/X sky130_fd_sc_hd__and3_1
XFILLER_57_153 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
Xrepeater280 _3196_/S VGND VGND VPWR VPWR _3229_/S sky130_fd_sc_hd__buf_8
XFILLER_26_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_26_573 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_9_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_5_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_68_407 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_63_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_521 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_576 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2802_ _3478_/Q _2798_/X _2800_/X _3414_/Q _2801_/X VGND VGND VPWR VPWR _2802_/X
+ sky130_fd_sc_hd__a221o_1
X_2733_ _2733_/A _2733_/B _3308_/Q VGND VGND VPWR VPWR _2733_/X sky130_fd_sc_hd__and3_1
X_2664_ _3269_/Q _2650_/X _2652_/X _3460_/Q _2663_/X VGND VGND VPWR VPWR _2664_/X
+ sky130_fd_sc_hd__a221o_1
X_1615_ input7/X input6/X VGND VGND VPWR VPWR _1682_/A sky130_fd_sc_hd__nor2_8
X_2595_ _2599_/A _2599_/B _3355_/Q VGND VGND VPWR VPWR _2595_/X sky130_fd_sc_hd__and3_1
XFILLER_67_440 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3216_ _2934_/X _3304_/Q _3219_/S VGND VGND VPWR VPWR _3727_/D sky130_fd_sc_hd__mux2_4
XFILLER_67_473 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3147_ _2732_/X _3373_/Q _3214_/S VGND VGND VPWR VPWR _3658_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3078_ _2526_/X _3442_/Q _3208_/S VGND VGND VPWR VPWR _3589_/D sky130_fd_sc_hd__mux2_1
XFILLER_54_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2029_ _1903_/Y _2024_/X _2027_/X VGND VGND VPWR VPWR _3363_/D sky130_fd_sc_hd__a21oi_1
XFILLER_23_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_565 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_9_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3728_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_1_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_45_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_41_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_68_204 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2380_ _3363_/Q _2367_/X _2368_/X _3299_/Q _2379_/X VGND VGND VPWR VPWR _2380_/X
+ sky130_fd_sc_hd__a221o_1
X_3001_ _2296_/X _3264_/Q _3196_/S VGND VGND VPWR VPWR _3512_/D sky130_fd_sc_hd__mux2_2
Xinput6 input_binary_i[2] VGND VGND VPWR VPWR input6/X sky130_fd_sc_hd__buf_6
XFILLER_36_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_51_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_340 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_513 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3696_ _3705_/CLK _3696_/D VGND VGND VPWR VPWR _3696_/Q sky130_fd_sc_hd__dfxtp_1
X_2716_ _3250_/Q _2707_/X _2708_/X _3441_/Q _2715_/X VGND VGND VPWR VPWR _2716_/X
+ sky130_fd_sc_hd__a221o_1
X_2647_ _2659_/A _2659_/B _3337_/Q VGND VGND VPWR VPWR _2647_/X sky130_fd_sc_hd__and3_1
XFILLER_10_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2578_ _2634_/A VGND VGND VPWR VPWR _2578_/X sky130_fd_sc_hd__buf_2
XFILLER_19_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_27_178 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_836 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_825 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_814 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_803 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_847 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_11_557 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_7_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_51_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_18_156 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_454 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_33_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_1880_ _1803_/A _1920_/A _1752_/A VGND VGND VPWR VPWR _2097_/A sky130_fd_sc_hd__o21ai_2
XFILLER_41_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3550_ _3739_/CLK _3550_/D VGND VGND VPWR VPWR _3550_/Q sky130_fd_sc_hd__dfxtp_1
X_2501_ _2559_/A VGND VGND VPWR VPWR _2501_/X sky130_fd_sc_hd__clkbuf_2
X_3481_ _3746_/CLK _3481_/D VGND VGND VPWR VPWR _3481_/Q sky130_fd_sc_hd__dfxtp_1
X_2432_ _3346_/Q _2426_/X _2428_/X _3283_/Q _2431_/X VGND VGND VPWR VPWR _2432_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_44_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2363_ _2405_/A VGND VGND VPWR VPWR _2375_/A sky130_fd_sc_hd__buf_1
X_2294_ _3392_/Q _2291_/X _2292_/X _3328_/Q _2293_/X VGND VGND VPWR VPWR _2294_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_56_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_410 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_11 _3619_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_22 _3512_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_20_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3748_ _3763_/CLK _3748_/D input1/X VGND VGND VPWR VPWR _3748_/Q sky130_fd_sc_hd__dfrtp_2
X_3679_ _3713_/CLK _3679_/D VGND VGND VPWR VPWR _3679_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput140 _3631_/Q VGND VGND VPWR VPWR output_thermometer_o[145] sky130_fd_sc_hd__clkbuf_2
Xoutput151 _3708_/Q VGND VGND VPWR VPWR output_thermometer_o[222] sky130_fd_sc_hd__clkbuf_2
Xoutput184 _3714_/Q VGND VGND VPWR VPWR output_thermometer_o[228] sky130_fd_sc_hd__clkbuf_2
Xoutput162 _3499_/Q VGND VGND VPWR VPWR output_thermometer_o[13] sky130_fd_sc_hd__clkbuf_2
Xoutput173 _3585_/Q VGND VGND VPWR VPWR output_thermometer_o[99] sky130_fd_sc_hd__clkbuf_2
Xoutput195 _3535_/Q VGND VGND VPWR VPWR output_thermometer_o[49] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_45 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_12_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3705_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_15_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_43_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_600 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_611 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_622 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_633 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_644 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_655 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_666 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_677 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_27_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3744_/CLK sky130_fd_sc_hd__clkbuf_16
XPHY_688 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_699 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_325 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_527 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_19_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_446 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_61_276 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2981_ _2234_/X _3284_/Q _3173_/S VGND VGND VPWR VPWR _3492_/D sky130_fd_sc_hd__mux2_2
XFILLER_14_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1932_ _2134_/B VGND VGND VPWR VPWR _2141_/A sky130_fd_sc_hd__inv_2
X_1863_ _1839_/X _1860_/Y _1862_/X VGND VGND VPWR VPWR _3442_/D sky130_fd_sc_hd__o21ai_1
X_3602_ _3713_/CLK _3602_/D VGND VGND VPWR VPWR _3602_/Q sky130_fd_sc_hd__dfxtp_1
X_1794_ _1896_/C _1794_/B _1794_/C VGND VGND VPWR VPWR _1795_/B sky130_fd_sc_hd__nand3_4
XFILLER_6_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3533_ _3736_/CLK _3533_/D VGND VGND VPWR VPWR _3533_/Q sky130_fd_sc_hd__dfxtp_1
X_3464_ _3731_/CLK _3464_/D VGND VGND VPWR VPWR _3464_/Q sky130_fd_sc_hd__dfxtp_1
X_2415_ _2417_/A _2417_/B _3414_/Q VGND VGND VPWR VPWR _2415_/X sky130_fd_sc_hd__and3_1
X_3395_ _3705_/CLK _3395_/D VGND VGND VPWR VPWR _3395_/Q sky130_fd_sc_hd__dfxtp_1
X_2346_ _2867_/A VGND VGND VPWR VPWR _2645_/A sky130_fd_sc_hd__buf_1
XFILLER_57_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2277_ _2958_/A VGND VGND VPWR VPWR _2334_/A sky130_fd_sc_hd__buf_2
XFILLER_29_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_298 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_430 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_441 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_452 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_463 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_474 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_485 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_496 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_350 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2200_ input2/X _3763_/Q VGND VGND VPWR VPWR _3748_/D sky130_fd_sc_hd__and2_1
X_3180_ _2830_/X _3340_/Q _3187_/S VGND VGND VPWR VPWR _3691_/D sky130_fd_sc_hd__mux2_1
XFILLER_66_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_66_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2131_ _2129_/X _2089_/B _2130_/X _2121_/X VGND VGND VPWR VPWR _3285_/D sky130_fd_sc_hd__a31oi_2
X_2062_ _2062_/A _2194_/A _2194_/B VGND VGND VPWR VPWR _3338_/D sky130_fd_sc_hd__and3_1
XFILLER_19_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_560 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_47_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_19_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2964_ _3421_/Q _2957_/X _2958_/X _3357_/Q _2963_/X VGND VGND VPWR VPWR _2964_/X
+ sky130_fd_sc_hd__a221o_1
X_1915_ _1983_/A _2165_/A _1990_/A VGND VGND VPWR VPWR _1915_/Y sky130_fd_sc_hd__nand3_4
X_2895_ _2895_/A _2895_/B _3254_/Q VGND VGND VPWR VPWR _2895_/X sky130_fd_sc_hd__and3_1
XFILLER_8_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1846_ _1846_/A VGND VGND VPWR VPWR _1846_/X sky130_fd_sc_hd__buf_1
X_1777_ _2040_/B _1747_/C _2141_/B VGND VGND VPWR VPWR _3466_/D sky130_fd_sc_hd__o21ai_1
X_3516_ _3707_/CLK _3516_/D VGND VGND VPWR VPWR _3516_/Q sky130_fd_sc_hd__dfxtp_1
X_3447_ _3746_/CLK _3447_/D VGND VGND VPWR VPWR _3447_/Q sky130_fd_sc_hd__dfxtp_1
X_3378_ _3586_/CLK _3378_/D VGND VGND VPWR VPWR _3378_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_324 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2329_ _2329_/A VGND VGND VPWR VPWR _2341_/A sky130_fd_sc_hd__buf_1
XFILLER_27_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_276 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_4_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_68_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_320 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_353 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_232 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_260 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_293 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_282 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_271 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1700_ _2079_/A VGND VGND VPWR VPWR _1741_/A sky130_fd_sc_hd__clkinv_4
X_2680_ _2708_/A VGND VGND VPWR VPWR _2680_/X sky130_fd_sc_hd__buf_2
XFILLER_8_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1631_ _1769_/B VGND VGND VPWR VPWR _1985_/B sky130_fd_sc_hd__clkbuf_4
X_3301_ _3762_/CLK _3301_/D VGND VGND VPWR VPWR _3301_/Q sky130_fd_sc_hd__dfxtp_1
X_3232_ _3453_/CLK _3232_/D VGND VGND VPWR VPWR _3232_/Q sky130_fd_sc_hd__dfxtp_1
X_3163_ _2776_/X _3357_/Q _3229_/S VGND VGND VPWR VPWR _3674_/D sky130_fd_sc_hd__mux2_2
XFILLER_66_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2114_ _1828_/B _1708_/A _3297_/D VGND VGND VPWR VPWR _3295_/D sky130_fd_sc_hd__o21a_1
X_3094_ _2574_/X _3426_/Q _3222_/S VGND VGND VPWR VPWR _3605_/D sky130_fd_sc_hd__mux2_2
XFILLER_54_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2045_ _2055_/A VGND VGND VPWR VPWR _2078_/A sky130_fd_sc_hd__buf_2
XFILLER_22_235 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2947_ _2951_/A _2951_/B _3236_/Q VGND VGND VPWR VPWR _2947_/X sky130_fd_sc_hd__and3_1
X_2878_ _3452_/Q _2872_/X _2874_/X _3388_/Q _2877_/X VGND VGND VPWR VPWR _2878_/X
+ sky130_fd_sc_hd__a221o_1
X_1829_ _1938_/B VGND VGND VPWR VPWR _1907_/A sky130_fd_sc_hd__buf_4
XFILLER_57_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_305 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xrepeater281 _3192_/S VGND VGND VPWR VPWR _3196_/S sky130_fd_sc_hd__buf_8
XFILLER_45_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_371 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_246 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_478 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_533 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2801_ _2807_/A _2807_/B _3287_/Q VGND VGND VPWR VPWR _2801_/X sky130_fd_sc_hd__and3_1
X_2732_ _3246_/Q _2724_/X _2726_/X _3437_/Q _2731_/X VGND VGND VPWR VPWR _2732_/X
+ sky130_fd_sc_hd__a221o_1
X_2663_ _2673_/A _2673_/B _3332_/Q VGND VGND VPWR VPWR _2663_/X sky130_fd_sc_hd__and3_1
X_2594_ _3292_/Q _2591_/X _2592_/X _3484_/Q _2593_/X VGND VGND VPWR VPWR _2594_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_59_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3215_ _2932_/X _3305_/Q _3222_/S VGND VGND VPWR VPWR _3726_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_132 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_39_143 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3146_ _2730_/X _3374_/Q _3214_/S VGND VGND VPWR VPWR _3657_/D sky130_fd_sc_hd__mux2_1
XFILLER_67_496 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3077_ _2524_/X _3443_/Q _3208_/S VGND VGND VPWR VPWR _3588_/D sky130_fd_sc_hd__mux2_1
X_2028_ _1901_/Y _2024_/X _2027_/X VGND VGND VPWR VPWR _3364_/D sky130_fd_sc_hd__a21oi_1
XFILLER_35_360 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_37 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_330 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_45 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_41_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_430 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3000_ _2294_/X _3265_/Q _3192_/S VGND VGND VPWR VPWR _3511_/D sky130_fd_sc_hd__mux2_2
Xinput7 input_binary_i[3] VGND VGND VPWR VPWR input7/X sky130_fd_sc_hd__buf_2
XFILLER_49_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_64_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_308 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_382 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_558 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2715_ _2715_/A _2715_/B _3313_/Q VGND VGND VPWR VPWR _2715_/X sky130_fd_sc_hd__and3_1
X_3695_ _3716_/CLK _3695_/D VGND VGND VPWR VPWR _3695_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_10_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2646_ _2704_/A VGND VGND VPWR VPWR _2659_/B sky130_fd_sc_hd__buf_1
X_2577_ _2799_/A VGND VGND VPWR VPWR _2634_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_55_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_444 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_27_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3129_ _2678_/X _3391_/Q _3196_/S VGND VGND VPWR VPWR _3640_/D sky130_fd_sc_hd__mux2_1
XFILLER_35_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_35_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_42_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_826 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_815 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_804 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_837 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_569 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_51_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_234 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_14_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3480_ _3739_/CLK _3480_/D VGND VGND VPWR VPWR _3480_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2500_ _2797_/A VGND VGND VPWR VPWR _2559_/A sky130_fd_sc_hd__buf_2
X_2431_ _2435_/A _2435_/B _3410_/Q VGND VGND VPWR VPWR _2431_/X sky130_fd_sc_hd__and3_1
X_2362_ _3369_/Q _2352_/X _2354_/X _3305_/Q _2361_/X VGND VGND VPWR VPWR _2362_/X
+ sky130_fd_sc_hd__a221o_1
X_2293_ _2299_/A _2299_/B _3456_/Q VGND VGND VPWR VPWR _2293_/X sky130_fd_sc_hd__and3_1
XFILLER_37_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_285 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_499 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_12 _3621_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XANTENNA_23 _3533_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
Xclkbuf_leaf_8_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3737_/CLK sky130_fd_sc_hd__clkbuf_16
X_3747_ _3763_/CLK _3747_/D input1/X VGND VGND VPWR VPWR _3747_/Q sky130_fd_sc_hd__dfrtp_2
X_3678_ _3709_/CLK _3678_/D VGND VGND VPWR VPWR _3678_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput130 _3685_/Q VGND VGND VPWR VPWR output_thermometer_o[199] sky130_fd_sc_hd__clkbuf_2
Xoutput152 _3667_/Q VGND VGND VPWR VPWR output_thermometer_o[181] sky130_fd_sc_hd__clkbuf_2
Xoutput141 _3502_/Q VGND VGND VPWR VPWR output_thermometer_o[16] sky130_fd_sc_hd__clkbuf_2
X_2629_ _2629_/A VGND VGND VPWR VPWR _2641_/A sky130_fd_sc_hd__buf_1
Xoutput174 _3527_/Q VGND VGND VPWR VPWR output_thermometer_o[41] sky130_fd_sc_hd__clkbuf_2
Xoutput163 _3664_/Q VGND VGND VPWR VPWR output_thermometer_o[178] sky130_fd_sc_hd__clkbuf_2
Xoutput185 _3541_/Q VGND VGND VPWR VPWR output_thermometer_o[55] sky130_fd_sc_hd__clkbuf_2
Xoutput196 _3645_/Q VGND VGND VPWR VPWR output_thermometer_o[159] sky130_fd_sc_hd__clkbuf_2
XFILLER_15_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_28_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_149 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_601 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_612 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_623 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_634 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_645 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_656 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_667 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_678 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_689 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_539 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_16_8 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_411 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2980_ _2232_/X _3285_/Q _3173_/S VGND VGND VPWR VPWR _3491_/D sky130_fd_sc_hd__mux2_1
XFILLER_21_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1931_ _2047_/A _1930_/X _1928_/A VGND VGND VPWR VPWR _3415_/D sky130_fd_sc_hd__a21oi_1
XFILLER_42_480 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1862_ _1949_/A VGND VGND VPWR VPWR _1862_/X sky130_fd_sc_hd__clkbuf_2
Xinput10 input_binary_i[6] VGND VGND VPWR VPWR _1729_/A sky130_fd_sc_hd__buf_4
X_3601_ _3716_/CLK _3601_/D VGND VGND VPWR VPWR _3601_/Q sky130_fd_sc_hd__dfxtp_1
X_1793_ _1793_/A _2111_/A VGND VGND VPWR VPWR _1896_/C sky130_fd_sc_hd__nand2_2
X_3532_ _3745_/CLK _3532_/D VGND VGND VPWR VPWR _3532_/Q sky130_fd_sc_hd__dfxtp_1
X_3463_ _3467_/CLK _3463_/D VGND VGND VPWR VPWR _3463_/Q sky130_fd_sc_hd__dfxtp_1
X_2414_ _3351_/Q _2409_/X _2410_/X _3288_/Q _2413_/X VGND VGND VPWR VPWR _2414_/X
+ sky130_fd_sc_hd__a221o_1
X_3394_ _3707_/CLK _3394_/D VGND VGND VPWR VPWR _3394_/Q sky130_fd_sc_hd__dfxtp_1
X_2345_ _2405_/A VGND VGND VPWR VPWR _2361_/A sky130_fd_sc_hd__buf_1
X_2276_ _2873_/A VGND VGND VPWR VPWR _2958_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_65_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_52_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_20_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_57_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_420 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_431 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_442 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_453 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_464 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_475 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_486 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_497 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_145 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_7_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2130_ _2152_/A VGND VGND VPWR VPWR _2130_/X sky130_fd_sc_hd__clkbuf_4
X_2061_ _2068_/A _2061_/B VGND VGND VPWR VPWR _3339_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_252 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_417 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2963_ _2965_/A _2965_/B _3485_/Q VGND VGND VPWR VPWR _2963_/X sky130_fd_sc_hd__and3_1
X_1914_ _1712_/X _1913_/Y _1910_/X VGND VGND VPWR VPWR _3423_/D sky130_fd_sc_hd__o21ai_1
X_2894_ _3446_/Q _2887_/X _2888_/X _3382_/Q _2893_/X VGND VGND VPWR VPWR _2894_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_30_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1845_ _2016_/B _2086_/A VGND VGND VPWR VPWR _1845_/Y sky130_fd_sc_hd__nand2_1
XFILLER_8_94 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1776_ _2142_/B VGND VGND VPWR VPWR _2141_/B sky130_fd_sc_hd__clkbuf_2
X_3515_ _3728_/CLK _3515_/D VGND VGND VPWR VPWR _3515_/Q sky130_fd_sc_hd__dfxtp_1
Xclkbuf_leaf_11_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3714_/CLK sky130_fd_sc_hd__clkbuf_16
X_3446_ _3746_/CLK _3446_/D VGND VGND VPWR VPWR _3446_/Q sky130_fd_sc_hd__dfxtp_1
X_3377_ _3720_/CLK _3377_/D VGND VGND VPWR VPWR _3377_/Q sky130_fd_sc_hd__dfxtp_1
X_2328_ _3379_/Q _2319_/X _2320_/X _3315_/Q _2327_/X VGND VGND VPWR VPWR _2328_/X
+ sky130_fd_sc_hd__a221o_1
Xclkbuf_leaf_26_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3435_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_45_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2259_ _2265_/A _2265_/B _3466_/Q VGND VGND VPWR VPWR _2259_/X sky130_fd_sc_hd__and3_1
XFILLER_25_211 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_376 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_288 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_261 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_250 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_294 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_283 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_272 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1630_ _1619_/Y _1852_/B _1803_/B _1749_/A VGND VGND VPWR VPWR _1769_/B sky130_fd_sc_hd__a22oi_4
X_3300_ _3431_/CLK _3300_/D VGND VGND VPWR VPWR _3300_/Q sky130_fd_sc_hd__dfxtp_1
X_3231_ _3452_/CLK _3231_/D VGND VGND VPWR VPWR _3231_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_325 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3162_ _2774_/X _3358_/Q _3229_/S VGND VGND VPWR VPWR _3673_/D sky130_fd_sc_hd__mux2_2
XFILLER_66_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_347 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2113_ _3297_/D _2113_/B VGND VGND VPWR VPWR _3296_/D sky130_fd_sc_hd__and2_1
X_3093_ _2568_/X _3427_/Q _3219_/S VGND VGND VPWR VPWR _3604_/D sky130_fd_sc_hd__mux2_2
X_2044_ _2066_/B VGND VGND VPWR VPWR _2055_/A sky130_fd_sc_hd__inv_2
XFILLER_47_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_35_553 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2946_ _3428_/Q _2943_/X _2944_/X _3364_/Q _2945_/X VGND VGND VPWR VPWR _2946_/X
+ sky130_fd_sc_hd__a221o_1
X_2877_ _2881_/A _2881_/B _3261_/Q VGND VGND VPWR VPWR _2877_/X sky130_fd_sc_hd__and3_1
X_1828_ _1828_/A _1828_/B _1828_/C VGND VGND VPWR VPWR _1828_/X sky130_fd_sc_hd__and3_1
X_1759_ _1864_/A _2101_/B _1741_/A VGND VGND VPWR VPWR _1771_/B sky130_fd_sc_hd__o21ai_4
XFILLER_1_129 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3429_ _3754_/CLK _3429_/D VGND VGND VPWR VPWR _3429_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_38_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_57_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xrepeater282 _3186_/S VGND VGND VPWR VPWR _3192_/S sky130_fd_sc_hd__buf_8
XFILLER_26_564 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_203 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_63_147 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2800_ _2856_/A VGND VGND VPWR VPWR _2800_/X sky130_fd_sc_hd__clkbuf_2
X_2731_ _2733_/A _2733_/B _3309_/Q VGND VGND VPWR VPWR _2731_/X sky130_fd_sc_hd__and3_1
XFILLER_8_273 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_67_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2662_ _2704_/A VGND VGND VPWR VPWR _2673_/B sky130_fd_sc_hd__buf_1
X_2593_ _2599_/A _2599_/B _3356_/Q VGND VGND VPWR VPWR _2593_/X sky130_fd_sc_hd__and3_1
X_3214_ _2928_/X _3306_/Q _3214_/S VGND VGND VPWR VPWR _3725_/D sky130_fd_sc_hd__mux2_1
XFILLER_67_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3145_ _2728_/X _3375_/Q _3214_/S VGND VGND VPWR VPWR _3656_/D sky130_fd_sc_hd__mux2_1
X_3076_ _2522_/X _3444_/Q _3204_/S VGND VGND VPWR VPWR _3587_/D sky130_fd_sc_hd__mux2_1
XFILLER_54_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2027_ _2152_/A VGND VGND VPWR VPWR _2027_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_10_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2929_ _2929_/A VGND VGND VPWR VPWR _2929_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_6_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_58_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_14_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_26_350 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_361 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_26_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_14_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_68_228 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xinput8 input_binary_i[4] VGND VGND VPWR VPWR input8/X sky130_fd_sc_hd__buf_2
XFILLER_64_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_361 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_537 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3763_ _3763_/CLK _3763_/D input1/X VGND VGND VPWR VPWR _3763_/Q sky130_fd_sc_hd__dfrtp_1
X_3694_ _3707_/CLK _3694_/D VGND VGND VPWR VPWR _3694_/Q sky130_fd_sc_hd__dfxtp_1
X_2714_ _3251_/Q _2707_/X _2708_/X _3442_/Q _2713_/X VGND VGND VPWR VPWR _2714_/X
+ sky130_fd_sc_hd__a221o_1
X_2645_ _2645_/A VGND VGND VPWR VPWR _2704_/A sky130_fd_sc_hd__buf_2
X_2576_ _2633_/A VGND VGND VPWR VPWR _2576_/X sky130_fd_sc_hd__buf_2
XFILLER_67_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3128_ _2674_/X _3392_/Q _3196_/S VGND VGND VPWR VPWR _3639_/D sky130_fd_sc_hd__mux2_2
X_3059_ _2468_/X _3461_/Q _3192_/S VGND VGND VPWR VPWR _3570_/D sky130_fd_sc_hd__mux2_2
XPHY_827 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_816 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_805 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_35_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_838 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_33_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_92 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_541 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_41_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2430_ _3347_/Q _2426_/X _2428_/X _3284_/Q _2429_/X VGND VGND VPWR VPWR _2430_/X
+ sky130_fd_sc_hd__a221o_1
X_2361_ _2361_/A _2361_/B _3433_/Q VGND VGND VPWR VPWR _2361_/X sky130_fd_sc_hd__and3_1
X_2292_ _2334_/A VGND VGND VPWR VPWR _2292_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_56_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_478 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_13 _3646_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_32_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_24 _3543_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3746_ _3746_/CLK _3746_/D VGND VGND VPWR VPWR _3746_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3677_ _3728_/CLK _3677_/D VGND VGND VPWR VPWR _3677_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput142 _3644_/Q VGND VGND VPWR VPWR output_thermometer_o[158] sky130_fd_sc_hd__clkbuf_2
Xoutput120 _3579_/Q VGND VGND VPWR VPWR output_thermometer_o[93] sky130_fd_sc_hd__clkbuf_2
Xoutput131 _3633_/Q VGND VGND VPWR VPWR output_thermometer_o[147] sky130_fd_sc_hd__clkbuf_2
X_2628_ _3280_/Q _2619_/X _2620_/X _3471_/Q _2627_/X VGND VGND VPWR VPWR _2628_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput186 _3706_/Q VGND VGND VPWR VPWR output_thermometer_o[220] sky130_fd_sc_hd__clkbuf_2
Xoutput164 _3734_/Q VGND VGND VPWR VPWR output_thermometer_o[248] sky130_fd_sc_hd__clkbuf_2
Xoutput175 _3590_/Q VGND VGND VPWR VPWR output_thermometer_o[104] sky130_fd_sc_hd__clkbuf_2
Xoutput153 _3521_/Q VGND VGND VPWR VPWR output_thermometer_o[35] sky130_fd_sc_hd__clkbuf_2
X_2559_ _2559_/A VGND VGND VPWR VPWR _2559_/X sky130_fd_sc_hd__clkbuf_2
Xoutput197 _3606_/Q VGND VGND VPWR VPWR output_thermometer_o[120] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_46_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_602 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_613 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_624 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_635 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_646 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_657 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_668 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_679 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_507 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_275 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1930_ _2002_/A VGND VGND VPWR VPWR _1930_/X sky130_fd_sc_hd__buf_2
X_1861_ _2146_/A VGND VGND VPWR VPWR _1949_/A sky130_fd_sc_hd__buf_2
X_3600_ _3745_/CLK _3600_/D VGND VGND VPWR VPWR _3600_/Q sky130_fd_sc_hd__dfxtp_1
Xinput11 input_binary_i[7] VGND VGND VPWR VPWR _1647_/A sky130_fd_sc_hd__clkbuf_4
X_3531_ _3744_/CLK _3531_/D VGND VGND VPWR VPWR _3531_/Q sky130_fd_sc_hd__dfxtp_1
X_1792_ _2065_/A _1766_/X _1767_/X VGND VGND VPWR VPWR _3463_/D sky130_fd_sc_hd__a21o_1
X_3462_ _3467_/CLK _3462_/D VGND VGND VPWR VPWR _3462_/Q sky130_fd_sc_hd__dfxtp_1
X_2413_ _2417_/A _2417_/B _3415_/Q VGND VGND VPWR VPWR _2413_/X sky130_fd_sc_hd__and3_1
X_3393_ _3420_/CLK _3393_/D VGND VGND VPWR VPWR _3393_/Q sky130_fd_sc_hd__dfxtp_1
X_2344_ _2643_/A VGND VGND VPWR VPWR _2405_/A sky130_fd_sc_hd__buf_2
X_2275_ _2333_/A VGND VGND VPWR VPWR _2275_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_65_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_37_275 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_37_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3729_ _3745_/CLK _3729_/D VGND VGND VPWR VPWR _3729_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_4_319 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_4_308 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_547 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_410 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_421 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_432 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_443 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_454 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_465 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_476 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_487 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_498 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_374 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_7_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3716_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_66_359 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2060_ _2068_/A _2060_/B VGND VGND VPWR VPWR _3340_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_62_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_19_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_34_267 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2962_ _3422_/Q _2957_/X _2958_/X _3358_/Q _2961_/X VGND VGND VPWR VPWR _2962_/X
+ sky130_fd_sc_hd__a221o_1
X_1913_ _1981_/A _2165_/A _1990_/A VGND VGND VPWR VPWR _1913_/Y sky130_fd_sc_hd__nand3_2
X_2893_ _2895_/A _2895_/B _3255_/Q VGND VGND VPWR VPWR _2893_/X sky130_fd_sc_hd__and3_1
XFILLER_30_462 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1844_ _1905_/A VGND VGND VPWR VPWR _2016_/B sky130_fd_sc_hd__clkbuf_2
X_1775_ _1773_/X _2188_/A _1797_/A _2061_/B VGND VGND VPWR VPWR _3467_/D sky130_fd_sc_hd__o22ai_2
X_3514_ _3709_/CLK _3514_/D VGND VGND VPWR VPWR _3514_/Q sky130_fd_sc_hd__dfxtp_1
X_3445_ _3746_/CLK _3445_/D VGND VGND VPWR VPWR _3445_/Q sky130_fd_sc_hd__dfxtp_1
X_3376_ _3449_/CLK _3376_/D VGND VGND VPWR VPWR _3376_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_304 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2327_ _2327_/A _2327_/B _3443_/Q VGND VGND VPWR VPWR _2327_/X sky130_fd_sc_hd__and3_1
X_2258_ _2258_/A VGND VGND VPWR VPWR _2258_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_38_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2189_ _2188_/X _1896_/Y _2180_/X VGND VGND VPWR VPWR _3239_/D sky130_fd_sc_hd__o21ai_1
XFILLER_25_245 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_440 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_348 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_63_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_381 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_16_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_521 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_251 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_240 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_31_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_295 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_284 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_273 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_262 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_411 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_92 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_8_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3230_ _2970_/X _3290_/Q _3230_/S VGND VGND VPWR VPWR _3741_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3161_ _2772_/X _3359_/Q _3225_/S VGND VGND VPWR VPWR _3672_/D sky130_fd_sc_hd__mux2_1
XFILLER_66_112 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2112_ _2112_/A _2112_/B VGND VGND VPWR VPWR _3297_/D sky130_fd_sc_hd__nor2_2
XFILLER_66_156 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3092_ _2566_/X _3428_/Q _3219_/S VGND VGND VPWR VPWR _3603_/D sky130_fd_sc_hd__mux2_4
X_2043_ _3353_/D _2043_/B VGND VGND VPWR VPWR _3352_/D sky130_fd_sc_hd__and2_1
X_2945_ _2951_/A _2951_/B _3237_/Q VGND VGND VPWR VPWR _2945_/X sky130_fd_sc_hd__and3_1
XFILLER_50_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2876_ _3453_/Q _2872_/X _2874_/X _3389_/Q _2875_/X VGND VGND VPWR VPWR _2876_/X
+ sky130_fd_sc_hd__a221o_1
X_1827_ _1815_/X _2076_/B _1820_/X VGND VGND VPWR VPWR _3453_/D sky130_fd_sc_hd__o21ai_1
X_1758_ _1758_/A _1758_/B _2099_/B VGND VGND VPWR VPWR _2101_/B sky130_fd_sc_hd__and3_4
XFILLER_1_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1689_ _1990_/B _1975_/B VGND VGND VPWR VPWR _1689_/Y sky130_fd_sc_hd__nand2_2
X_3428_ _3754_/CLK _3428_/D VGND VGND VPWR VPWR _3428_/Q sky130_fd_sc_hd__dfxtp_1
X_3359_ _3453_/CLK _3359_/D VGND VGND VPWR VPWR _3359_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_178 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_26_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xrepeater283 _3186_/S VGND VGND VPWR VPWR _3187_/S sky130_fd_sc_hd__buf_4
XFILLER_26_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_259 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_63_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_10_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3707_/CLK sky130_fd_sc_hd__clkbuf_16
X_2730_ _3247_/Q _2724_/X _2726_/X _3438_/Q _2729_/X VGND VGND VPWR VPWR _2730_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_12_292 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_25_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3763_/CLK sky130_fd_sc_hd__clkbuf_16
X_2661_ _2703_/A VGND VGND VPWR VPWR _2673_/A sky130_fd_sc_hd__buf_1
XFILLER_8_285 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2592_ _2634_/A VGND VGND VPWR VPWR _2592_/X sky130_fd_sc_hd__clkbuf_2
X_3213_ _2924_/X _3307_/Q _3214_/S VGND VGND VPWR VPWR _3724_/D sky130_fd_sc_hd__mux2_2
XFILLER_67_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3144_ _2722_/X _3376_/Q _3208_/S VGND VGND VPWR VPWR _3655_/D sky130_fd_sc_hd__mux2_2
X_3075_ _2520_/X _3445_/Q _3204_/S VGND VGND VPWR VPWR _3586_/D sky130_fd_sc_hd__mux2_1
X_2026_ _1899_/Y _2024_/X _2017_/X VGND VGND VPWR VPWR _3365_/D sky130_fd_sc_hd__a21oi_1
XFILLER_23_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2928_ _3434_/Q _2915_/X _2916_/X _3370_/Q _2927_/X VGND VGND VPWR VPWR _2928_/X
+ sky130_fd_sc_hd__a221o_1
X_2859_ _2863_/A _2863_/B _3266_/Q VGND VGND VPWR VPWR _2859_/X sky130_fd_sc_hd__and3_1
XFILLER_2_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_49_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_18_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_65_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_58_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_45_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_159 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_535 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_41_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_41_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_255 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_5_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xinput9 input_binary_i[5] VGND VGND VPWR VPWR input9/X sky130_fd_sc_hd__buf_4
XFILLER_17_340 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_32_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3762_ _3762_/CLK _3762_/D input1/X VGND VGND VPWR VPWR _3763_/D sky130_fd_sc_hd__dfrtp_1
X_3693_ _3714_/CLK _3693_/D VGND VGND VPWR VPWR _3693_/Q sky130_fd_sc_hd__dfxtp_1
X_2713_ _2715_/A _2715_/B _3314_/Q VGND VGND VPWR VPWR _2713_/X sky130_fd_sc_hd__and3_1
X_2644_ _2703_/A VGND VGND VPWR VPWR _2659_/A sky130_fd_sc_hd__buf_1
X_2575_ _2797_/A VGND VGND VPWR VPWR _2633_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_59_218 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_59_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3127_ _2672_/X _3393_/Q _3196_/S VGND VGND VPWR VPWR _3638_/D sky130_fd_sc_hd__mux2_2
XFILLER_55_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_55_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3058_ _2464_/X _3462_/Q _3186_/S VGND VGND VPWR VPWR _3569_/D sky130_fd_sc_hd__mux2_2
XPHY_817 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_806 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2009_ _2008_/Y _2002_/X _2006_/X VGND VGND VPWR VPWR _3375_/D sky130_fd_sc_hd__a21oi_1
XPHY_839 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_828 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_50_173 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_2_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_60 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_93 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2360_ _3370_/Q _2352_/X _2354_/X _3306_/Q _2359_/X VGND VGND VPWR VPWR _2360_/X
+ sky130_fd_sc_hd__a221o_1
X_2291_ _2333_/A VGND VGND VPWR VPWR _2291_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_37_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_460 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XANTENNA_14 _3652_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_20_302 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_25 _3582_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_20_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3745_ _3745_/CLK _3745_/D VGND VGND VPWR VPWR _3745_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput110 _3509_/Q VGND VGND VPWR VPWR output_thermometer_o[23] sky130_fd_sc_hd__clkbuf_2
X_3676_ _3738_/CLK _3676_/D VGND VGND VPWR VPWR _3676_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput132 _3488_/Q VGND VGND VPWR VPWR output_thermometer_o[2] sky130_fd_sc_hd__clkbuf_2
Xoutput121 _3512_/Q VGND VGND VPWR VPWR output_thermometer_o[26] sky130_fd_sc_hd__clkbuf_2
Xoutput143 _3531_/Q VGND VGND VPWR VPWR output_thermometer_o[45] sky130_fd_sc_hd__clkbuf_2
X_2627_ _2627_/A _2627_/B _3343_/Q VGND VGND VPWR VPWR _2627_/X sky130_fd_sc_hd__and3_1
Xoutput176 _3655_/Q VGND VGND VPWR VPWR output_thermometer_o[169] sky130_fd_sc_hd__clkbuf_2
Xoutput154 _3693_/Q VGND VGND VPWR VPWR output_thermometer_o[207] sky130_fd_sc_hd__clkbuf_2
Xoutput165 _3617_/Q VGND VGND VPWR VPWR output_thermometer_o[131] sky130_fd_sc_hd__clkbuf_2
X_2558_ _3303_/Q _2545_/X _2546_/X _3240_/Q _2557_/X VGND VGND VPWR VPWR _2558_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput198 _3564_/Q VGND VGND VPWR VPWR output_thermometer_o[78] sky130_fd_sc_hd__clkbuf_2
X_2489_ _2491_/A _2491_/B _3389_/Q VGND VGND VPWR VPWR _2489_/X sky130_fd_sc_hd__and3_1
Xoutput187 _3597_/Q VGND VGND VPWR VPWR output_thermometer_o[111] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_560 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_37 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_603 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_614 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_625 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_62_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_636 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_647 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_658 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_482 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_669 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_59_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_19_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_210 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_232 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_19_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_61_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_213 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_34_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1860_ _1860_/A _1860_/B VGND VGND VPWR VPWR _1860_/Y sky130_fd_sc_hd__nand2_1
XFILLER_42_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1791_ _1795_/A _1791_/B VGND VGND VPWR VPWR _2065_/A sky130_fd_sc_hd__nand2_1
Xinput12 input_binary_i[8] VGND VGND VPWR VPWR _1691_/A sky130_fd_sc_hd__clkbuf_2
X_3530_ _3734_/CLK _3530_/D VGND VGND VPWR VPWR _3530_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3461_ _3716_/CLK _3461_/D VGND VGND VPWR VPWR _3461_/Q sky130_fd_sc_hd__dfxtp_1
X_3392_ _3705_/CLK _3392_/D VGND VGND VPWR VPWR _3392_/Q sky130_fd_sc_hd__dfxtp_1
X_2412_ _3352_/Q _2409_/X _2410_/X _3289_/Q _2411_/X VGND VGND VPWR VPWR _2412_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_42_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2343_ _3747_/Q VGND VGND VPWR VPWR _2643_/A sky130_fd_sc_hd__buf_1
X_2274_ _2957_/A VGND VGND VPWR VPWR _2333_/A sky130_fd_sc_hd__buf_2
XFILLER_37_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_52_213 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_32_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1989_ _1987_/Y _1980_/X _1988_/X VGND VGND VPWR VPWR _3388_/D sky130_fd_sc_hd__a21oi_1
X_3728_ _3728_/CLK _3728_/D VGND VGND VPWR VPWR _3728_/Q sky130_fd_sc_hd__dfxtp_1
X_3659_ _3735_/CLK _3659_/D VGND VGND VPWR VPWR _3659_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_16_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_400 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_411 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_422 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_433 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_444 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_455 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_466 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_477 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_488 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_499 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_39_508 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_19_265 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_62_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2961_ _2965_/A _2965_/B _3231_/Q VGND VGND VPWR VPWR _2961_/X sky130_fd_sc_hd__and3_1
X_1912_ _1912_/A VGND VGND VPWR VPWR _1990_/A sky130_fd_sc_hd__clkbuf_4
XFILLER_8_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2892_ _3447_/Q _2887_/X _2888_/X _3383_/Q _2891_/X VGND VGND VPWR VPWR _2892_/X
+ sky130_fd_sc_hd__a221o_1
X_1843_ _1839_/X _1842_/Y _1820_/X VGND VGND VPWR VPWR _3448_/D sky130_fd_sc_hd__o21ai_1
X_1774_ _1975_/B _1990_/B _1771_/B VGND VGND VPWR VPWR _2061_/B sky130_fd_sc_hd__a21oi_4
X_3513_ _3735_/CLK _3513_/D VGND VGND VPWR VPWR _3513_/Q sky130_fd_sc_hd__dfxtp_1
X_3444_ _3746_/CLK _3444_/D VGND VGND VPWR VPWR _3444_/Q sky130_fd_sc_hd__dfxtp_1
X_3375_ _3720_/CLK _3375_/D VGND VGND VPWR VPWR _3375_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_316 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2326_ _3380_/Q _2319_/X _2320_/X _3316_/Q _2325_/X VGND VGND VPWR VPWR _2326_/X
+ sky130_fd_sc_hd__a221o_1
X_2257_ _2257_/A VGND VGND VPWR VPWR _2257_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_65_393 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2188_ _2188_/A VGND VGND VPWR VPWR _2188_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_21_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_0_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_533 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_16_279 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_252 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_241 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_230 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_441 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_274 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_263 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_285 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_474 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_296 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xclkbuf_2_2_0_clk_i clkbuf_2_3_0_clk_i/A VGND VGND VPWR VPWR clkbuf_2_2_0_clk_i/X
+ sky130_fd_sc_hd__clkbuf_1
X_3160_ _2770_/X _3360_/Q _3225_/S VGND VGND VPWR VPWR _3671_/D sky130_fd_sc_hd__mux2_1
X_2111_ _2111_/A _2112_/B VGND VGND VPWR VPWR _3298_/D sky130_fd_sc_hd__nor2_2
X_3091_ _2564_/X _3429_/Q _3219_/S VGND VGND VPWR VPWR _3602_/D sky130_fd_sc_hd__mux2_4
XFILLER_39_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2042_ _2066_/B VGND VGND VPWR VPWR _3353_/D sky130_fd_sc_hd__buf_1
XFILLER_54_308 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_66_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_533 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2944_ _2958_/A VGND VGND VPWR VPWR _2944_/X sky130_fd_sc_hd__clkbuf_2
X_2875_ _2881_/A _2881_/B _3262_/Q VGND VGND VPWR VPWR _2875_/X sky130_fd_sc_hd__and3_1
XFILLER_30_293 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1826_ _1985_/A _1985_/B _1921_/B VGND VGND VPWR VPWR _2076_/B sky130_fd_sc_hd__a21oi_2
X_1757_ _1747_/B _1803_/B _1709_/A VGND VGND VPWR VPWR _1981_/A sky130_fd_sc_hd__a21oi_4
X_1688_ _1990_/C VGND VGND VPWR VPWR _1975_/B sky130_fd_sc_hd__clkbuf_4
X_3427_ _3431_/CLK _3427_/D VGND VGND VPWR VPWR _3427_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_102 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3358_ _3452_/CLK _3358_/D VGND VGND VPWR VPWR _3358_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2309_ _2313_/A _2313_/B _3450_/Q VGND VGND VPWR VPWR _2309_/X sky130_fd_sc_hd__and3_1
X_3289_ _3746_/CLK _3289_/D VGND VGND VPWR VPWR _3289_/Q sky130_fd_sc_hd__dfxtp_1
Xrepeater284 _3179_/S VGND VGND VPWR VPWR _3186_/S sky130_fd_sc_hd__buf_8
Xrepeater273 _3225_/S VGND VGND VPWR VPWR _3219_/S sky130_fd_sc_hd__buf_8
XFILLER_53_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_238 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_6_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3731_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_0_175 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_63_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_360 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2660_ _3270_/Q _2650_/X _2652_/X _3461_/Q _2659_/X VGND VGND VPWR VPWR _2660_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_8_297 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2591_ _2633_/A VGND VGND VPWR VPWR _2591_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_5_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_67_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3212_ _2922_/X _3308_/Q _3222_/S VGND VGND VPWR VPWR _3723_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3143_ _2716_/X _3377_/Q _3208_/S VGND VGND VPWR VPWR _3654_/D sky130_fd_sc_hd__mux2_2
X_3074_ _2516_/X _3446_/Q _3204_/S VGND VGND VPWR VPWR _3585_/D sky130_fd_sc_hd__mux2_1
XFILLER_54_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2025_ _1896_/Y _2024_/X _2017_/X VGND VGND VPWR VPWR _3366_/D sky130_fd_sc_hd__a21oi_1
XFILLER_23_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_558 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_569 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2927_ _2937_/A _2937_/B _3243_/Q VGND VGND VPWR VPWR _2927_/X sky130_fd_sc_hd__and3_1
X_2858_ _3458_/Q _2855_/X _2856_/X _3394_/Q _2857_/X VGND VGND VPWR VPWR _2858_/X
+ sky130_fd_sc_hd__a221o_1
X_2789_ _2789_/A _2789_/B _3289_/Q VGND VGND VPWR VPWR _2789_/X sky130_fd_sc_hd__and3_1
X_1809_ _1797_/X _2070_/B _1805_/X VGND VGND VPWR VPWR _3459_/D sky130_fd_sc_hd__o21ai_1
XFILLER_2_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_396 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_580 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_41_388 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_30_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_451 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_403 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_190 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_171 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3761_ _3762_/CLK _3761_/D input1/X VGND VGND VPWR VPWR _3762_/D sky130_fd_sc_hd__dfrtp_1
X_2712_ _3252_/Q _2707_/X _2708_/X _3443_/Q _2711_/X VGND VGND VPWR VPWR _2712_/X
+ sky130_fd_sc_hd__a221o_1
X_3692_ _3728_/CLK _3692_/D VGND VGND VPWR VPWR _3692_/Q sky130_fd_sc_hd__dfxtp_1
X_2643_ _2643_/A VGND VGND VPWR VPWR _2703_/A sky130_fd_sc_hd__buf_2
X_2574_ _3298_/Q _2559_/X _2560_/X _3235_/Q _2573_/X VGND VGND VPWR VPWR _2574_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_67_263 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3126_ _2670_/X _3394_/Q _3192_/S VGND VGND VPWR VPWR _3637_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_27_138 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3057_ _2462_/X _3463_/Q _3186_/S VGND VGND VPWR VPWR _3568_/D sky130_fd_sc_hd__mux2_1
XPHY_818 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_807 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2008_ _2094_/A _2016_/B VGND VGND VPWR VPWR _2008_/Y sky130_fd_sc_hd__nand2_1
XPHY_829 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_24_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3450_/CLK sky130_fd_sc_hd__clkbuf_16
XPHY_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_61 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_94 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2290_ _3393_/Q _2275_/X _2278_/X _3329_/Q _2289_/X VGND VGND VPWR VPWR _2290_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_2_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_64_244 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_491 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_60_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_32_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_15 _3660_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_32_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3744_ _3744_/CLK _3744_/D VGND VGND VPWR VPWR _3744_/Q sky130_fd_sc_hd__dfxtp_1
X_3675_ _3714_/CLK _3675_/D VGND VGND VPWR VPWR _3675_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput100 _3697_/Q VGND VGND VPWR VPWR output_thermometer_o[211] sky130_fd_sc_hd__clkbuf_2
X_2626_ _3281_/Q _2619_/X _2620_/X _3472_/Q _2625_/X VGND VGND VPWR VPWR _2626_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput122 _3593_/Q VGND VGND VPWR VPWR output_thermometer_o[107] sky130_fd_sc_hd__clkbuf_2
Xoutput111 _3650_/Q VGND VGND VPWR VPWR output_thermometer_o[164] sky130_fd_sc_hd__clkbuf_2
Xoutput133 _3489_/Q VGND VGND VPWR VPWR output_thermometer_o[3] sky130_fd_sc_hd__clkbuf_2
Xoutput166 _3581_/Q VGND VGND VPWR VPWR output_thermometer_o[95] sky130_fd_sc_hd__clkbuf_2
Xoutput144 _3573_/Q VGND VGND VPWR VPWR output_thermometer_o[87] sky130_fd_sc_hd__clkbuf_2
Xoutput155 _3610_/Q VGND VGND VPWR VPWR output_thermometer_o[124] sky130_fd_sc_hd__clkbuf_2
Xoutput177 _3744_/Q VGND VGND VPWR VPWR output_binary_o[0] sky130_fd_sc_hd__clkbuf_2
X_2557_ _2567_/A _2567_/B _3367_/Q VGND VGND VPWR VPWR _2557_/X sky130_fd_sc_hd__and3_1
Xoutput188 _3733_/Q VGND VGND VPWR VPWR output_thermometer_o[247] sky130_fd_sc_hd__clkbuf_2
X_2488_ _3326_/Q _2483_/X _2484_/X _3263_/Q _2487_/X VGND VGND VPWR VPWR _2488_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput199 _3638_/Q VGND VGND VPWR VPWR output_thermometer_o[152] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_572 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3109_ _2618_/X _3411_/Q _3173_/S VGND VGND VPWR VPWR _3620_/D sky130_fd_sc_hd__mux2_1
XFILLER_43_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_604 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_615 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_626 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_637 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_648 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_659 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_546 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_2_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_19_425 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1790_ _2104_/A _1794_/B _1794_/C VGND VGND VPWR VPWR _1791_/B sky130_fd_sc_hd__nand3_4
Xinput13 input_binary_i[9] VGND VGND VPWR VPWR _2079_/B sky130_fd_sc_hd__buf_2
XFILLER_6_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3460_ _3707_/CLK _3460_/D VGND VGND VPWR VPWR _3460_/Q sky130_fd_sc_hd__dfxtp_1
X_3391_ _3705_/CLK _3391_/D VGND VGND VPWR VPWR _3391_/Q sky130_fd_sc_hd__dfxtp_1
X_2411_ _2417_/A _2417_/B _3416_/Q VGND VGND VPWR VPWR _2411_/X sky130_fd_sc_hd__and3_1
X_2342_ _3374_/Q _2333_/X _2334_/X _3310_/Q _2341_/X VGND VGND VPWR VPWR _2342_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_35_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2273_ _2871_/A VGND VGND VPWR VPWR _2957_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_52_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3727_ _3737_/CLK _3727_/D VGND VGND VPWR VPWR _3727_/Q sky130_fd_sc_hd__dfxtp_1
X_1988_ _2006_/A VGND VGND VPWR VPWR _1988_/X sky130_fd_sc_hd__buf_2
X_3658_ _3744_/CLK _3658_/D VGND VGND VPWR VPWR _3658_/Q sky130_fd_sc_hd__dfxtp_1
X_3589_ _3738_/CLK _3589_/D VGND VGND VPWR VPWR _3589_/Q sky130_fd_sc_hd__dfxtp_1
X_2609_ _2613_/A _2613_/B _3350_/Q VGND VGND VPWR VPWR _2609_/X sky130_fd_sc_hd__and3_1
XFILLER_57_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_57_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_255 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_401 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_412 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_423 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_434 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_24_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_445 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_456 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_467 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_478 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_489 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_3_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_59_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_47_553 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_62_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_34_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2960_ _3423_/Q _2957_/X _2958_/X _3359_/Q _2959_/X VGND VGND VPWR VPWR _2960_/X
+ sky130_fd_sc_hd__a221o_1
X_2891_ _2895_/A _2895_/B _3256_/Q VGND VGND VPWR VPWR _2891_/X sky130_fd_sc_hd__and3_1
X_1911_ _1876_/X _1909_/Y _1910_/X VGND VGND VPWR VPWR _3424_/D sky130_fd_sc_hd__o21ai_1
X_1842_ _1842_/A _1917_/A VGND VGND VPWR VPWR _1842_/Y sky130_fd_sc_hd__nand2_1
XFILLER_30_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_30_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1773_ _2142_/B VGND VGND VPWR VPWR _1773_/X sky130_fd_sc_hd__buf_2
X_3512_ _3739_/CLK _3512_/D VGND VGND VPWR VPWR _3512_/Q sky130_fd_sc_hd__dfxtp_1
X_3443_ _3738_/CLK _3443_/D VGND VGND VPWR VPWR _3443_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3374_ _3435_/CLK _3374_/D VGND VGND VPWR VPWR _3374_/Q sky130_fd_sc_hd__dfxtp_1
X_2325_ _2327_/A _2327_/B _3444_/Q VGND VGND VPWR VPWR _2325_/X sky130_fd_sc_hd__and3_1
X_2256_ _3403_/Q _2243_/X _2244_/X _3339_/Q _2255_/X VGND VGND VPWR VPWR _2256_/X
+ sky130_fd_sc_hd__a221o_1
X_2187_ _2105_/A _1651_/X _2180_/X VGND VGND VPWR VPWR _3240_/D sky130_fd_sc_hd__o21ai_1
XFILLER_40_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_280 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_63_309 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_242 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_231 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_220 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_275 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_264 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_253 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_286 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_297 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_33_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2110_ _2110_/A _2110_/B VGND VGND VPWR VPWR _3299_/D sky130_fd_sc_hd__nor2_1
X_3090_ _2562_/X _3430_/Q _3219_/S VGND VGND VPWR VPWR _3601_/D sky130_fd_sc_hd__mux2_2
X_2041_ _2041_/A _2041_/B VGND VGND VPWR VPWR _2066_/B sky130_fd_sc_hd__nor2_8
XFILLER_47_361 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2943_ _2957_/A VGND VGND VPWR VPWR _2943_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_22_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2874_ _2930_/A VGND VGND VPWR VPWR _2874_/X sky130_fd_sc_hd__clkbuf_2
X_1825_ _1815_/X _2075_/B _1820_/X VGND VGND VPWR VPWR _3454_/D sky130_fd_sc_hd__o21ai_1
X_1756_ _2054_/A _1697_/X _3417_/D VGND VGND VPWR VPWR _3472_/D sky130_fd_sc_hd__a21o_1
XFILLER_7_490 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1687_ _1687_/A _1749_/A VGND VGND VPWR VPWR _1990_/C sky130_fd_sc_hd__nand2_4
X_3426_ _3450_/CLK _3426_/D VGND VGND VPWR VPWR _3426_/Q sky130_fd_sc_hd__dfxtp_1
X_3357_ _3452_/CLK _3357_/D VGND VGND VPWR VPWR _3357_/Q sky130_fd_sc_hd__dfxtp_1
X_2308_ _3387_/Q _2305_/X _2306_/X _3323_/Q _2307_/X VGND VGND VPWR VPWR _2308_/X
+ sky130_fd_sc_hd__a221o_1
X_3288_ _3479_/CLK _3288_/D VGND VGND VPWR VPWR _3288_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_26_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xrepeater285 _3173_/S VGND VGND VPWR VPWR _3179_/S sky130_fd_sc_hd__buf_8
X_2239_ _2969_/A VGND VGND VPWR VPWR _2251_/A sky130_fd_sc_hd__buf_1
XFILLER_38_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xrepeater274 _3222_/S VGND VGND VPWR VPWR _3225_/S sky130_fd_sc_hd__buf_8
XFILLER_28_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_158 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_12_283 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2590_ _3293_/Q _2576_/X _2578_/X _3485_/Q _2589_/X VGND VGND VPWR VPWR _2590_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_5_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_482 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_3211_ _2920_/X _3309_/Q _3214_/S VGND VGND VPWR VPWR _3722_/D sky130_fd_sc_hd__mux2_2
X_3142_ _2714_/X _3378_/Q _3208_/S VGND VGND VPWR VPWR _3653_/D sky130_fd_sc_hd__mux2_2
X_3073_ _2512_/X _3447_/Q _3204_/S VGND VGND VPWR VPWR _3584_/D sky130_fd_sc_hd__mux2_1
XFILLER_47_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2024_ _2033_/A VGND VGND VPWR VPWR _2024_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_54_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_548 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_50_301 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2926_ _2926_/A VGND VGND VPWR VPWR _2937_/B sky130_fd_sc_hd__buf_1
X_2857_ _2863_/A _2863_/B _3267_/Q VGND VGND VPWR VPWR _2857_/X sky130_fd_sc_hd__and3_1
XFILLER_40_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1808_ _2109_/A _1987_/B _1800_/X VGND VGND VPWR VPWR _2070_/B sky130_fd_sc_hd__a21oi_2
X_2788_ _3481_/Q _2781_/X _2782_/X _3417_/Q _2787_/X VGND VGND VPWR VPWR _2788_/X
+ sky130_fd_sc_hd__a221o_1
X_1739_ _1860_/B _1857_/A VGND VGND VPWR VPWR _2051_/A sky130_fd_sc_hd__nor2_4
X_3409_ _3476_/CLK _3409_/D VGND VGND VPWR VPWR _3409_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_401 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_467 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_58_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_63 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_14_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_485 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3760_ _3762_/CLK _3760_/D input1/X VGND VGND VPWR VPWR _3761_/D sky130_fd_sc_hd__dfrtp_1
X_2711_ _2715_/A _2715_/B _3315_/Q VGND VGND VPWR VPWR _2711_/X sky130_fd_sc_hd__and3_1
XFILLER_9_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3691_ _3737_/CLK _3691_/D VGND VGND VPWR VPWR _3691_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_65_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2642_ _3275_/Q _2633_/X _2634_/X _3466_/Q _2641_/X VGND VGND VPWR VPWR _2642_/X
+ sky130_fd_sc_hd__a221o_1
X_2573_ _2585_/A _2585_/B _3362_/Q VGND VGND VPWR VPWR _2573_/X sky130_fd_sc_hd__and3_1
X_3125_ _2668_/X _3395_/Q _3192_/S VGND VGND VPWR VPWR _3636_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xclkbuf_leaf_5_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3467_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_67_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3056_ _2460_/X _3464_/Q _3187_/S VGND VGND VPWR VPWR _3567_/D sky130_fd_sc_hd__mux2_2
X_2007_ _2005_/Y _2002_/X _2006_/X VGND VGND VPWR VPWR _3376_/D sky130_fd_sc_hd__a21oi_1
XFILLER_35_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_808 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_63_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_819 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2909_ _2909_/A _2909_/B _3249_/Q VGND VGND VPWR VPWR _2909_/X sky130_fd_sc_hd__and3_1
XFILLER_58_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_40 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_389 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_6_500 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_6_533 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_41_83 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_51_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XANTENNA_16 _3708_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3743_ _3745_/CLK input5/X VGND VGND VPWR VPWR _3745_/D sky130_fd_sc_hd__dfxtp_1
X_3674_ _3707_/CLK _3674_/D VGND VGND VPWR VPWR _3674_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput101 _3684_/Q VGND VGND VPWR VPWR output_thermometer_o[198] sky130_fd_sc_hd__clkbuf_2
X_2625_ _2627_/A _2627_/B _3344_/Q VGND VGND VPWR VPWR _2625_/X sky130_fd_sc_hd__and3_1
Xoutput112 _3729_/Q VGND VGND VPWR VPWR output_thermometer_o[243] sky130_fd_sc_hd__clkbuf_2
Xoutput134 _3622_/Q VGND VGND VPWR VPWR output_thermometer_o[136] sky130_fd_sc_hd__clkbuf_2
Xoutput123 _3630_/Q VGND VGND VPWR VPWR output_thermometer_o[144] sky130_fd_sc_hd__clkbuf_2
Xoutput156 _3626_/Q VGND VGND VPWR VPWR output_thermometer_o[140] sky130_fd_sc_hd__clkbuf_2
Xoutput167 _3642_/Q VGND VGND VPWR VPWR output_thermometer_o[156] sky130_fd_sc_hd__clkbuf_2
Xoutput145 _3635_/Q VGND VGND VPWR VPWR output_thermometer_o[149] sky130_fd_sc_hd__clkbuf_2
X_2556_ _2556_/A VGND VGND VPWR VPWR _2567_/B sky130_fd_sc_hd__buf_1
Xoutput178 _3672_/Q VGND VGND VPWR VPWR output_thermometer_o[186] sky130_fd_sc_hd__clkbuf_2
X_2487_ _2491_/A _2491_/B _3390_/Q VGND VGND VPWR VPWR _2487_/X sky130_fd_sc_hd__and3_1
Xoutput189 _3669_/Q VGND VGND VPWR VPWR output_thermometer_o[183] sky130_fd_sc_hd__clkbuf_2
X_3108_ _2614_/X _3412_/Q _3173_/S VGND VGND VPWR VPWR _3619_/D sky130_fd_sc_hd__mux2_2
XFILLER_28_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3039_ _2408_/X _3481_/Q _3204_/S VGND VGND VPWR VPWR _3550_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_605 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_616 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_627 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_638 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_649 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_495 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_19_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_42_484 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2410_ _2410_/A VGND VGND VPWR VPWR _2410_/X sky130_fd_sc_hd__clkbuf_2
X_3390_ _3741_/CLK _3390_/D VGND VGND VPWR VPWR _3390_/Q sky130_fd_sc_hd__dfxtp_1
X_2341_ _2341_/A _2341_/B _3438_/Q VGND VGND VPWR VPWR _2341_/X sky130_fd_sc_hd__and3_1
X_2272_ _3398_/Q _2257_/X _2258_/X _3334_/Q _2271_/X VGND VGND VPWR VPWR _2272_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_28_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_440 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_473 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1987_ _1987_/A _1987_/B VGND VGND VPWR VPWR _1987_/Y sky130_fd_sc_hd__nand2_1
X_3726_ _3745_/CLK _3726_/D VGND VGND VPWR VPWR _3726_/Q sky130_fd_sc_hd__dfxtp_1
Xclkbuf_leaf_23_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3425_/CLK sky130_fd_sc_hd__clkbuf_16
X_3657_ _3720_/CLK _3657_/D VGND VGND VPWR VPWR _3657_/Q sky130_fd_sc_hd__dfxtp_1
X_3588_ _3739_/CLK _3588_/D VGND VGND VPWR VPWR _3588_/Q sky130_fd_sc_hd__dfxtp_1
X_2608_ _3288_/Q _2605_/X _2606_/X _3479_/Q _2607_/X VGND VGND VPWR VPWR _2608_/X
+ sky130_fd_sc_hd__a221o_1
X_2539_ _2539_/A _2539_/B _3373_/Q VGND VGND VPWR VPWR _2539_/X sky130_fd_sc_hd__and3_1
XFILLER_0_539 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_28_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_28_234 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_226 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_43_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_402 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_413 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_424 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_435 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_446 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_457 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_468 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_145 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_479 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_278 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_62_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2890_ _3448_/Q _2887_/X _2888_/X _3384_/Q _2889_/X VGND VGND VPWR VPWR _2890_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_30_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1910_ _1949_/A VGND VGND VPWR VPWR _1910_/X sky130_fd_sc_hd__clkbuf_2
X_1841_ _1841_/A VGND VGND VPWR VPWR _1917_/A sky130_fd_sc_hd__clkbuf_4
XFILLER_8_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1772_ _1728_/X _2060_/B _1761_/X VGND VGND VPWR VPWR _3468_/D sky130_fd_sc_hd__o21ai_1
X_3511_ _3739_/CLK _3511_/D VGND VGND VPWR VPWR _3511_/Q sky130_fd_sc_hd__dfxtp_1
X_3442_ _3586_/CLK _3442_/D VGND VGND VPWR VPWR _3442_/Q sky130_fd_sc_hd__dfxtp_1
X_3373_ _3720_/CLK _3373_/D VGND VGND VPWR VPWR _3373_/Q sky130_fd_sc_hd__dfxtp_1
X_2324_ _3381_/Q _2319_/X _2320_/X _3317_/Q _2323_/X VGND VGND VPWR VPWR _2324_/X
+ sky130_fd_sc_hd__a221o_1
X_2255_ _2265_/A _2265_/B _3467_/Q VGND VGND VPWR VPWR _2255_/X sky130_fd_sc_hd__and3_1
XFILLER_27_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2186_ _2103_/A _1651_/X _2180_/X VGND VGND VPWR VPWR _3241_/D sky130_fd_sc_hd__o21ai_1
XFILLER_38_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_373 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_53_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_21_432 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3709_ _3709_/CLK _3709_/D VGND VGND VPWR VPWR _3709_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_68_59 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_314 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_513 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_210 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_243 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_232 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_221 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_276 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_265 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_254 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_403 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_292 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_287 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_298 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2040_ _2040_/A _2040_/B VGND VGND VPWR VPWR _3354_/D sky130_fd_sc_hd__nor2_1
XFILLER_35_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2942_ _3429_/Q _2929_/X _2930_/X _3365_/Q _2941_/X VGND VGND VPWR VPWR _2942_/X
+ sky130_fd_sc_hd__a221o_1
X_2873_ _2873_/A VGND VGND VPWR VPWR _2930_/A sky130_fd_sc_hd__buf_2
X_1824_ _1983_/A _1903_/C _1921_/B VGND VGND VPWR VPWR _2075_/B sky130_fd_sc_hd__a21oi_2
X_1755_ _1874_/A _2020_/A _1868_/B VGND VGND VPWR VPWR _2054_/A sky130_fd_sc_hd__nand3_4
X_1686_ _2117_/A _1708_/A _1851_/A _1724_/A VGND VGND VPWR VPWR _1990_/B sky130_fd_sc_hd__o22a_4
X_3425_ _3425_/CLK _3425_/D VGND VGND VPWR VPWR _3425_/Q sky130_fd_sc_hd__dfxtp_1
X_3356_ _3452_/CLK _3356_/D VGND VGND VPWR VPWR _3356_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3287_ _3713_/CLK _3287_/D VGND VGND VPWR VPWR _3287_/Q sky130_fd_sc_hd__dfxtp_1
X_2307_ _2313_/A _2313_/B _3451_/Q VGND VGND VPWR VPWR _2307_/X sky130_fd_sc_hd__and3_1
X_2238_ _3409_/Q _2229_/X _2230_/X _3345_/Q _2237_/X VGND VGND VPWR VPWR _2238_/X
+ sky130_fd_sc_hd__a221o_1
Xrepeater286 _3168_/S VGND VGND VPWR VPWR _3173_/S sky130_fd_sc_hd__buf_8
Xrepeater275 _3214_/S VGND VGND VPWR VPWR _3222_/S sky130_fd_sc_hd__buf_6
XFILLER_65_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2169_ _1849_/A _2124_/X _1883_/X _3481_/D VGND VGND VPWR VPWR _3255_/D sky130_fd_sc_hd__a31o_1
XFILLER_53_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_54_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_53_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_48_126 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_0_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_148 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_28_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_373 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_568 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_17_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_32_505 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_365 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3210_ _2918_/X _3310_/Q _3214_/S VGND VGND VPWR VPWR _3721_/D sky130_fd_sc_hd__mux2_2
X_3141_ _2712_/X _3379_/Q _3208_/S VGND VGND VPWR VPWR _3652_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_67_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3072_ _2510_/X _3448_/Q _3230_/S VGND VGND VPWR VPWR _3583_/D sky130_fd_sc_hd__mux2_2
X_2023_ _1893_/Y _2012_/X _2017_/X VGND VGND VPWR VPWR _3367_/D sky130_fd_sc_hd__a21oi_1
XFILLER_47_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_527 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2925_ _2925_/A VGND VGND VPWR VPWR _2937_/A sky130_fd_sc_hd__buf_1
XFILLER_31_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2856_ _2856_/A VGND VGND VPWR VPWR _2856_/X sky130_fd_sc_hd__clkbuf_2
X_1807_ _1920_/B _2111_/A VGND VGND VPWR VPWR _2109_/A sky130_fd_sc_hd__nand2_4
X_2787_ _2789_/A _2789_/B _3746_/Q VGND VGND VPWR VPWR _2787_/X sky130_fd_sc_hd__and3_1
X_1738_ _1920_/B _1738_/B VGND VGND VPWR VPWR _1857_/A sky130_fd_sc_hd__nand2_2
X_1669_ _2118_/A _1683_/B VGND VGND VPWR VPWR _1828_/C sky130_fd_sc_hd__nand2_2
X_3408_ _3479_/CLK _3408_/D VGND VGND VPWR VPWR _3408_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3339_ _3467_/CLK _3339_/D VGND VGND VPWR VPWR _3339_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_66_490 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_26_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_516 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_64_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_57_490 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_17_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_332 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_354 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_151 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2710_ _3253_/Q _2707_/X _2708_/X _3444_/Q _2709_/X VGND VGND VPWR VPWR _2710_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_9_542 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_40_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3690_ _3736_/CLK _3690_/D VGND VGND VPWR VPWR _3690_/Q sky130_fd_sc_hd__dfxtp_1
X_2641_ _2641_/A _2641_/B _3338_/Q VGND VGND VPWR VPWR _2641_/X sky130_fd_sc_hd__and3_1
XFILLER_58_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2572_ _2630_/A VGND VGND VPWR VPWR _2585_/B sky130_fd_sc_hd__clkbuf_2
XFILLER_55_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3124_ _2664_/X _3396_/Q _3192_/S VGND VGND VPWR VPWR _3635_/D sky130_fd_sc_hd__mux2_2
X_3055_ _2458_/X _3465_/Q _3186_/S VGND VGND VPWR VPWR _3566_/D sky130_fd_sc_hd__mux2_2
X_2006_ _2006_/A VGND VGND VPWR VPWR _2006_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_35_140 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_809 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_368 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2908_ _3441_/Q _2901_/X _2902_/X _3377_/Q _2907_/X VGND VGND VPWR VPWR _2908_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_50_198 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2839_ _2849_/A _2849_/B _3273_/Q VGND VGND VPWR VPWR _2839_/X sky130_fd_sc_hd__and3_1
XFILLER_2_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_14_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_52 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_63 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_85 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_10_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_1_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_438 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_471 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_17 _3712_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3742_ _3744_/CLK input4/X VGND VGND VPWR VPWR _3744_/D sky130_fd_sc_hd__dfxtp_1
X_3673_ _3716_/CLK _3673_/D VGND VGND VPWR VPWR _3673_/Q sky130_fd_sc_hd__dfxtp_1
X_2624_ _3282_/Q _2619_/X _2620_/X _3473_/Q _2623_/X VGND VGND VPWR VPWR _2624_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput124 _3513_/Q VGND VGND VPWR VPWR output_thermometer_o[27] sky130_fd_sc_hd__clkbuf_2
Xoutput102 _3712_/Q VGND VGND VPWR VPWR output_thermometer_o[226] sky130_fd_sc_hd__clkbuf_2
Xoutput113 _3623_/Q VGND VGND VPWR VPWR output_thermometer_o[137] sky130_fd_sc_hd__clkbuf_2
Xoutput168 _3575_/Q VGND VGND VPWR VPWR output_thermometer_o[89] sky130_fd_sc_hd__clkbuf_2
Xoutput157 _3511_/Q VGND VGND VPWR VPWR output_thermometer_o[25] sky130_fd_sc_hd__clkbuf_2
Xoutput135 _3690_/Q VGND VGND VPWR VPWR output_thermometer_o[204] sky130_fd_sc_hd__clkbuf_2
X_2555_ _2555_/A VGND VGND VPWR VPWR _2567_/A sky130_fd_sc_hd__buf_1
Xoutput146 _3723_/Q VGND VGND VPWR VPWR output_thermometer_o[237] sky130_fd_sc_hd__clkbuf_2
X_2486_ _3327_/Q _2483_/X _2484_/X _3264_/Q _2485_/X VGND VGND VPWR VPWR _2486_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput179 _3666_/Q VGND VGND VPWR VPWR output_thermometer_o[180] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_552 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3107_ _2612_/X _3413_/Q _3173_/S VGND VGND VPWR VPWR _3618_/D sky130_fd_sc_hd__mux2_1
XFILLER_28_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3038_ _2404_/X _3482_/Q _3230_/S VGND VGND VPWR VPWR _3549_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_279 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_606 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_617 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_165 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_628 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_639 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xclkbuf_leaf_4_clk_i clkbuf_2_1_0_clk_i/X VGND VGND VPWR VPWR _3485_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_6_397 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2340_ _3375_/Q _2333_/X _2334_/X _3311_/Q _2339_/X VGND VGND VPWR VPWR _2340_/X
+ sky130_fd_sc_hd__a221o_1
X_2271_ _2285_/A _2285_/B _3462_/Q VGND VGND VPWR VPWR _2271_/X sky130_fd_sc_hd__and3_1
XFILLER_37_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_293 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1986_ _1980_/X _1985_/Y _1976_/X VGND VGND VPWR VPWR _3389_/D sky130_fd_sc_hd__a21oi_1
X_3725_ _3744_/CLK _3725_/D VGND VGND VPWR VPWR _3725_/Q sky130_fd_sc_hd__dfxtp_1
X_3656_ _3720_/CLK _3656_/D VGND VGND VPWR VPWR _3656_/Q sky130_fd_sc_hd__dfxtp_1
X_3587_ _3722_/CLK _3587_/D VGND VGND VPWR VPWR _3587_/Q sky130_fd_sc_hd__dfxtp_1
X_2607_ _2613_/A _2613_/B _3351_/Q VGND VGND VPWR VPWR _2607_/X sky130_fd_sc_hd__and3_1
X_2538_ _3310_/Q _2531_/X _2532_/X _3247_/Q _2537_/X VGND VGND VPWR VPWR _2538_/X
+ sky130_fd_sc_hd__a221o_1
X_2469_ _2483_/A VGND VGND VPWR VPWR _2469_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_56_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_56_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_403 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_414 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_425 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_436 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_447 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_458 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_469 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_59_371 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_246 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_15_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1840_ _2085_/A VGND VGND VPWR VPWR _1842_/A sky130_fd_sc_hd__inv_2
X_3510_ _3709_/CLK _3510_/D VGND VGND VPWR VPWR _3510_/Q sky130_fd_sc_hd__dfxtp_1
X_1771_ _1987_/A _1771_/B VGND VGND VPWR VPWR _2060_/B sky130_fd_sc_hd__nor2_4
X_3441_ _3709_/CLK _3441_/D VGND VGND VPWR VPWR _3441_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3372_ _3450_/CLK _3372_/D VGND VGND VPWR VPWR _3372_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_40_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2323_ _2327_/A _2327_/B _3445_/Q VGND VGND VPWR VPWR _2323_/X sky130_fd_sc_hd__and3_1
X_2254_ _2969_/B VGND VGND VPWR VPWR _2265_/B sky130_fd_sc_hd__buf_1
XFILLER_65_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2185_ _2194_/A _2194_/B _2185_/C VGND VGND VPWR VPWR _3242_/D sky130_fd_sc_hd__or3_2
XFILLER_25_205 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_25_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_33_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_293 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1969_ _2108_/B _1990_/A VGND VGND VPWR VPWR _1969_/Y sky130_fd_sc_hd__nand2_1
X_3708_ _3738_/CLK _3708_/D VGND VGND VPWR VPWR _3708_/Q sky130_fd_sc_hd__dfxtp_1
X_3639_ _3709_/CLK _3639_/D VGND VGND VPWR VPWR _3639_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_68_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_48_308 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_29_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_200 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_17_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_233 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_222 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_211 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_277 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_266 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_255 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_244 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_33_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_288 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_299 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_58_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_341 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_22_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3431_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_62_366 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2941_ _2951_/A _2951_/B _3238_/Q VGND VGND VPWR VPWR _2941_/X sky130_fd_sc_hd__and3_1
Xclkbuf_leaf_37_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3736_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_30_230 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2872_ _2929_/A VGND VGND VPWR VPWR _2872_/X sky130_fd_sc_hd__clkbuf_2
X_1823_ _1841_/A VGND VGND VPWR VPWR _1921_/B sky130_fd_sc_hd__clkbuf_4
X_1754_ _1822_/A _1822_/B _2113_/B VGND VGND VPWR VPWR _1868_/B sky130_fd_sc_hd__nand3_4
X_1685_ _1788_/A _1683_/B _2115_/B VGND VGND VPWR VPWR _1724_/A sky130_fd_sc_hd__o21a_2
X_3424_ _3425_/CLK _3424_/D VGND VGND VPWR VPWR _3424_/Q sky130_fd_sc_hd__dfxtp_1
X_3355_ _3485_/CLK _3355_/D VGND VGND VPWR VPWR _3355_/Q sky130_fd_sc_hd__dfxtp_1
X_3286_ _3722_/CLK _3286_/D VGND VGND VPWR VPWR _3286_/Q sky130_fd_sc_hd__dfxtp_1
X_2306_ _2334_/A VGND VGND VPWR VPWR _2306_/X sky130_fd_sc_hd__clkbuf_2
X_2237_ _2237_/A _2237_/B _3473_/Q VGND VGND VPWR VPWR _2237_/X sky130_fd_sc_hd__and3_1
Xrepeater276 _3208_/S VGND VGND VPWR VPWR _3214_/S sky130_fd_sc_hd__buf_8
X_2168_ _2165_/X _2086_/A _2124_/A _3481_/D VGND VGND VPWR VPWR _3256_/D sky130_fd_sc_hd__a31o_1
X_2099_ _3322_/D _2099_/B VGND VGND VPWR VPWR _2112_/B sky130_fd_sc_hd__nand2_4
XFILLER_28_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_330 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_28_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_536 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_44_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_84 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_44_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_12_252 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_5_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3140_ _2710_/X _3380_/Q _3204_/S VGND VGND VPWR VPWR _3651_/D sky130_fd_sc_hd__mux2_2
X_3071_ _2508_/X _3449_/Q _3230_/S VGND VGND VPWR VPWR _3582_/D sky130_fd_sc_hd__mux2_2
X_2022_ _1891_/Y _2012_/X _2017_/X VGND VGND VPWR VPWR _3368_/D sky130_fd_sc_hd__a21oi_1
XFILLER_23_539 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2924_ _3435_/Q _2915_/X _2916_/X _3371_/Q _2923_/X VGND VGND VPWR VPWR _2924_/X
+ sky130_fd_sc_hd__a221o_1
X_2855_ _2855_/A VGND VGND VPWR VPWR _2855_/X sky130_fd_sc_hd__clkbuf_2
X_1806_ _1797_/X _2068_/B _1805_/X VGND VGND VPWR VPWR _3460_/D sky130_fd_sc_hd__o21ai_1
X_2786_ _3482_/Q _2781_/X _2782_/X _3418_/Q _2785_/X VGND VGND VPWR VPWR _2786_/X
+ sky130_fd_sc_hd__a221o_1
X_1737_ _2117_/A _1708_/A _1851_/A _1724_/A VGND VGND VPWR VPWR _1920_/B sky130_fd_sc_hd__o22ai_4
X_1668_ _1668_/A VGND VGND VPWR VPWR _2118_/A sky130_fd_sc_hd__inv_2
X_3407_ _3731_/CLK _3407_/D VGND VGND VPWR VPWR _3407_/Q sky130_fd_sc_hd__dfxtp_1
X_3338_ _3485_/CLK _3338_/D VGND VGND VPWR VPWR _3338_/Q sky130_fd_sc_hd__dfxtp_1
X_3269_ _3420_/CLK _3269_/D VGND VGND VPWR VPWR _3269_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_53_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_572 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_30_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_40 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_182 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_9_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2640_ _3276_/Q _2633_/X _2634_/X _3467_/Q _2639_/X VGND VGND VPWR VPWR _2640_/X
+ sky130_fd_sc_hd__a221o_1
X_2571_ _2645_/A VGND VGND VPWR VPWR _2630_/A sky130_fd_sc_hd__buf_2
XFILLER_4_292 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3123_ _2660_/X _3397_/Q _3192_/S VGND VGND VPWR VPWR _3634_/D sky130_fd_sc_hd__mux2_2
X_3054_ _2454_/X _3466_/Q _3186_/S VGND VGND VPWR VPWR _3565_/D sky130_fd_sc_hd__mux2_1
X_2005_ _2093_/A _2005_/B VGND VGND VPWR VPWR _2005_/Y sky130_fd_sc_hd__nand2_1
XFILLER_35_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2907_ _2909_/A _2909_/B _3250_/Q VGND VGND VPWR VPWR _2907_/X sky130_fd_sc_hd__and3_1
X_2838_ _2852_/A VGND VGND VPWR VPWR _2849_/B sky130_fd_sc_hd__buf_1
X_2769_ _2775_/A _2775_/B _3296_/Q VGND VGND VPWR VPWR _2769_/X sky130_fd_sc_hd__and3_1
XFILLER_18_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_417 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_31 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_42 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_41_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_41 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_1_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_32_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_60_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3741_ _3741_/CLK _3741_/D VGND VGND VPWR VPWR _3741_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_60_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_18 _3716_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3672_ _3735_/CLK _3672_/D VGND VGND VPWR VPWR _3672_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2623_ _2627_/A _2627_/B _3345_/Q VGND VGND VPWR VPWR _2623_/X sky130_fd_sc_hd__and3_1
Xoutput114 _3643_/Q VGND VGND VPWR VPWR output_thermometer_o[157] sky130_fd_sc_hd__clkbuf_2
Xoutput103 _3679_/Q VGND VGND VPWR VPWR output_thermometer_o[193] sky130_fd_sc_hd__clkbuf_2
Xoutput125 _3687_/Q VGND VGND VPWR VPWR output_thermometer_o[201] sky130_fd_sc_hd__clkbuf_2
X_2554_ _3304_/Q _2545_/X _2546_/X _3241_/Q _2553_/X VGND VGND VPWR VPWR _2554_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput158 _3612_/Q VGND VGND VPWR VPWR output_thermometer_o[126] sky130_fd_sc_hd__clkbuf_2
Xoutput136 _3494_/Q VGND VGND VPWR VPWR output_thermometer_o[8] sky130_fd_sc_hd__clkbuf_2
Xoutput147 _3710_/Q VGND VGND VPWR VPWR output_thermometer_o[224] sky130_fd_sc_hd__clkbuf_2
X_2485_ _2491_/A _2491_/B _3391_/Q VGND VGND VPWR VPWR _2485_/X sky130_fd_sc_hd__and3_1
Xoutput169 _3662_/Q VGND VGND VPWR VPWR output_thermometer_o[176] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_406 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3106_ _2610_/X _3414_/Q _3173_/S VGND VGND VPWR VPWR _3617_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_55_236 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3037_ _2402_/X _3483_/Q _3230_/S VGND VGND VPWR VPWR _3548_/D sky130_fd_sc_hd__mux2_1
XPHY_607 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_618 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_629 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_317 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_23_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_42_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_332 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2270_ _2330_/A VGND VGND VPWR VPWR _2285_/B sky130_fd_sc_hd__buf_1
XFILLER_18_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_497 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1985_ _1985_/A _1985_/B VGND VGND VPWR VPWR _1985_/Y sky130_fd_sc_hd__nand2_1
X_3724_ _3745_/CLK _3724_/D VGND VGND VPWR VPWR _3724_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3655_ _3735_/CLK _3655_/D VGND VGND VPWR VPWR _3655_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2606_ _2634_/A VGND VGND VPWR VPWR _2606_/X sky130_fd_sc_hd__clkbuf_2
X_3586_ _3586_/CLK _3586_/D VGND VGND VPWR VPWR _3586_/Q sky130_fd_sc_hd__dfxtp_1
X_2537_ _2539_/A _2539_/B _3374_/Q VGND VGND VPWR VPWR _2537_/X sky130_fd_sc_hd__and3_1
X_2468_ _3333_/Q _2455_/X _2456_/X _3270_/Q _2467_/X VGND VGND VPWR VPWR _2468_/X
+ sky130_fd_sc_hd__a221o_1
X_2399_ _2403_/A _2403_/B _3420_/Q VGND VGND VPWR VPWR _2399_/X sky130_fd_sc_hd__and3_1
XFILLER_56_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_28_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_28_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_404 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_415 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_426 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_475 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_24_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_437 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_448 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_459 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_335 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_0_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_309 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_63_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1770_ _2058_/A _1744_/X _1761_/X VGND VGND VPWR VPWR _3469_/D sky130_fd_sc_hd__o21ai_1
X_3440_ _3449_/CLK _3440_/D VGND VGND VPWR VPWR _3440_/Q sky130_fd_sc_hd__dfxtp_1
X_3371_ _3435_/CLK _3371_/D VGND VGND VPWR VPWR _3371_/Q sky130_fd_sc_hd__dfxtp_1
X_2322_ _3382_/Q _2319_/X _2320_/X _3318_/Q _2321_/X VGND VGND VPWR VPWR _2322_/X
+ sky130_fd_sc_hd__a221o_1
X_2253_ _2969_/A VGND VGND VPWR VPWR _2265_/A sky130_fd_sc_hd__buf_1
X_2184_ _2184_/A _2194_/B _2184_/C VGND VGND VPWR VPWR _3243_/D sky130_fd_sc_hd__or3_1
XFILLER_53_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_40_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1968_ _1966_/X _1967_/Y _1964_/X VGND VGND VPWR VPWR _3397_/D sky130_fd_sc_hd__a21oi_1
X_3707_ _3707_/CLK _3707_/D VGND VGND VPWR VPWR _3707_/Q sky130_fd_sc_hd__dfxtp_1
X_1899_ _1899_/A _1917_/B _1967_/B VGND VGND VPWR VPWR _1899_/Y sky130_fd_sc_hd__nand3_2
X_3638_ _3738_/CLK _3638_/D VGND VGND VPWR VPWR _3638_/Q sky130_fd_sc_hd__dfxtp_1
X_3569_ _3736_/CLK _3569_/D VGND VGND VPWR VPWR _3569_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_191 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_29_556 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_3_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3479_/CLK sky130_fd_sc_hd__clkbuf_16
XPHY_201 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_234 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_223 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_212 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_267 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_256 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_245 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_283 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_289 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_278 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_33_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2940_ _2954_/A VGND VGND VPWR VPWR _2951_/B sky130_fd_sc_hd__buf_1
XFILLER_22_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2871_ _2871_/A VGND VGND VPWR VPWR _2929_/A sky130_fd_sc_hd__buf_2
XPHY_790 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_264 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1822_ _1822_/A _1822_/B _1828_/B VGND VGND VPWR VPWR _1983_/A sky130_fd_sc_hd__and3_2
X_1753_ _2118_/A _1753_/B _1788_/B VGND VGND VPWR VPWR _2113_/B sky130_fd_sc_hd__nand3_4
XFILLER_7_482 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1684_ _1684_/A VGND VGND VPWR VPWR _1851_/A sky130_fd_sc_hd__buf_4
X_3423_ _3453_/CLK _3423_/D VGND VGND VPWR VPWR _3423_/Q sky130_fd_sc_hd__dfxtp_1
X_3354_ _3485_/CLK _3354_/D VGND VGND VPWR VPWR _3354_/Q sky130_fd_sc_hd__dfxtp_1
X_2305_ _2333_/A VGND VGND VPWR VPWR _2305_/X sky130_fd_sc_hd__clkbuf_2
X_3285_ _3618_/CLK _3285_/D VGND VGND VPWR VPWR _3285_/Q sky130_fd_sc_hd__dfxtp_1
X_2236_ _3410_/Q _2229_/X _2230_/X _3346_/Q _2235_/X VGND VGND VPWR VPWR _2236_/X
+ sky130_fd_sc_hd__a221o_1
Xrepeater277 _3204_/S VGND VGND VPWR VPWR _3208_/S sky130_fd_sc_hd__buf_8
XFILLER_65_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2167_ _1842_/A _2165_/X _2166_/X _3481_/D VGND VGND VPWR VPWR _3257_/D sky130_fd_sc_hd__a31o_1
X_2098_ _2098_/A _2098_/B VGND VGND VPWR VPWR _3307_/D sky130_fd_sc_hd__and2_1
XFILLER_21_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_194 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_548 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_44_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_63 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_40_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_4_474 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_67_448 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3070_ _2506_/X _3450_/Q _3230_/S VGND VGND VPWR VPWR _3581_/D sky130_fd_sc_hd__mux2_2
X_2021_ _1834_/X _2185_/C _1924_/A VGND VGND VPWR VPWR _3369_/D sky130_fd_sc_hd__o21a_1
XFILLER_35_301 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_47_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_35_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2923_ _2923_/A _2923_/B _3244_/Q VGND VGND VPWR VPWR _2923_/X sky130_fd_sc_hd__and3_1
XFILLER_31_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2854_ _3459_/Q _2841_/X _2842_/X _3395_/Q _2853_/X VGND VGND VPWR VPWR _2854_/X
+ sky130_fd_sc_hd__a221o_1
X_2785_ _2789_/A _2789_/B _3290_/Q VGND VGND VPWR VPWR _2785_/X sky130_fd_sc_hd__and3_1
X_1805_ _1846_/A VGND VGND VPWR VPWR _1805_/X sky130_fd_sc_hd__clkbuf_2
X_1736_ _1841_/A VGND VGND VPWR VPWR _1860_/B sky130_fd_sc_hd__buf_4
X_1667_ _1668_/A input6/X _1753_/B VGND VGND VPWR VPWR _1763_/A sky130_fd_sc_hd__o21ai_4
X_3406_ _3479_/CLK _3406_/D VGND VGND VPWR VPWR _3406_/Q sky130_fd_sc_hd__dfxtp_1
X_3337_ _3467_/CLK _3337_/D VGND VGND VPWR VPWR _3337_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3268_ _3707_/CLK _3268_/D VGND VGND VPWR VPWR _3268_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2219_ _2221_/A _2221_/B _3479_/Q VGND VGND VPWR VPWR _2219_/X sky130_fd_sc_hd__and3_1
X_3199_ _2886_/X _3321_/Q _3208_/S VGND VGND VPWR VPWR _3710_/D sky130_fd_sc_hd__mux2_2
XFILLER_45_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_5_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_21_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3762_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_1_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_1_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_36_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3713_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_64_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_36_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_9_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2570_ _2629_/A VGND VGND VPWR VPWR _2585_/A sky130_fd_sc_hd__clkbuf_2
X_3122_ _2658_/X _3398_/Q _3186_/S VGND VGND VPWR VPWR _3633_/D sky130_fd_sc_hd__mux2_2
X_3053_ _2450_/X _3467_/Q _3230_/S VGND VGND VPWR VPWR _3564_/D sky130_fd_sc_hd__mux2_1
X_2004_ _1865_/Y _2002_/X _1998_/X VGND VGND VPWR VPWR _3377_/D sky130_fd_sc_hd__a21oi_1
XFILLER_35_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_473 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2906_ _3442_/Q _2901_/X _2902_/X _3378_/Q _2905_/X VGND VGND VPWR VPWR _2906_/X
+ sky130_fd_sc_hd__a221o_1
X_2837_ _2851_/A VGND VGND VPWR VPWR _2849_/A sky130_fd_sc_hd__buf_1
X_2768_ _2782_/A VGND VGND VPWR VPWR _2768_/X sky130_fd_sc_hd__clkbuf_2
X_2699_ _2701_/A _2701_/B _3319_/Q VGND VGND VPWR VPWR _2699_/X sky130_fd_sc_hd__and3_1
X_1719_ _1741_/A VGND VGND VPWR VPWR _2020_/A sky130_fd_sc_hd__clkbuf_4
XFILLER_58_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_289 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_39_492 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_10 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_43 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_54 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_65 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_101 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_98 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_10_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_6_525 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_418 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_267 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3740_ _3741_/CLK _3740_/D VGND VGND VPWR VPWR _3740_/Q sky130_fd_sc_hd__dfxtp_1
XANTENNA_19 _3727_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3671_ _3735_/CLK _3671_/D VGND VGND VPWR VPWR _3671_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_63_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2622_ _3283_/Q _2619_/X _2620_/X _3474_/Q _2621_/X VGND VGND VPWR VPWR _2622_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput104 _3735_/Q VGND VGND VPWR VPWR output_thermometer_o[249] sky130_fd_sc_hd__clkbuf_2
Xoutput115 _3605_/Q VGND VGND VPWR VPWR output_thermometer_o[119] sky130_fd_sc_hd__clkbuf_2
X_2553_ _2553_/A _2553_/B _3368_/Q VGND VGND VPWR VPWR _2553_/X sky130_fd_sc_hd__and3_1
Xoutput126 _3648_/Q VGND VGND VPWR VPWR output_thermometer_o[162] sky130_fd_sc_hd__clkbuf_2
Xoutput148 _3640_/Q VGND VGND VPWR VPWR output_thermometer_o[154] sky130_fd_sc_hd__clkbuf_2
Xoutput159 _3554_/Q VGND VGND VPWR VPWR output_thermometer_o[68] sky130_fd_sc_hd__clkbuf_2
Xoutput137 _3588_/Q VGND VGND VPWR VPWR output_thermometer_o[102] sky130_fd_sc_hd__clkbuf_2
X_2484_ _2484_/A VGND VGND VPWR VPWR _2484_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_68_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3105_ _2608_/X _3415_/Q _3173_/S VGND VGND VPWR VPWR _3616_/D sky130_fd_sc_hd__mux2_2
XFILLER_28_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3036_ _2400_/X _3484_/Q _3229_/S VGND VGND VPWR VPWR _3547_/D sky130_fd_sc_hd__mux2_2
XFILLER_55_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_608 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_63_292 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_619 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_11_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_3_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_46_226 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_451 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_215 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_37_259 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_251 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1984_ _1980_/X _1983_/Y _1976_/X VGND VGND VPWR VPWR _3390_/D sky130_fd_sc_hd__a21oi_1
X_3723_ _3735_/CLK _3723_/D VGND VGND VPWR VPWR _3723_/Q sky130_fd_sc_hd__dfxtp_1
X_3654_ _3735_/CLK _3654_/D VGND VGND VPWR VPWR _3654_/Q sky130_fd_sc_hd__dfxtp_1
X_2605_ _2633_/A VGND VGND VPWR VPWR _2605_/X sky130_fd_sc_hd__clkbuf_2
X_3585_ _3738_/CLK _3585_/D VGND VGND VPWR VPWR _3585_/Q sky130_fd_sc_hd__dfxtp_1
X_2536_ _3311_/Q _2531_/X _2532_/X _3248_/Q _2535_/X VGND VGND VPWR VPWR _2536_/X
+ sky130_fd_sc_hd__a221o_1
X_2467_ _2477_/A _2477_/B _3397_/Q VGND VGND VPWR VPWR _2467_/X sky130_fd_sc_hd__and3_1
XFILLER_3_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2398_ _3357_/Q _2395_/X _2396_/X _3293_/Q _2397_/X VGND VGND VPWR VPWR _2398_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_56_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3019_ _2350_/X _3246_/Q _3222_/S VGND VGND VPWR VPWR _3530_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_270 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_218 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_405 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_416 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_104 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_24_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_427 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_438 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_449 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_262 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_568 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_47_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_30_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3370_ _3763_/CLK _3370_/D VGND VGND VPWR VPWR _3370_/Q sky130_fd_sc_hd__dfxtp_1
X_2321_ _2327_/A _2327_/B _3446_/Q VGND VGND VPWR VPWR _2321_/X sky130_fd_sc_hd__and3_1
X_2252_ _3404_/Q _2243_/X _2244_/X _3340_/Q _2251_/X VGND VGND VPWR VPWR _2252_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_26_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2183_ _2098_/A _2166_/X _2005_/B _2176_/X VGND VGND VPWR VPWR _3244_/D sky130_fd_sc_hd__a31o_1
XFILLER_65_365 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_61_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3706_ _3735_/CLK _3706_/D VGND VGND VPWR VPWR _3706_/Q sky130_fd_sc_hd__dfxtp_1
X_1967_ _1985_/A _1967_/B VGND VGND VPWR VPWR _1967_/Y sky130_fd_sc_hd__nand2_1
X_1898_ _1896_/Y _1866_/X _1897_/X VGND VGND VPWR VPWR _3430_/D sky130_fd_sc_hd__o21ai_1
X_3637_ _3737_/CLK _3637_/D VGND VGND VPWR VPWR _3637_/Q sky130_fd_sc_hd__dfxtp_1
X_3568_ _3716_/CLK _3568_/D VGND VGND VPWR VPWR _3568_/Q sky130_fd_sc_hd__dfxtp_1
X_2519_ _2525_/A _2525_/B _3381_/Q VGND VGND VPWR VPWR _2519_/X sky130_fd_sc_hd__and3_1
X_3499_ _3716_/CLK _3499_/D VGND VGND VPWR VPWR _3499_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_17_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_56_376 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_224 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_213 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_202 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_435 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_268 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_257 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_246 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_235 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_33_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_279 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_3_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_346 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_519 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2870_ _3454_/Q _2855_/X _2856_/X _3390_/Q _2869_/X VGND VGND VPWR VPWR _2870_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_15_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_780 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1821_ _1815_/X _2074_/B _1820_/X VGND VGND VPWR VPWR _3455_/D sky130_fd_sc_hd__o21ai_1
XPHY_791 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_287 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1752_ _1752_/A VGND VGND VPWR VPWR _1874_/A sky130_fd_sc_hd__clkbuf_4
X_1683_ _1788_/A _1683_/B VGND VGND VPWR VPWR _1708_/A sky130_fd_sc_hd__and2_2
X_3422_ _3452_/CLK _3422_/D VGND VGND VPWR VPWR _3422_/Q sky130_fd_sc_hd__dfxtp_1
X_3353_ _3713_/CLK _3353_/D VGND VGND VPWR VPWR _3353_/Q sky130_fd_sc_hd__dfxtp_1
X_2304_ _3388_/Q _2291_/X _2292_/X _3324_/Q _2303_/X VGND VGND VPWR VPWR _2304_/X
+ sky130_fd_sc_hd__a221o_1
X_3284_ _3476_/CLK _3284_/D VGND VGND VPWR VPWR _3284_/Q sky130_fd_sc_hd__dfxtp_1
X_2235_ _2237_/A _2237_/B _3474_/Q VGND VGND VPWR VPWR _2235_/X sky130_fd_sc_hd__and3_1
XFILLER_38_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xrepeater278 _3230_/S VGND VGND VPWR VPWR _3204_/S sky130_fd_sc_hd__buf_8
X_2166_ _2166_/A VGND VGND VPWR VPWR _2166_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_53_324 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2097_ _2097_/A _2098_/B VGND VGND VPWR VPWR _3308_/D sky130_fd_sc_hd__and2_1
XFILLER_26_549 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2999_ _2290_/X _3266_/Q _3225_/S VGND VGND VPWR VPWR _3510_/D sky130_fd_sc_hd__mux2_2
XFILLER_29_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_173 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_25_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_60_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_8_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_60_74 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_5_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_5_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2020_ _2020_/A _2020_/B VGND VGND VPWR VPWR _2185_/C sky130_fd_sc_hd__nor2_1
XFILLER_47_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_62_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2922_ _3436_/Q _2915_/X _2916_/X _3372_/Q _2921_/X VGND VGND VPWR VPWR _2922_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_50_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2853_ _2863_/A _2863_/B _3268_/Q VGND VGND VPWR VPWR _2853_/X sky130_fd_sc_hd__and3_1
X_2784_ _3483_/Q _2781_/X _2782_/X _3419_/Q _2783_/X VGND VGND VPWR VPWR _2784_/X
+ sky130_fd_sc_hd__a221o_1
X_1804_ _2108_/B _1987_/B _1800_/X VGND VGND VPWR VPWR _2068_/B sky130_fd_sc_hd__a21oi_2
X_1735_ _1728_/X _2050_/A _1715_/X VGND VGND VPWR VPWR _3476_/D sky130_fd_sc_hd__o21ai_1
Xclkbuf_leaf_2_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3476_/CLK sky130_fd_sc_hd__clkbuf_16
X_1666_ _1758_/A _2115_/B VGND VGND VPWR VPWR _1828_/A sky130_fd_sc_hd__nand2_2
X_3405_ _3731_/CLK _3405_/D VGND VGND VPWR VPWR _3405_/Q sky130_fd_sc_hd__dfxtp_1
X_3336_ _3716_/CLK _3336_/D VGND VGND VPWR VPWR _3336_/Q sky130_fd_sc_hd__dfxtp_1
X_3267_ _3707_/CLK _3267_/D VGND VGND VPWR VPWR _3267_/Q sky130_fd_sc_hd__dfxtp_1
X_2218_ _3416_/Q _2211_/X _2214_/X _3352_/Q _2217_/X VGND VGND VPWR VPWR _2218_/X
+ sky130_fd_sc_hd__a221o_1
X_3198_ _2882_/X _3322_/Q _3208_/S VGND VGND VPWR VPWR _3709_/D sky130_fd_sc_hd__mux2_1
XFILLER_38_195 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2149_ _2149_/A VGND VGND VPWR VPWR _2149_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_41_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_30_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_39_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_471 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_552 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3121_ _2656_/X _3399_/Q _3186_/S VGND VGND VPWR VPWR _3632_/D sky130_fd_sc_hd__mux2_2
XFILLER_67_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_55_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3052_ _2448_/X _3468_/Q _3187_/S VGND VGND VPWR VPWR _3563_/D sky130_fd_sc_hd__mux2_2
X_2003_ _1860_/Y _2002_/X _1998_/X VGND VGND VPWR VPWR _3378_/D sky130_fd_sc_hd__a21oi_1
XFILLER_48_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_198 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2905_ _2909_/A _2909_/B _3251_/Q VGND VGND VPWR VPWR _2905_/X sky130_fd_sc_hd__and3_1
X_2836_ _3465_/Q _2827_/X _2828_/X _3401_/Q _2835_/X VGND VGND VPWR VPWR _2836_/X
+ sky130_fd_sc_hd__a221o_1
X_2767_ _2781_/A VGND VGND VPWR VPWR _2767_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_2_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2698_ _3257_/Q _2693_/X _2694_/X _3448_/Q _2697_/X VGND VGND VPWR VPWR _2698_/X
+ sky130_fd_sc_hd__a221o_1
X_1718_ _1763_/A _1945_/A VGND VGND VPWR VPWR _2087_/B sky130_fd_sc_hd__nor2_4
X_1649_ _1702_/A VGND VGND VPWR VPWR _2166_/A sky130_fd_sc_hd__clkbuf_2
X_3319_ _3449_/CLK _3319_/D VGND VGND VPWR VPWR _3319_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_46_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_121 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_55 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_10_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_6_559 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_1_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_64_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_422 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3670_ _3720_/CLK _3670_/D VGND VGND VPWR VPWR _3670_/Q sky130_fd_sc_hd__dfxtp_1
X_2621_ _2627_/A _2627_/B _3346_/Q VGND VGND VPWR VPWR _2621_/X sky130_fd_sc_hd__and3_1
Xoutput116 _3703_/Q VGND VGND VPWR VPWR output_thermometer_o[217] sky130_fd_sc_hd__clkbuf_2
XFILLER_56_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
Xoutput105 _3570_/Q VGND VGND VPWR VPWR output_thermometer_o[84] sky130_fd_sc_hd__clkbuf_2
X_2552_ _3305_/Q _2545_/X _2546_/X _3242_/Q _2551_/X VGND VGND VPWR VPWR _2552_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput138 _3695_/Q VGND VGND VPWR VPWR output_thermometer_o[209] sky130_fd_sc_hd__clkbuf_2
Xoutput127 _3632_/Q VGND VGND VPWR VPWR output_thermometer_o[146] sky130_fd_sc_hd__clkbuf_2
Xoutput149 _3584_/Q VGND VGND VPWR VPWR output_thermometer_o[98] sky130_fd_sc_hd__clkbuf_2
X_2483_ _2483_/A VGND VGND VPWR VPWR _2483_/X sky130_fd_sc_hd__clkbuf_2
X_3104_ _2604_/X _3416_/Q _3168_/S VGND VGND VPWR VPWR _3615_/D sky130_fd_sc_hd__mux2_1
X_3035_ _2398_/X _3485_/Q _3229_/S VGND VGND VPWR VPWR _3546_/D sky130_fd_sc_hd__mux2_2
XFILLER_55_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_474 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_20_clk_i clkbuf_2_3_0_clk_i/X VGND VGND VPWR VPWR _3754_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_51_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_609 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_35_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3739_/CLK sky130_fd_sc_hd__clkbuf_16
X_2819_ _2821_/A _2821_/B _3280_/Q VGND VGND VPWR VPWR _2819_/X sky130_fd_sc_hd__and3_1
XFILLER_11_68 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_500 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_27_496 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_36_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_433 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_2_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_573 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_65_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_33_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1983_ _1983_/A _1983_/B VGND VGND VPWR VPWR _1983_/Y sky130_fd_sc_hd__nand2_1
X_3722_ _3722_/CLK _3722_/D VGND VGND VPWR VPWR _3722_/Q sky130_fd_sc_hd__dfxtp_1
X_3653_ _3735_/CLK _3653_/D VGND VGND VPWR VPWR _3653_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_9_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2604_ _3289_/Q _2591_/X _2592_/X _3480_/Q _2603_/X VGND VGND VPWR VPWR _2604_/X
+ sky130_fd_sc_hd__a221o_1
X_3584_ _3739_/CLK _3584_/D VGND VGND VPWR VPWR _3584_/Q sky130_fd_sc_hd__dfxtp_1
X_2535_ _2539_/A _2539_/B _3375_/Q VGND VGND VPWR VPWR _2535_/X sky130_fd_sc_hd__and3_1
X_2466_ _2480_/A VGND VGND VPWR VPWR _2477_/B sky130_fd_sc_hd__buf_1
X_2397_ _2403_/A _2403_/B _3421_/Q VGND VGND VPWR VPWR _2397_/X sky130_fd_sc_hd__and3_1
X_3018_ _2342_/X _3247_/Q _3214_/S VGND VGND VPWR VPWR _3529_/D sky130_fd_sc_hd__mux2_2
XFILLER_43_208 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_406 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_417 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_428 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_439 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_22_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_499 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_6_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2320_ _2334_/A VGND VGND VPWR VPWR _2320_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_2_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2251_ _2251_/A _2251_/B _3468_/Q VGND VGND VPWR VPWR _2251_/X sky130_fd_sc_hd__and3_1
X_2182_ _2097_/A _2166_/X _2005_/B _2176_/X VGND VGND VPWR VPWR _3245_/D sky130_fd_sc_hd__a31o_1
XFILLER_38_536 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_271 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_21_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1966_ _2149_/A VGND VGND VPWR VPWR _1966_/X sky130_fd_sc_hd__buf_1
X_3705_ _3705_/CLK _3705_/D VGND VGND VPWR VPWR _3705_/Q sky130_fd_sc_hd__dfxtp_1
X_1897_ _1949_/A VGND VGND VPWR VPWR _1897_/X sky130_fd_sc_hd__buf_1
X_3636_ _3714_/CLK _3636_/D VGND VGND VPWR VPWR _3636_/Q sky130_fd_sc_hd__dfxtp_1
X_3567_ _3722_/CLK _3567_/D VGND VGND VPWR VPWR _3567_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_68_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2518_ _2560_/A VGND VGND VPWR VPWR _2518_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_0_318 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3498_ _3736_/CLK _3498_/D VGND VGND VPWR VPWR _3498_/Q sky130_fd_sc_hd__dfxtp_1
X_2449_ _2449_/A _2449_/B _3403_/Q VGND VGND VPWR VPWR _2449_/X sky130_fd_sc_hd__and3_1
XFILLER_29_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_208 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_225 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_214 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_203 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_258 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_247 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_236 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_269 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_3_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_781 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_770 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1820_ _1846_/A VGND VGND VPWR VPWR _1820_/X sky130_fd_sc_hd__buf_2
XFILLER_30_244 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_792 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1751_ _1794_/B _1794_/C VGND VGND VPWR VPWR _1752_/A sky130_fd_sc_hd__nand2_1
X_1682_ _1682_/A VGND VGND VPWR VPWR _2117_/A sky130_fd_sc_hd__clkbuf_4
X_3421_ _3452_/CLK _3421_/D VGND VGND VPWR VPWR _3421_/Q sky130_fd_sc_hd__dfxtp_1
X_3352_ _3739_/CLK _3352_/D VGND VGND VPWR VPWR _3352_/Q sky130_fd_sc_hd__dfxtp_1
X_2303_ _2313_/A _2313_/B _3452_/Q VGND VGND VPWR VPWR _2303_/X sky130_fd_sc_hd__and3_1
X_3283_ _3479_/CLK _3283_/D VGND VGND VPWR VPWR _3283_/Q sky130_fd_sc_hd__dfxtp_1
X_2234_ _3411_/Q _2229_/X _2230_/X _3347_/Q _2233_/X VGND VGND VPWR VPWR _2234_/X
+ sky130_fd_sc_hd__a221o_1
X_2165_ _2165_/A VGND VGND VPWR VPWR _2165_/X sky130_fd_sc_hd__dlymetal6s2s_1
XFILLER_26_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xrepeater279 _3229_/S VGND VGND VPWR VPWR _3230_/S sky130_fd_sc_hd__buf_8
XFILLER_65_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2096_ _1877_/X _1985_/B _3321_/D VGND VGND VPWR VPWR _3309_/D sky130_fd_sc_hd__o21a_1
XFILLER_41_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2998_ _2286_/X _3267_/Q _3192_/S VGND VGND VPWR VPWR _3509_/D sky130_fd_sc_hd__mux2_1
X_1949_ _1949_/A VGND VGND VPWR VPWR _1949_/X sky130_fd_sc_hd__buf_2
X_3619_ _3741_/CLK _3619_/D VGND VGND VPWR VPWR _3619_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_141 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_17_506 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_76 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_44_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_12_222 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_60_42 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_35_314 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_325 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_23_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2921_ _2923_/A _2923_/B _3245_/Q VGND VGND VPWR VPWR _2921_/X sky130_fd_sc_hd__and3_1
XFILLER_31_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2852_ _2852_/A VGND VGND VPWR VPWR _2863_/B sky130_fd_sc_hd__buf_1
X_2783_ _2789_/A _2789_/B _3291_/Q VGND VGND VPWR VPWR _2783_/X sky130_fd_sc_hd__and3_1
X_1803_ _1803_/A _1803_/B VGND VGND VPWR VPWR _2108_/B sky130_fd_sc_hd__nand2_4
X_1734_ _1941_/A _1899_/A VGND VGND VPWR VPWR _2050_/A sky130_fd_sc_hd__nor2_2
XFILLER_7_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1665_ _2188_/A VGND VGND VPWR VPWR _1665_/X sky130_fd_sc_hd__clkbuf_4
X_3404_ _3731_/CLK _3404_/D VGND VGND VPWR VPWR _3404_/Q sky130_fd_sc_hd__dfxtp_1
X_3335_ _3467_/CLK _3335_/D VGND VGND VPWR VPWR _3335_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_417 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3266_ _3453_/CLK _3266_/D VGND VGND VPWR VPWR _3266_/Q sky130_fd_sc_hd__dfxtp_1
X_2217_ _2221_/A _2221_/B _3480_/Q VGND VGND VPWR VPWR _2217_/X sky130_fd_sc_hd__and3_1
X_3197_ _2880_/X _3323_/Q _3229_/S VGND VGND VPWR VPWR _3708_/D sky130_fd_sc_hd__mux2_2
X_2148_ _2129_/X _2146_/X _1795_/B _2144_/X VGND VGND VPWR VPWR _3271_/D sky130_fd_sc_hd__a31oi_2
XFILLER_14_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2079_ _2079_/A _2079_/B _2079_/C VGND VGND VPWR VPWR _2080_/A sky130_fd_sc_hd__and3_1
XFILLER_22_520 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_328 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_30_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_1_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_55_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_55_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_328 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_9_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_564 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_40_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3120_ _2654_/X _3400_/Q _3187_/S VGND VGND VPWR VPWR _3631_/D sky130_fd_sc_hd__mux2_1
X_3051_ _2446_/X _3469_/Q _3187_/S VGND VGND VPWR VPWR _3562_/D sky130_fd_sc_hd__mux2_1
XFILLER_63_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2002_ _2002_/A VGND VGND VPWR VPWR _2002_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_50_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2904_ _3443_/Q _2901_/X _2902_/X _3379_/Q _2903_/X VGND VGND VPWR VPWR _2904_/X
+ sky130_fd_sc_hd__a221o_1
X_2835_ _2835_/A _2835_/B _3274_/Q VGND VGND VPWR VPWR _2835_/X sky130_fd_sc_hd__and3_1
X_2766_ _3234_/Q _2753_/X _2754_/X _3425_/Q _2765_/X VGND VGND VPWR VPWR _2766_/X
+ sky130_fd_sc_hd__a221o_1
X_2697_ _2701_/A _2701_/B _3320_/Q VGND VGND VPWR VPWR _2697_/X sky130_fd_sc_hd__and3_1
X_1717_ _1738_/B VGND VGND VPWR VPWR _1945_/A sky130_fd_sc_hd__clkinv_4
XFILLER_6_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1648_ _1684_/A _1738_/B _1935_/A VGND VGND VPWR VPWR _1702_/A sky130_fd_sc_hd__nand3_2
XFILLER_58_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3318_ _3586_/CLK _3318_/D VGND VGND VPWR VPWR _3318_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_58_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3249_ _3449_/CLK _3249_/D VGND VGND VPWR VPWR _3249_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_26_100 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_45 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_56 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_54_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_25_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_10_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_41_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_203 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_1_298 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_1_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3618_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_17_188 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2620_ _2634_/A VGND VGND VPWR VPWR _2620_/X sky130_fd_sc_hd__clkbuf_2
Xoutput106 _3595_/Q VGND VGND VPWR VPWR output_thermometer_o[109] sky130_fd_sc_hd__clkbuf_2
X_2551_ _2553_/A _2553_/B _3369_/Q VGND VGND VPWR VPWR _2551_/X sky130_fd_sc_hd__and3_1
Xoutput128 _3654_/Q VGND VGND VPWR VPWR output_thermometer_o[168] sky130_fd_sc_hd__clkbuf_2
X_2482_ _3328_/Q _2469_/X _2470_/X _3265_/Q _2481_/X VGND VGND VPWR VPWR _2482_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_5_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xoutput139 _3720_/Q VGND VGND VPWR VPWR output_thermometer_o[234] sky130_fd_sc_hd__clkbuf_2
Xoutput117 _3576_/Q VGND VGND VPWR VPWR output_thermometer_o[90] sky130_fd_sc_hd__clkbuf_2
XFILLER_49_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3103_ _2600_/X _3417_/Q _3204_/S VGND VGND VPWR VPWR _3614_/D sky130_fd_sc_hd__mux2_1
XFILLER_55_206 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3034_ _2394_/X _3231_/Q _3229_/S VGND VGND VPWR VPWR _3545_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_136 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_51_434 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2818_ _3472_/Q _2813_/X _2814_/X _3408_/Q _2817_/X VGND VGND VPWR VPWR _2818_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_11_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2749_ _2777_/A VGND VGND VPWR VPWR _2761_/A sky130_fd_sc_hd__buf_1
XFILLER_59_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_36_22 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_36_44 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_42_467 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_35_9 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_206 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_18_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1982_ _1980_/X _1981_/Y _1976_/X VGND VGND VPWR VPWR _3391_/D sky130_fd_sc_hd__a21oi_1
X_3721_ _3745_/CLK _3721_/D VGND VGND VPWR VPWR _3721_/Q sky130_fd_sc_hd__dfxtp_1
X_3652_ _3722_/CLK _3652_/D VGND VGND VPWR VPWR _3652_/Q sky130_fd_sc_hd__dfxtp_1
X_3583_ _3728_/CLK _3583_/D VGND VGND VPWR VPWR _3583_/Q sky130_fd_sc_hd__dfxtp_1
X_2603_ _2613_/A _2613_/B _3352_/Q VGND VGND VPWR VPWR _2603_/X sky130_fd_sc_hd__and3_1
X_2534_ _3312_/Q _2531_/X _2532_/X _3249_/Q _2533_/X VGND VGND VPWR VPWR _2534_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_5_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2465_ _2479_/A VGND VGND VPWR VPWR _2477_/A sky130_fd_sc_hd__buf_1
XFILLER_68_320 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2396_ _2410_/A VGND VGND VPWR VPWR _2396_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_28_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3017_ _2340_/X _3248_/Q _3214_/S VGND VGND VPWR VPWR _3528_/D sky130_fd_sc_hd__mux2_1
XPHY_407 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_418 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_429 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_51_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_217 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_47_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_97 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_33_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2250_ _3405_/Q _2243_/X _2244_/X _3341_/Q _2249_/X VGND VGND VPWR VPWR _2250_/X
+ sky130_fd_sc_hd__a221o_1
Xclkbuf_leaf_34_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3738_/CLK sky130_fd_sc_hd__clkbuf_16
X_2181_ _1665_/X _1878_/Y _2180_/X VGND VGND VPWR VPWR _3246_/D sky130_fd_sc_hd__o21ai_1
XFILLER_38_515 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_21_415 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1965_ _1940_/X _1795_/B _1964_/X VGND VGND VPWR VPWR _3398_/D sky130_fd_sc_hd__a21oi_1
X_3704_ _3737_/CLK _3704_/D VGND VGND VPWR VPWR _3704_/Q sky130_fd_sc_hd__dfxtp_1
X_1896_ _1907_/A _1983_/B _1896_/C VGND VGND VPWR VPWR _1896_/Y sky130_fd_sc_hd__nand3_4
X_3635_ _3739_/CLK _3635_/D VGND VGND VPWR VPWR _3635_/Q sky130_fd_sc_hd__dfxtp_1
X_3566_ _3709_/CLK _3566_/D VGND VGND VPWR VPWR _3566_/Q sky130_fd_sc_hd__dfxtp_1
X_3497_ _3728_/CLK _3497_/D VGND VGND VPWR VPWR _3497_/Q sky130_fd_sc_hd__dfxtp_1
X_2517_ _2559_/A VGND VGND VPWR VPWR _2517_/X sky130_fd_sc_hd__clkbuf_2
X_2448_ _3340_/Q _2441_/X _2442_/X _3277_/Q _2447_/X VGND VGND VPWR VPWR _2448_/X
+ sky130_fd_sc_hd__a221o_1
X_2379_ _2389_/A _2389_/B _3427_/Q VGND VGND VPWR VPWR _2379_/X sky130_fd_sc_hd__and3_1
XFILLER_68_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_356 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_548 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_44_529 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_215 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_204 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_259 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_248 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_237 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_226 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_459 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_58_42 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_59_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_771 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_760 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_793 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_782 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1750_ _1758_/A _1758_/B _2099_/B VGND VGND VPWR VPWR _1794_/C sky130_fd_sc_hd__nand3_4
XFILLER_7_474 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1681_ _1665_/X _1680_/Y _1659_/X VGND VGND VPWR VPWR _3484_/D sky130_fd_sc_hd__o21ai_1
X_3420_ _3420_/CLK _3420_/D VGND VGND VPWR VPWR _3420_/Q sky130_fd_sc_hd__dfxtp_1
X_3351_ _3618_/CLK _3351_/D VGND VGND VPWR VPWR _3351_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_31_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2302_ _2330_/A VGND VGND VPWR VPWR _2313_/B sky130_fd_sc_hd__buf_1
X_3282_ _3476_/CLK _3282_/D VGND VGND VPWR VPWR _3282_/Q sky130_fd_sc_hd__dfxtp_1
X_2233_ _2237_/A _2237_/B _3475_/Q VGND VGND VPWR VPWR _2233_/X sky130_fd_sc_hd__and3_1
XFILLER_38_301 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2164_ _3482_/D _2164_/B VGND VGND VPWR VPWR _3258_/D sky130_fd_sc_hd__or2_1
XFILLER_38_367 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_304 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2095_ _2095_/A _2098_/B VGND VGND VPWR VPWR _3310_/D sky130_fd_sc_hd__and2_1
XFILLER_53_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_61_381 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_212 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2997_ _2284_/X _3268_/Q _3192_/S VGND VGND VPWR VPWR _3508_/D sky130_fd_sc_hd__mux2_1
XFILLER_9_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1948_ _1927_/B _2054_/A _1870_/X VGND VGND VPWR VPWR _3408_/D sky130_fd_sc_hd__o21a_1
X_1879_ _1876_/X _1878_/Y _1862_/X VGND VGND VPWR VPWR _3437_/D sky130_fd_sc_hd__o21ai_1
X_3618_ _3618_/CLK _3618_/D VGND VGND VPWR VPWR _3618_/Q sky130_fd_sc_hd__dfxtp_1
X_3549_ _3738_/CLK _3549_/D VGND VGND VPWR VPWR _3549_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_28_23 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_56_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_529 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_25_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_12_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_40_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_8_238 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2920_ _3437_/Q _2915_/X _2916_/X _3373_/Q _2919_/X VGND VGND VPWR VPWR _2920_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_31_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2851_ _2851_/A VGND VGND VPWR VPWR _2863_/A sky130_fd_sc_hd__buf_1
X_2782_ _2782_/A VGND VGND VPWR VPWR _2782_/X sky130_fd_sc_hd__clkbuf_2
XPHY_590 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1802_ _1797_/X _2067_/B _1761_/X VGND VGND VPWR VPWR _3461_/D sky130_fd_sc_hd__o21ai_1
X_1733_ _1905_/A VGND VGND VPWR VPWR _1899_/A sky130_fd_sc_hd__clkbuf_4
XFILLER_7_293 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1664_ _2134_/B _1747_/B VGND VGND VPWR VPWR _2188_/A sky130_fd_sc_hd__nor2_4
X_3403_ _3485_/CLK _3403_/D VGND VGND VPWR VPWR _3403_/Q sky130_fd_sc_hd__dfxtp_1
X_3334_ _3467_/CLK _3334_/D VGND VGND VPWR VPWR _3334_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3265_ _3705_/CLK _3265_/D VGND VGND VPWR VPWR _3265_/Q sky130_fd_sc_hd__dfxtp_1
X_2216_ _3417_/Q _2211_/X _2214_/X _3353_/Q _2215_/X VGND VGND VPWR VPWR _2216_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_66_473 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3196_ _2878_/X _3324_/Q _3196_/S VGND VGND VPWR VPWR _3707_/D sky130_fd_sc_hd__mux2_1
XFILLER_26_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2147_ _2129_/X _2146_/X _1791_/B _2144_/X VGND VGND VPWR VPWR _3272_/D sky130_fd_sc_hd__a31oi_1
XFILLER_53_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2078_ _2078_/A _2078_/B VGND VGND VPWR VPWR _3323_/D sky130_fd_sc_hd__nor2_1
XFILLER_41_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_22_565 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_418 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_39_99 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_55_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_98 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_521 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_340 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3050_ _2444_/X _3470_/Q _3179_/S VGND VGND VPWR VPWR _3561_/D sky130_fd_sc_hd__mux2_2
X_2001_ _1857_/Y _1995_/X _1998_/X VGND VGND VPWR VPWR _3379_/D sky130_fd_sc_hd__a21oi_1
XFILLER_63_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2903_ _2909_/A _2909_/B _3252_/Q VGND VGND VPWR VPWR _2903_/X sky130_fd_sc_hd__and3_1
XFILLER_31_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2834_ _3466_/Q _2827_/X _2828_/X _3402_/Q _2833_/X VGND VGND VPWR VPWR _2834_/X
+ sky130_fd_sc_hd__a221o_1
X_2765_ _2775_/A _2775_/B _3297_/Q VGND VGND VPWR VPWR _2765_/X sky130_fd_sc_hd__and3_1
X_2696_ _3258_/Q _2693_/X _2694_/X _3449_/Q _2695_/X VGND VGND VPWR VPWR _2696_/X
+ sky130_fd_sc_hd__a221o_1
X_1716_ _2047_/A _1712_/X _1715_/X VGND VGND VPWR VPWR _3479_/D sky130_fd_sc_hd__o21ai_1
X_1647_ _1647_/A _1691_/A VGND VGND VPWR VPWR _1935_/A sky130_fd_sc_hd__nor2_2
X_3317_ _3738_/CLK _3317_/D VGND VGND VPWR VPWR _3317_/Q sky130_fd_sc_hd__dfxtp_1
X_3248_ _3720_/CLK _3248_/D VGND VGND VPWR VPWR _3248_/Q sky130_fd_sc_hd__dfxtp_1
X_3179_ _2826_/X _3341_/Q _3179_/S VGND VGND VPWR VPWR _3690_/D sky130_fd_sc_hd__mux2_1
XFILLER_54_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_26_134 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_14_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_24 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_35 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_54_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_68 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_79 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_41_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_10_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_517 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_41_67 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_9_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_49_215 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_259 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_167 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_9_388 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput107 _3739_/Q VGND VGND VPWR VPWR output_thermometer_o[253] sky130_fd_sc_hd__clkbuf_2
X_2550_ _3306_/Q _2545_/X _2546_/X _3243_/Q _2549_/X VGND VGND VPWR VPWR _2550_/X
+ sky130_fd_sc_hd__a221o_1
Xoutput118 _3649_/Q VGND VGND VPWR VPWR output_thermometer_o[163] sky130_fd_sc_hd__clkbuf_2
X_2481_ _2491_/A _2491_/B _3392_/Q VGND VGND VPWR VPWR _2481_/X sky130_fd_sc_hd__and3_1
Xoutput129 _3539_/Q VGND VGND VPWR VPWR output_thermometer_o[53] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_568 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3102_ _2598_/X _3418_/Q _3229_/S VGND VGND VPWR VPWR _3613_/D sky130_fd_sc_hd__mux2_1
X_3033_ _2390_/X _3232_/Q _3225_/S VGND VGND VPWR VPWR _3544_/D sky130_fd_sc_hd__mux2_2
XFILLER_55_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_51_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_31_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_11_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2817_ _2821_/A _2821_/B _3281_/Q VGND VGND VPWR VPWR _2817_/X sky130_fd_sc_hd__and3_1
XFILLER_11_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2748_ _3240_/Q _2739_/X _2740_/X _3431_/Q _2747_/X VGND VGND VPWR VPWR _2748_/X
+ sky130_fd_sc_hd__a221o_1
X_2679_ _2707_/A VGND VGND VPWR VPWR _2679_/X sky130_fd_sc_hd__buf_2
XFILLER_59_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_46_218 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_27_443 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_126 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_192 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_6_358 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_18_410 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_421 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_45_273 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1981_ _1981_/A _1983_/B VGND VGND VPWR VPWR _1981_/Y sky130_fd_sc_hd__nand2_1
X_3720_ _3720_/CLK _3720_/D VGND VGND VPWR VPWR _3720_/Q sky130_fd_sc_hd__dfxtp_1
X_3651_ _3735_/CLK _3651_/D VGND VGND VPWR VPWR _3651_/Q sky130_fd_sc_hd__dfxtp_1
X_3582_ _3728_/CLK _3582_/D VGND VGND VPWR VPWR _3582_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_61_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2602_ _2630_/A VGND VGND VPWR VPWR _2613_/B sky130_fd_sc_hd__buf_1
X_2533_ _2539_/A _2539_/B _3376_/Q VGND VGND VPWR VPWR _2533_/X sky130_fd_sc_hd__and3_1
X_2464_ _3334_/Q _2455_/X _2456_/X _3271_/Q _2463_/X VGND VGND VPWR VPWR _2464_/X
+ sky130_fd_sc_hd__a221o_1
X_2395_ _2409_/A VGND VGND VPWR VPWR _2395_/X sky130_fd_sc_hd__clkbuf_2
X_3016_ _2338_/X _3249_/Q _3208_/S VGND VGND VPWR VPWR _3527_/D sky130_fd_sc_hd__mux2_2
XFILLER_24_424 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_408 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_419 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_22_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_0_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3722_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_59_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_63_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_27_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_210 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_287 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_23_490 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2180_ _2191_/A VGND VGND VPWR VPWR _2180_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_65_302 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_527 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_262 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_284 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_210 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_265 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1964_ _2006_/A VGND VGND VPWR VPWR _1964_/X sky130_fd_sc_hd__clkbuf_2
X_3703_ _3707_/CLK _3703_/D VGND VGND VPWR VPWR _3703_/Q sky130_fd_sc_hd__dfxtp_1
X_3634_ _3741_/CLK _3634_/D VGND VGND VPWR VPWR _3634_/Q sky130_fd_sc_hd__dfxtp_1
X_1895_ _1895_/A VGND VGND VPWR VPWR _1983_/B sky130_fd_sc_hd__buf_2
X_3565_ _3736_/CLK _3565_/D VGND VGND VPWR VPWR _3565_/Q sky130_fd_sc_hd__dfxtp_1
X_2516_ _3318_/Q _2501_/X _2504_/X _3255_/Q _2515_/X VGND VGND VPWR VPWR _2516_/X
+ sky130_fd_sc_hd__a221o_1
X_3496_ _3736_/CLK _3496_/D VGND VGND VPWR VPWR _3496_/Q sky130_fd_sc_hd__dfxtp_1
X_2447_ _2449_/A _2449_/B _3404_/Q VGND VGND VPWR VPWR _2447_/X sky130_fd_sc_hd__and3_1
XFILLER_56_313 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2378_ _2406_/A VGND VGND VPWR VPWR _2389_/B sky130_fd_sc_hd__buf_1
XFILLER_56_324 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_216 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_205 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_249 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_238 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_227 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_33_13 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_471 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_379 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_43_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_772 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_761 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_750 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_794 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_783 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_279 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1680_ _1987_/A _2165_/A _1903_/C VGND VGND VPWR VPWR _1680_/Y sky130_fd_sc_hd__nand3_4
X_3350_ _3713_/CLK _3350_/D VGND VGND VPWR VPWR _3350_/Q sky130_fd_sc_hd__dfxtp_1
X_2301_ _2329_/A VGND VGND VPWR VPWR _2313_/A sky130_fd_sc_hd__buf_1
X_3281_ _3479_/CLK _3281_/D VGND VGND VPWR VPWR _3281_/Q sky130_fd_sc_hd__dfxtp_1
X_2232_ _3412_/Q _2229_/X _2230_/X _3348_/Q _2231_/X VGND VGND VPWR VPWR _2232_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_65_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2163_ _2158_/X _1990_/Y _2146_/X _2144_/A VGND VGND VPWR VPWR _3260_/D sky130_fd_sc_hd__a31oi_1
XFILLER_19_560 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_38_357 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2094_ _2094_/A _3321_/D VGND VGND VPWR VPWR _3311_/D sky130_fd_sc_hd__and2_1
XFILLER_19_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_390 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_21_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_246 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2996_ _2282_/X _3269_/Q _3192_/S VGND VGND VPWR VPWR _3507_/D sky130_fd_sc_hd__mux2_2
X_1947_ _2141_/A _2112_/A _2040_/A VGND VGND VPWR VPWR _3409_/D sky130_fd_sc_hd__a21oi_2
X_1878_ _1877_/X _1769_/B _1921_/B VGND VGND VPWR VPWR _1878_/Y sky130_fd_sc_hd__o21ai_2
X_3617_ _3713_/CLK _3617_/D VGND VGND VPWR VPWR _3617_/Q sky130_fd_sc_hd__dfxtp_1
X_3548_ _3738_/CLK _3548_/D VGND VGND VPWR VPWR _3548_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3479_ _3479_/CLK _3479_/D VGND VGND VPWR VPWR _3479_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_44_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_12 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_511 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_393 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_40_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_33_clk_i clkbuf_2_0_0_clk_i/X VGND VGND VPWR VPWR _3746_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_4_401 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_541 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_168 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_360 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2850_ _3460_/Q _2841_/X _2842_/X _3396_/Q _2849_/X VGND VGND VPWR VPWR _2850_/X
+ sky130_fd_sc_hd__a221o_1
XPHY_580 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1801_ _1985_/A _1967_/B _1800_/X VGND VGND VPWR VPWR _2067_/B sky130_fd_sc_hd__a21oi_4
X_2781_ _2781_/A VGND VGND VPWR VPWR _2781_/X sky130_fd_sc_hd__clkbuf_2
XPHY_591 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1732_ _1938_/B VGND VGND VPWR VPWR _1905_/A sky130_fd_sc_hd__buf_1
X_1663_ _1749_/A VGND VGND VPWR VPWR _1747_/B sky130_fd_sc_hd__clkbuf_4
X_3402_ _3485_/CLK _3402_/D VGND VGND VPWR VPWR _3402_/Q sky130_fd_sc_hd__dfxtp_1
X_3333_ _3716_/CLK _3333_/D VGND VGND VPWR VPWR _3333_/Q sky130_fd_sc_hd__dfxtp_1
X_3264_ _3705_/CLK _3264_/D VGND VGND VPWR VPWR _3264_/Q sky130_fd_sc_hd__dfxtp_1
X_2215_ _2221_/A _2221_/B _3481_/Q VGND VGND VPWR VPWR _2215_/X sky130_fd_sc_hd__and3_1
X_3195_ _2876_/X _3325_/Q _3196_/S VGND VGND VPWR VPWR _3706_/D sky130_fd_sc_hd__mux2_1
XFILLER_38_187 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2146_ _2146_/A VGND VGND VPWR VPWR _2146_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_53_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2077_ _2078_/A _2077_/B VGND VGND VPWR VPWR _3324_/D sky130_fd_sc_hd__nor2_1
X_2979_ _2228_/X _3286_/Q _3173_/S VGND VGND VPWR VPWR _3490_/D sky130_fd_sc_hd__mux2_1
XFILLER_30_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_426 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_57_441 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_316 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_4_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_249 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2000_ _1855_/Y _1995_/X _1998_/X VGND VGND VPWR VPWR _3380_/D sky130_fd_sc_hd__a21oi_1
XFILLER_63_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_444 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_319 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2902_ _2930_/A VGND VGND VPWR VPWR _2902_/X sky130_fd_sc_hd__clkbuf_2
X_2833_ _2835_/A _2835_/B _3275_/Q VGND VGND VPWR VPWR _2833_/X sky130_fd_sc_hd__and3_1
X_2764_ _2778_/A VGND VGND VPWR VPWR _2775_/B sky130_fd_sc_hd__buf_1
X_1715_ _1846_/A VGND VGND VPWR VPWR _1715_/X sky130_fd_sc_hd__clkbuf_2
X_2695_ _2701_/A _2701_/B _3321_/Q VGND VGND VPWR VPWR _2695_/X sky130_fd_sc_hd__and3_1
X_1646_ _1646_/A VGND VGND VPWR VPWR _1738_/B sky130_fd_sc_hd__clkbuf_4
XFILLER_58_205 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_3316_ _3739_/CLK _3316_/D VGND VGND VPWR VPWR _3316_/Q sky130_fd_sc_hd__dfxtp_1
X_3247_ _3435_/CLK _3247_/D VGND VGND VPWR VPWR _3247_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3178_ _2822_/X _3342_/Q _3179_/S VGND VGND VPWR VPWR _3689_/D sky130_fd_sc_hd__mux2_2
XFILLER_39_463 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2129_ _2149_/A VGND VGND VPWR VPWR _2129_/X sky130_fd_sc_hd__clkbuf_4
XFILLER_54_444 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_14 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_47 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_54_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_1_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_66_21 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_66_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_352 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput108 _3546_/Q VGND VGND VPWR VPWR output_thermometer_o[60] sky130_fd_sc_hd__clkbuf_2
X_2480_ _2480_/A VGND VGND VPWR VPWR _2491_/B sky130_fd_sc_hd__buf_1
XFILLER_5_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xoutput119 _3504_/Q VGND VGND VPWR VPWR output_thermometer_o[18] sky130_fd_sc_hd__clkbuf_2
XFILLER_31_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_547 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput90 _3671_/Q VGND VGND VPWR VPWR output_thermometer_o[185] sky130_fd_sc_hd__clkbuf_2
X_3101_ _2596_/X _3419_/Q _3230_/S VGND VGND VPWR VPWR _3612_/D sky130_fd_sc_hd__mux2_1
X_3032_ _2388_/X _3233_/Q _3225_/S VGND VGND VPWR VPWR _3543_/D sky130_fd_sc_hd__mux2_4
XFILLER_36_444 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_51_447 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2816_ _3473_/Q _2813_/X _2814_/X _3409_/Q _2815_/X VGND VGND VPWR VPWR _2816_/X
+ sky130_fd_sc_hd__a221o_1
X_2747_ _2747_/A _2747_/B _3303_/Q VGND VGND VPWR VPWR _2747_/X sky130_fd_sc_hd__and3_1
X_2678_ _3264_/Q _2665_/X _2666_/X _3455_/Q _2677_/X VGND VGND VPWR VPWR _2678_/X
+ sky130_fd_sc_hd__a221o_1
X_1629_ _1682_/A _1758_/B VGND VGND VPWR VPWR _1749_/A sky130_fd_sc_hd__nand2_4
XFILLER_59_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_27_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_39_260 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_27_477 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_57 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_403 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_116 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_52_34 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_10_366 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_2_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_241 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_1980_ _2149_/A VGND VGND VPWR VPWR _1980_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_20_119 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3650_ _3739_/CLK _3650_/D VGND VGND VPWR VPWR _3650_/Q sky130_fd_sc_hd__dfxtp_1
X_3581_ _3714_/CLK _3581_/D VGND VGND VPWR VPWR _3581_/Q sky130_fd_sc_hd__dfxtp_1
X_2601_ _2629_/A VGND VGND VPWR VPWR _2613_/A sky130_fd_sc_hd__buf_1
X_2532_ _2560_/A VGND VGND VPWR VPWR _2532_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_54_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2463_ _2463_/A _2463_/B _3398_/Q VGND VGND VPWR VPWR _2463_/X sky130_fd_sc_hd__and3_1
X_2394_ _3358_/Q _2381_/X _2382_/X _3294_/Q _2393_/X VGND VGND VPWR VPWR _2394_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_344 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3015_ _2336_/X _3250_/Q _3208_/S VGND VGND VPWR VPWR _3526_/D sky130_fd_sc_hd__mux2_1
XFILLER_51_200 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_409 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_59_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_63_33 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_263 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_42_255 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_10_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_6_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1963_ _2146_/A VGND VGND VPWR VPWR _2006_/A sky130_fd_sc_hd__buf_2
X_3702_ _3705_/CLK _3702_/D VGND VGND VPWR VPWR _3702_/Q sky130_fd_sc_hd__dfxtp_1
X_1894_ _1893_/Y _1866_/X _1862_/X VGND VGND VPWR VPWR _3431_/D sky130_fd_sc_hd__o21ai_1
X_3633_ _3739_/CLK _3633_/D VGND VGND VPWR VPWR _3633_/Q sky130_fd_sc_hd__dfxtp_1
X_3564_ _3714_/CLK _3564_/D VGND VGND VPWR VPWR _3564_/Q sky130_fd_sc_hd__dfxtp_1
X_3495_ _3737_/CLK _3495_/D VGND VGND VPWR VPWR _3495_/Q sky130_fd_sc_hd__dfxtp_1
X_2515_ _2525_/A _2525_/B _3382_/Q VGND VGND VPWR VPWR _2515_/X sky130_fd_sc_hd__and3_1
X_2446_ _3341_/Q _2441_/X _2442_/X _3278_/Q _2445_/X VGND VGND VPWR VPWR _2446_/X
+ sky130_fd_sc_hd__a221o_1
X_2377_ _2405_/A VGND VGND VPWR VPWR _2389_/A sky130_fd_sc_hd__buf_1
XFILLER_56_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_24_211 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_206 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_239 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_228 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_217 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_33_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_3_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_59_163 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_58_77 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_62_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_35_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_542 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_277 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_762 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_751 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_740 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_795 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_784 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_773 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_30_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2300_ _3389_/Q _2291_/X _2292_/X _3325_/Q _2299_/X VGND VGND VPWR VPWR _2300_/X
+ sky130_fd_sc_hd__a221o_1
X_3280_ _3479_/CLK _3280_/D VGND VGND VPWR VPWR _3280_/Q sky130_fd_sc_hd__dfxtp_1
X_2231_ _2237_/A _2237_/B _3476_/Q VGND VGND VPWR VPWR _2231_/X sky130_fd_sc_hd__and3_1
XFILLER_17_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2162_ _1987_/Y _2158_/X _2146_/X _2144_/A VGND VGND VPWR VPWR _3261_/D sky130_fd_sc_hd__a31oi_1
X_2093_ _2093_/A _3321_/D VGND VGND VPWR VPWR _3312_/D sky130_fd_sc_hd__and2_1
XFILLER_65_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_203 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2995_ _2280_/X _3270_/Q _3192_/S VGND VGND VPWR VPWR _3506_/D sky130_fd_sc_hd__mux2_2
X_1946_ _2141_/B _2133_/A VGND VGND VPWR VPWR _3410_/D sky130_fd_sc_hd__nor2_1
X_1877_ _2099_/B VGND VGND VPWR VPWR _1877_/X sky130_fd_sc_hd__clkbuf_2
X_3616_ _3737_/CLK _3616_/D VGND VGND VPWR VPWR _3616_/Q sky130_fd_sc_hd__dfxtp_1
X_3547_ _3722_/CLK _3547_/D VGND VGND VPWR VPWR _3547_/Q sky130_fd_sc_hd__dfxtp_1
X_3478_ _3713_/CLK _3478_/D VGND VGND VPWR VPWR _3478_/Q sky130_fd_sc_hd__dfxtp_1
X_2429_ _2435_/A _2435_/B _3411_/Q VGND VGND VPWR VPWR _2429_/X sky130_fd_sc_hd__and3_1
XFILLER_56_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_56_177 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_12_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_523 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_570 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1800_ _1841_/A VGND VGND VPWR VPWR _1800_/X sky130_fd_sc_hd__clkbuf_4
X_2780_ _3484_/Q _2767_/X _2768_/X _3420_/Q _2779_/X VGND VGND VPWR VPWR _2780_/X
+ sky130_fd_sc_hd__a221o_1
XPHY_581 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_592 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1731_ _1803_/A _1803_/B _1864_/A VGND VGND VPWR VPWR _1941_/A sky130_fd_sc_hd__nand3_4
Xclkbuf_2_1_0_clk_i clkbuf_2_1_0_clk_i/A VGND VGND VPWR VPWR clkbuf_2_1_0_clk_i/X
+ sky130_fd_sc_hd__clkbuf_1
X_1662_ _1935_/A _1887_/B VGND VGND VPWR VPWR _2134_/B sky130_fd_sc_hd__nand2_2
X_3401_ _3467_/CLK _3401_/D VGND VGND VPWR VPWR _3401_/Q sky130_fd_sc_hd__dfxtp_1
X_3332_ _3707_/CLK _3332_/D VGND VGND VPWR VPWR _3332_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3263_ _3453_/CLK _3263_/D VGND VGND VPWR VPWR _3263_/Q sky130_fd_sc_hd__dfxtp_1
X_3194_ _2870_/X _3326_/Q _3196_/S VGND VGND VPWR VPWR _3705_/D sky130_fd_sc_hd__mux2_1
X_2214_ _2258_/A VGND VGND VPWR VPWR _2214_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_38_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2145_ _2129_/X _1960_/Y _2130_/X _2144_/X VGND VGND VPWR VPWR _3273_/D sky130_fd_sc_hd__a31oi_4
XFILLER_66_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2076_ _2076_/A _2076_/B VGND VGND VPWR VPWR _3325_/D sky130_fd_sc_hd__nor2_1
XFILLER_26_339 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_22_501 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2978_ _2222_/X _3287_/Q _3168_/S VGND VGND VPWR VPWR _3489_/D sky130_fd_sc_hd__mux2_1
X_1929_ _2033_/A VGND VGND VPWR VPWR _2002_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_49_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_68 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_133 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_57_464 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_78 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_501 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_353 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_4_221 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_460 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2901_ _2929_/A VGND VGND VPWR VPWR _2901_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_16_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_16_383 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_31_386 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2832_ _3467_/Q _2827_/X _2828_/X _3403_/Q _2831_/X VGND VGND VPWR VPWR _2832_/X
+ sky130_fd_sc_hd__a221o_1
X_2763_ _2777_/A VGND VGND VPWR VPWR _2775_/A sky130_fd_sc_hd__buf_1
X_1714_ _2146_/A VGND VGND VPWR VPWR _1846_/A sky130_fd_sc_hd__buf_2
X_2694_ _2708_/A VGND VGND VPWR VPWR _2694_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_6_72 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1645_ _1668_/A input6/X _1645_/C VGND VGND VPWR VPWR _1684_/A sky130_fd_sc_hd__nor3_4
X_3315_ _3586_/CLK _3315_/D VGND VGND VPWR VPWR _3315_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_58_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3246_ _3450_/CLK _3246_/D VGND VGND VPWR VPWR _3246_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
Xclkbuf_leaf_32_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3482_/CLK sky130_fd_sc_hd__clkbuf_16
X_3177_ _2820_/X _3343_/Q _3179_/S VGND VGND VPWR VPWR _3688_/D sky130_fd_sc_hd__mux2_2
X_2128_ _1945_/B _2088_/B _1705_/A _3746_/D VGND VGND VPWR VPWR _3286_/D sky130_fd_sc_hd__o31a_1
XFILLER_26_114 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_37 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2059_ _2078_/A VGND VGND VPWR VPWR _2068_/A sky130_fd_sc_hd__clkbuf_2
XPHY_48 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_59 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_331 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_34_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_25 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_1_279 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_64_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_60_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_32_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_368 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput109 _3550_/Q VGND VGND VPWR VPWR output_thermometer_o[64] sky130_fd_sc_hd__clkbuf_2
Xoutput80 _3545_/Q VGND VGND VPWR VPWR output_thermometer_o[59] sky130_fd_sc_hd__clkbuf_2
Xoutput91 _3506_/Q VGND VGND VPWR VPWR output_thermometer_o[20] sky130_fd_sc_hd__clkbuf_2
X_3100_ _2594_/X _3420_/Q _3229_/S VGND VGND VPWR VPWR _3611_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_401 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3031_ _2386_/X _3234_/Q _3225_/S VGND VGND VPWR VPWR _3542_/D sky130_fd_sc_hd__mux2_1
XFILLER_63_220 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_36_412 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_456 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_23_128 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2815_ _2821_/A _2821_/B _3282_/Q VGND VGND VPWR VPWR _2815_/X sky130_fd_sc_hd__and3_1
XFILLER_31_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2746_ _3241_/Q _2739_/X _2740_/X _3432_/Q _2745_/X VGND VGND VPWR VPWR _2746_/X
+ sky130_fd_sc_hd__a221o_1
X_2677_ _2687_/A _2687_/B _3327_/Q VGND VGND VPWR VPWR _2677_/X sky130_fd_sc_hd__and3_1
X_1628_ input9/X input8/X VGND VGND VPWR VPWR _1758_/B sky130_fd_sc_hd__nor2_8
XFILLER_59_526 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3229_ _2968_/X _3291_/Q _3229_/S VGND VGND VPWR VPWR _3740_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_434 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_272 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_231 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_489 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_6_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_401 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_18_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3580_ _3716_/CLK _3580_/D VGND VGND VPWR VPWR _3580_/Q sky130_fd_sc_hd__dfxtp_1
X_2600_ _3746_/Q _2591_/X _2592_/X _3481_/Q _2599_/X VGND VGND VPWR VPWR _2600_/X
+ sky130_fd_sc_hd__a221o_1
X_2531_ _2559_/A VGND VGND VPWR VPWR _2531_/X sky130_fd_sc_hd__clkbuf_2
X_2462_ _3335_/Q _2455_/X _2456_/X _3272_/Q _2461_/X VGND VGND VPWR VPWR _2462_/X
+ sky130_fd_sc_hd__a221o_1
X_2393_ _2403_/A _2403_/B _3422_/Q VGND VGND VPWR VPWR _2393_/X sky130_fd_sc_hd__and3_1
XFILLER_68_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3014_ _2332_/X _3251_/Q _3208_/S VGND VGND VPWR VPWR _3525_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_297 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_278 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2729_ _2733_/A _2733_/B _3310_/Q VGND VGND VPWR VPWR _2729_/X sky130_fd_sc_hd__and3_1
XFILLER_19_209 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_47_46 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_529 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_27_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_89 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_297 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_33_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1962_ _1940_/X _1791_/B _1949_/X VGND VGND VPWR VPWR _3399_/D sky130_fd_sc_hd__a21oi_1
X_3701_ _3736_/CLK _3701_/D VGND VGND VPWR VPWR _3701_/Q sky130_fd_sc_hd__dfxtp_1
X_1893_ _1899_/A _1917_/B _2104_/A VGND VGND VPWR VPWR _1893_/Y sky130_fd_sc_hd__nand3_4
X_3632_ _3739_/CLK _3632_/D VGND VGND VPWR VPWR _3632_/Q sky130_fd_sc_hd__dfxtp_1
X_3563_ _3714_/CLK _3563_/D VGND VGND VPWR VPWR _3563_/Q sky130_fd_sc_hd__dfxtp_1
X_3494_ _3737_/CLK _3494_/D VGND VGND VPWR VPWR _3494_/Q sky130_fd_sc_hd__dfxtp_1
X_2514_ _2556_/A VGND VGND VPWR VPWR _2525_/B sky130_fd_sc_hd__buf_1
X_2445_ _2449_/A _2449_/B _3405_/Q VGND VGND VPWR VPWR _2445_/X sky130_fd_sc_hd__and3_1
X_2376_ _3364_/Q _2367_/X _2368_/X _3300_/Q _2375_/X VGND VGND VPWR VPWR _2376_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_175 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_24_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_52_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_207 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_52_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_229 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_218 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_12_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_20_462 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput270 _3594_/Q VGND VGND VPWR VPWR output_thermometer_o[108] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_573 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_763 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_752 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_741 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_730 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_796 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_785 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_774 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_30_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_7_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_7_466 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_455 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2230_ _2258_/A VGND VGND VPWR VPWR _2230_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_65_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_38_337 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2161_ _2158_/X _1985_/Y _2146_/X _2144_/A VGND VGND VPWR VPWR _3262_/D sky130_fd_sc_hd__a31oi_1
XFILLER_19_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_2092_ _2092_/A _2092_/B _3322_/D VGND VGND VPWR VPWR _3313_/D sky130_fd_sc_hd__and3_1
XFILLER_0_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_318 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_34_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2994_ _2272_/X _3271_/Q _3186_/S VGND VGND VPWR VPWR _3505_/D sky130_fd_sc_hd__mux2_1
X_1945_ _1945_/A _1945_/B VGND VGND VPWR VPWR _2133_/A sky130_fd_sc_hd__nor2_1
X_1876_ _1876_/A VGND VGND VPWR VPWR _1876_/X sky130_fd_sc_hd__buf_2
X_3615_ _3618_/CLK _3615_/D VGND VGND VPWR VPWR _3615_/Q sky130_fd_sc_hd__dfxtp_1
X_3546_ _3728_/CLK _3546_/D VGND VGND VPWR VPWR _3546_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_0_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3477_ _3618_/CLK _3477_/D VGND VGND VPWR VPWR _3477_/Q sky130_fd_sc_hd__dfxtp_1
X_2428_ _2484_/A VGND VGND VPWR VPWR _2428_/X sky130_fd_sc_hd__clkbuf_2
X_2359_ _2361_/A _2361_/B _3434_/Q VGND VGND VPWR VPWR _2359_/X sky130_fd_sc_hd__and3_1
XFILLER_29_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_392 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_40_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_62_137 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_16_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_43_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_560 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_571 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_582 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_593 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1730_ _2117_/A _2106_/A _2099_/B VGND VGND VPWR VPWR _1864_/A sky130_fd_sc_hd__a21oi_4
X_1661_ _1729_/A VGND VGND VPWR VPWR _1887_/B sky130_fd_sc_hd__clkinv_4
X_3400_ _3716_/CLK _3400_/D VGND VGND VPWR VPWR _3400_/Q sky130_fd_sc_hd__dfxtp_1
X_3331_ _3707_/CLK _3331_/D VGND VGND VPWR VPWR _3331_/Q sky130_fd_sc_hd__dfxtp_1
X_3262_ _3453_/CLK _3262_/D VGND VGND VPWR VPWR _3262_/Q sky130_fd_sc_hd__dfxtp_1
X_3193_ _2864_/X _3327_/Q _3196_/S VGND VGND VPWR VPWR _3704_/D sky130_fd_sc_hd__mux2_1
X_2213_ _2873_/A VGND VGND VPWR VPWR _2258_/A sky130_fd_sc_hd__buf_2
X_2144_ _2144_/A VGND VGND VPWR VPWR _2144_/X sky130_fd_sc_hd__buf_2
X_2075_ _2076_/A _2075_/B VGND VGND VPWR VPWR _3326_/D sky130_fd_sc_hd__nor2_1
XFILLER_53_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_14_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2977_ _2220_/X _3288_/Q _3168_/S VGND VGND VPWR VPWR _3488_/D sky130_fd_sc_hd__mux2_2
X_1928_ _1928_/A _1928_/B VGND VGND VPWR VPWR _3416_/D sky130_fd_sc_hd__nor2_1
X_1859_ _2091_/B VGND VGND VPWR VPWR _1860_/A sky130_fd_sc_hd__inv_2
X_3529_ _3722_/CLK _3529_/D VGND VGND VPWR VPWR _3529_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_156 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_60 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_91 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2900_ _3444_/Q _2887_/X _2888_/X _3380_/Q _2899_/X VGND VGND VPWR VPWR _2900_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_16_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_181 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2831_ _2835_/A _2835_/B _3276_/Q VGND VGND VPWR VPWR _2831_/X sky130_fd_sc_hd__and3_1
XPHY_390 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2762_ _3235_/Q _2753_/X _2754_/X _3426_/Q _2761_/X VGND VGND VPWR VPWR _2762_/X
+ sky130_fd_sc_hd__a221o_1
X_1713_ _1713_/A VGND VGND VPWR VPWR _2146_/A sky130_fd_sc_hd__buf_1
XANTENNA_0 _3290_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_2693_ _2707_/A VGND VGND VPWR VPWR _2693_/X sky130_fd_sc_hd__clkbuf_2
X_1644_ _1895_/A VGND VGND VPWR VPWR _1954_/B sky130_fd_sc_hd__clkbuf_4
XFILLER_6_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3314_ _3586_/CLK _3314_/D VGND VGND VPWR VPWR _3314_/Q sky130_fd_sc_hd__dfxtp_1
X_3245_ _3450_/CLK _3245_/D VGND VGND VPWR VPWR _3245_/Q sky130_fd_sc_hd__dfxtp_1
X_3176_ _2818_/X _3344_/Q _3179_/S VGND VGND VPWR VPWR _3687_/D sky130_fd_sc_hd__mux2_1
X_2127_ _2144_/A VGND VGND VPWR VPWR _3746_/D sky130_fd_sc_hd__inv_2
XFILLER_54_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_16 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_25_16 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2058_ _2058_/A _2072_/B VGND VGND VPWR VPWR _3341_/D sky130_fd_sc_hd__nor2_1
XFILLER_54_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_49 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_1_203 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_17_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_413 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_13_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_13_365 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_9_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_387 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_358 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput70 _3677_/Q VGND VGND VPWR VPWR output_thermometer_o[191] sky130_fd_sc_hd__clkbuf_2
Xoutput92 _3518_/Q VGND VGND VPWR VPWR output_thermometer_o[32] sky130_fd_sc_hd__clkbuf_2
Xoutput81 _3602_/Q VGND VGND VPWR VPWR output_thermometer_o[116] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_291 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3030_ _2384_/X _3235_/Q _3222_/S VGND VGND VPWR VPWR _3541_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_435 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_273 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_254 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_31_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2814_ _2856_/A VGND VGND VPWR VPWR _2814_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_8_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_8_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2745_ _2747_/A _2747_/B _3304_/Q VGND VGND VPWR VPWR _2745_/X sky130_fd_sc_hd__and3_1
X_2676_ _2704_/A VGND VGND VPWR VPWR _2687_/B sky130_fd_sc_hd__buf_1
X_1627_ _1687_/A VGND VGND VPWR VPWR _1803_/B sky130_fd_sc_hd__buf_4
XFILLER_59_538 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_67_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3228_ _2966_/X _3292_/Q _3229_/S VGND VGND VPWR VPWR _3739_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_295 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3159_ _2766_/X _3361_/Q _3225_/S VGND VGND VPWR VPWR _3670_/D sky130_fd_sc_hd__mux2_2
XFILLER_54_210 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_243 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_287 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_184 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_52_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_346 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_379 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_6_328 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_45_265 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_33_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_9_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_80 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2530_ _3313_/Q _2517_/X _2518_/X _3250_/Q _2529_/X VGND VGND VPWR VPWR _2530_/X
+ sky130_fd_sc_hd__a221o_1
Xclkbuf_leaf_31_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3449_/CLK sky130_fd_sc_hd__clkbuf_16
X_2461_ _2463_/A _2463_/B _3399_/Q VGND VGND VPWR VPWR _2461_/X sky130_fd_sc_hd__and3_1
X_2392_ _2406_/A VGND VGND VPWR VPWR _2403_/B sky130_fd_sc_hd__buf_1
X_3013_ _2328_/X _3252_/Q _3208_/S VGND VGND VPWR VPWR _3524_/D sky130_fd_sc_hd__mux2_2
XFILLER_49_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_24_416 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2728_ _3248_/Q _2724_/X _2726_/X _3439_/Q _2727_/X VGND VGND VPWR VPWR _2728_/X
+ sky130_fd_sc_hd__a221o_1
X_2659_ _2659_/A _2659_/B _3333_/Q VGND VGND VPWR VPWR _2659_/X sky130_fd_sc_hd__and3_1
XFILLER_47_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_276 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_15_438 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_27_298 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_6_103 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_331 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_46_530 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_21_419 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_33_257 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3700_ _3707_/CLK _3700_/D VGND VGND VPWR VPWR _3700_/Q sky130_fd_sc_hd__dfxtp_1
X_1961_ _1940_/X _1960_/Y _1949_/X VGND VGND VPWR VPWR _3400_/D sky130_fd_sc_hd__a21oi_2
X_1892_ _1876_/X _1891_/Y _1862_/X VGND VGND VPWR VPWR _3432_/D sky130_fd_sc_hd__o21ai_1
X_3631_ _3716_/CLK _3631_/D VGND VGND VPWR VPWR _3631_/Q sky130_fd_sc_hd__dfxtp_1
X_3562_ _3737_/CLK _3562_/D VGND VGND VPWR VPWR _3562_/Q sky130_fd_sc_hd__dfxtp_1
X_2513_ _2555_/A VGND VGND VPWR VPWR _2525_/A sky130_fd_sc_hd__buf_1
X_3493_ _3728_/CLK _3493_/D VGND VGND VPWR VPWR _3493_/Q sky130_fd_sc_hd__dfxtp_1
X_2444_ _3342_/Q _2441_/X _2442_/X _3279_/Q _2443_/X VGND VGND VPWR VPWR _2444_/X
+ sky130_fd_sc_hd__a221o_1
X_2375_ _2375_/A _2375_/B _3428_/Q VGND VGND VPWR VPWR _2375_/X sky130_fd_sc_hd__and3_1
XFILLER_56_305 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XPHY_219 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_208 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_52_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
Xoutput260 _3536_/Q VGND VGND VPWR VPWR output_thermometer_o[50] sky130_fd_sc_hd__clkbuf_2
Xoutput271 _3510_/Q VGND VGND VPWR VPWR output_thermometer_o[24] sky130_fd_sc_hd__clkbuf_2
XFILLER_47_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_720 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_15_268 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_753 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_742 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_731 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_786 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_775 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_764 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_797 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_194 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_24_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_327 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2160_ _2158_/X _1983_/Y _2152_/X _2153_/X VGND VGND VPWR VPWR _3263_/D sky130_fd_sc_hd__a31oi_1
XFILLER_65_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2091_ _2091_/A _2091_/B VGND VGND VPWR VPWR _3314_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_552 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_500 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_382 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_34_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2993_ _2266_/X _3272_/Q _3186_/S VGND VGND VPWR VPWR _3504_/D sky130_fd_sc_hd__mux2_2
XFILLER_14_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_1944_ _1940_/X _2090_/B _1928_/A VGND VGND VPWR VPWR _3411_/D sky130_fd_sc_hd__a21oi_2
X_3614_ _3738_/CLK _3614_/D VGND VGND VPWR VPWR _3614_/Q sky130_fd_sc_hd__dfxtp_1
X_1875_ _2095_/A _1697_/A _1869_/X _1870_/X VGND VGND VPWR VPWR _3438_/D sky130_fd_sc_hd__a31o_1
X_3545_ _3707_/CLK _3545_/D VGND VGND VPWR VPWR _3545_/Q sky130_fd_sc_hd__dfxtp_1
X_3476_ _3476_/CLK _3476_/D VGND VGND VPWR VPWR _3476_/Q sky130_fd_sc_hd__dfxtp_1
X_2427_ _2958_/A VGND VGND VPWR VPWR _2484_/A sky130_fd_sc_hd__buf_2
X_2358_ _3371_/Q _2352_/X _2354_/X _3307_/Q _2357_/X VGND VGND VPWR VPWR _2358_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_28_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2289_ _2299_/A _2299_/B _3457_/Q VGND VGND VPWR VPWR _2289_/X sky130_fd_sc_hd__and3_1
XFILLER_25_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_52_385 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_282 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_47_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_31_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_81 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_550 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_561 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_572 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_583 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_594 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_1660_ _1632_/Y _1651_/X _1659_/X VGND VGND VPWR VPWR _3485_/D sky130_fd_sc_hd__o21ai_1
XFILLER_7_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3330_ _3707_/CLK _3330_/D VGND VGND VPWR VPWR _3330_/Q sky130_fd_sc_hd__dfxtp_1
X_3261_ _3741_/CLK _3261_/D VGND VGND VPWR VPWR _3261_/Q sky130_fd_sc_hd__dfxtp_1
X_3192_ _2862_/X _3328_/Q _3192_/S VGND VGND VPWR VPWR _3703_/D sky130_fd_sc_hd__mux2_1
XFILLER_22_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2212_ _2212_/A _3747_/Q VGND VGND VPWR VPWR _2873_/A sky130_fd_sc_hd__and2_1
X_2143_ _1747_/B _1877_/X _3259_/D VGND VGND VPWR VPWR _3274_/D sky130_fd_sc_hd__a21o_1
XFILLER_38_157 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_38_179 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2074_ _2076_/A _2074_/B VGND VGND VPWR VPWR _3327_/D sky130_fd_sc_hd__nor2_1
XFILLER_14_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2976_ _2218_/X _3289_/Q _3168_/S VGND VGND VPWR VPWR _3487_/D sky130_fd_sc_hd__mux2_1
X_1927_ _2043_/B _1927_/B VGND VGND VPWR VPWR _1928_/B sky130_fd_sc_hd__nor2_1
X_1858_ _1839_/X _1857_/Y _1846_/X VGND VGND VPWR VPWR _3443_/D sky130_fd_sc_hd__o21ai_1
X_1789_ _1793_/A _2111_/A _2119_/A VGND VGND VPWR VPWR _2104_/A sky130_fd_sc_hd__nand3_4
X_3528_ _3720_/CLK _3528_/D VGND VGND VPWR VPWR _3528_/Q sky130_fd_sc_hd__dfxtp_1
X_3459_ _3707_/CLK _3459_/D VGND VGND VPWR VPWR _3459_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_433 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_113 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_124 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_36 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_55_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_330 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_67_219 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_29_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2830_ _3468_/Q _2827_/X _2828_/X _3404_/Q _2829_/X VGND VGND VPWR VPWR _2830_/X
+ sky130_fd_sc_hd__a221o_1
XPHY_380 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_540 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_391 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2761_ _2761_/A _2761_/B _3298_/Q VGND VGND VPWR VPWR _2761_/X sky130_fd_sc_hd__and3_1
X_2692_ _3259_/Q _2679_/X _2680_/X _3450_/Q _2691_/X VGND VGND VPWR VPWR _2692_/X
+ sky130_fd_sc_hd__a221o_1
X_1712_ _1743_/A VGND VGND VPWR VPWR _1712_/X sky130_fd_sc_hd__buf_2
XFILLER_6_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XANTENNA_1 _3290_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_1643_ _2020_/B _2092_/B VGND VGND VPWR VPWR _1895_/A sky130_fd_sc_hd__nand2_2
X_3313_ _3709_/CLK _3313_/D VGND VGND VPWR VPWR _3313_/Q sky130_fd_sc_hd__dfxtp_1
X_3244_ _3435_/CLK _3244_/D VGND VGND VPWR VPWR _3244_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3175_ _2816_/X _3345_/Q _3179_/S VGND VGND VPWR VPWR _3686_/D sky130_fd_sc_hd__mux2_2
X_2126_ _2153_/A VGND VGND VPWR VPWR _2144_/A sky130_fd_sc_hd__clkbuf_2
XFILLER_54_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_17 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_2057_ _2057_/A _2066_/B VGND VGND VPWR VPWR _3342_/D sky130_fd_sc_hd__and2_1
XPHY_39 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_34_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_366 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2959_ _2965_/A _2965_/B _3232_/Q VGND VGND VPWR VPWR _2959_/X sky130_fd_sc_hd__and3_1
XFILLER_45_425 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_5_554 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput60 _3665_/Q VGND VGND VPWR VPWR output_thermometer_o[179] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_539 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput82 _3516_/Q VGND VGND VPWR VPWR output_thermometer_o[30] sky130_fd_sc_hd__clkbuf_2
Xoutput93 _3611_/Q VGND VGND VPWR VPWR output_thermometer_o[125] sky130_fd_sc_hd__clkbuf_2
Xoutput71 _3491_/Q VGND VGND VPWR VPWR output_thermometer_o[5] sky130_fd_sc_hd__clkbuf_2
XFILLER_48_241 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_252 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_200 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_244 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_428 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_16_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_51_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2813_ _2855_/A VGND VGND VPWR VPWR _2813_/X sky130_fd_sc_hd__clkbuf_2
X_2744_ _3242_/Q _2739_/X _2740_/X _3433_/Q _2743_/X VGND VGND VPWR VPWR _2744_/X
+ sky130_fd_sc_hd__a221o_1
X_2675_ _2703_/A VGND VGND VPWR VPWR _2687_/A sky130_fd_sc_hd__buf_1
X_1626_ _1668_/A input6/X _1645_/C input9/X VGND VGND VPWR VPWR _1687_/A sky130_fd_sc_hd__o31ai_4
XFILLER_67_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3227_ _2964_/X _3293_/Q _3229_/S VGND VGND VPWR VPWR _3738_/D sky130_fd_sc_hd__mux2_1
XFILLER_27_414 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3158_ _2762_/X _3362_/Q _3222_/S VGND VGND VPWR VPWR _3669_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2109_ _2109_/A VGND VGND VPWR VPWR _2110_/A sky130_fd_sc_hd__inv_2
XFILLER_14_108 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3089_ _2558_/X _3431_/Q _3219_/S VGND VGND VPWR VPWR _3600_/D sky130_fd_sc_hd__mux2_1
XFILLER_42_439 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_54_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_6_307 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_524 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_214 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_26_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_45_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_9_123 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_42_70 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_189 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2460_ _3336_/Q _2455_/X _2456_/X _3273_/Q _2459_/X VGND VGND VPWR VPWR _2460_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_5_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_384 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2391_ _2405_/A VGND VGND VPWR VPWR _2403_/A sky130_fd_sc_hd__buf_1
XFILLER_68_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_369 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3012_ _2326_/X _3253_/Q _3204_/S VGND VGND VPWR VPWR _3523_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_277 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_269 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_461 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2727_ _2733_/A _2733_/B _3311_/Q VGND VGND VPWR VPWR _2727_/X sky130_fd_sc_hd__and3_1
X_2658_ _3271_/Q _2650_/X _2652_/X _3462_/Q _2657_/X VGND VGND VPWR VPWR _2658_/X
+ sky130_fd_sc_hd__a221o_1
X_2589_ _2599_/A _2599_/B _3357_/Q VGND VGND VPWR VPWR _2589_/X sky130_fd_sc_hd__and3_1
XFILLER_47_26 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_391 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_27_211 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_27_255 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_63_58 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_30_409 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_247 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_42_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_23_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_10_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_2_365 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_58_380 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_512 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_553 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_450 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_14_483 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1960_ _1960_/A _1990_/A VGND VGND VPWR VPWR _1960_/Y sky130_fd_sc_hd__nand2_2
XFILLER_14_494 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1891_ _1917_/A _1960_/A _1975_/A VGND VGND VPWR VPWR _1891_/Y sky130_fd_sc_hd__nand3_4
X_3630_ _3739_/CLK _3630_/D VGND VGND VPWR VPWR _3630_/Q sky130_fd_sc_hd__dfxtp_1
X_3561_ _3741_/CLK _3561_/D VGND VGND VPWR VPWR _3561_/Q sky130_fd_sc_hd__dfxtp_1
X_2512_ _3319_/Q _2501_/X _2504_/X _3256_/Q _2511_/X VGND VGND VPWR VPWR _2512_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_52_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
X_3492_ _3709_/CLK _3492_/D VGND VGND VPWR VPWR _3492_/Q sky130_fd_sc_hd__dfxtp_1
X_2443_ _2449_/A _2449_/B _3406_/Q VGND VGND VPWR VPWR _2443_/X sky130_fd_sc_hd__and3_1
X_2374_ _3365_/Q _2367_/X _2368_/X _3301_/Q _2373_/X VGND VGND VPWR VPWR _2374_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_29_509 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_166 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_68_199 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_531 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_553 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_64_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_209 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_24_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_20_420 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_20_453 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_20_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3759_ _3762_/CLK _3759_/D input1/X VGND VGND VPWR VPWR _3760_/D sky130_fd_sc_hd__dfrtp_1
Xoutput250 _3659_/Q VGND VGND VPWR VPWR output_thermometer_o[173] sky130_fd_sc_hd__clkbuf_2
Xoutput261 _3688_/Q VGND VGND VPWR VPWR output_thermometer_o[202] sky130_fd_sc_hd__clkbuf_2
Xoutput272 _2974_/X VGND VGND VPWR VPWR en_o sky130_fd_sc_hd__clkbuf_2
XFILLER_59_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_69 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_47_306 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xclkbuf_leaf_30_clk_i clkbuf_2_2_0_clk_i/X VGND VGND VPWR VPWR _3586_/CLK sky130_fd_sc_hd__clkbuf_16
XFILLER_28_564 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_710 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_754 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_743 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_732 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_721 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_787 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_776 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_765 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_798 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_486 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2090_ _2091_/A _2090_/B VGND VGND VPWR VPWR _3315_/D sky130_fd_sc_hd__nor2_1
XFILLER_61_320 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_534 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2992_ _2264_/X _3273_/Q _3187_/S VGND VGND VPWR VPWR _3503_/D sky130_fd_sc_hd__mux2_2
XFILLER_61_397 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_1943_ _1945_/A _1990_/B VGND VGND VPWR VPWR _2090_/B sky130_fd_sc_hd__nor2_4
X_3613_ _3741_/CLK _3613_/D VGND VGND VPWR VPWR _3613_/Q sky130_fd_sc_hd__dfxtp_1
X_1874_ _1874_/A _1874_/B VGND VGND VPWR VPWR _2095_/A sky130_fd_sc_hd__nand2_2
X_3544_ _3709_/CLK _3544_/D VGND VGND VPWR VPWR _3544_/Q sky130_fd_sc_hd__dfxtp_1
X_3475_ _3722_/CLK _3475_/D VGND VGND VPWR VPWR _3475_/Q sky130_fd_sc_hd__dfxtp_1
X_2426_ _2483_/A VGND VGND VPWR VPWR _2426_/X sky130_fd_sc_hd__clkbuf_2
X_2357_ _2361_/A _2361_/B _3435_/Q VGND VGND VPWR VPWR _2357_/X sky130_fd_sc_hd__and3_1
XFILLER_56_125 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2288_ _2330_/A VGND VGND VPWR VPWR _2299_/B sky130_fd_sc_hd__buf_1
XFILLER_52_364 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_12_239 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_60_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_20_294 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_449 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_62_117 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_501 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_361 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_28_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_567 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_55_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_34_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_540 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_551 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_562 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_43_397 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_573 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_584 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_595 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_3260_ _3452_/CLK _3260_/D VGND VGND VPWR VPWR _3260_/Q sky130_fd_sc_hd__dfxtp_1
X_2211_ _2257_/A VGND VGND VPWR VPWR _2211_/X sky130_fd_sc_hd__clkbuf_2
X_3191_ _2860_/X _3329_/Q _3196_/S VGND VGND VPWR VPWR _3702_/D sky130_fd_sc_hd__mux2_1
XFILLER_66_423 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2142_ _2142_/A _2142_/B VGND VGND VPWR VPWR _3259_/D sky130_fd_sc_hd__nand2_1
X_2073_ _2076_/A _2073_/B VGND VGND VPWR VPWR _3328_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_394 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_331 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2975_ _2216_/X _3746_/Q _3204_/S VGND VGND VPWR VPWR _3486_/D sky130_fd_sc_hd__mux2_2
X_1926_ _2033_/A VGND VGND VPWR VPWR _1927_/B sky130_fd_sc_hd__inv_2
X_1857_ _1857_/A _1860_/B VGND VGND VPWR VPWR _1857_/Y sky130_fd_sc_hd__nand2_1
X_3527_ _3735_/CLK _3527_/D VGND VGND VPWR VPWR _3527_/Q sky130_fd_sc_hd__dfxtp_1
X_1788_ _1788_/A _1788_/B VGND VGND VPWR VPWR _2119_/A sky130_fd_sc_hd__nand2_2
X_3458_ _3707_/CLK _3458_/D VGND VGND VPWR VPWR _3458_/Q sky130_fd_sc_hd__dfxtp_1
X_2409_ _2409_/A VGND VGND VPWR VPWR _2409_/X sky130_fd_sc_hd__clkbuf_2
X_3389_ _3452_/CLK _3389_/D VGND VGND VPWR VPWR _3389_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_478 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_44_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_320 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_37_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_44_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_183 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_95 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_445 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_35_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_43_150 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_50_109 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_370 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_381 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_392 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2760_ _3236_/Q _2753_/X _2754_/X _3427_/Q _2759_/X VGND VGND VPWR VPWR _2760_/X
+ sky130_fd_sc_hd__a221o_1
X_2691_ _2701_/A _2701_/B _3322_/Q VGND VGND VPWR VPWR _2691_/X sky130_fd_sc_hd__and3_1
X_1711_ _2041_/B _2166_/A _2153_/A VGND VGND VPWR VPWR _1743_/A sky130_fd_sc_hd__a21o_1
X_1642_ _1642_/A VGND VGND VPWR VPWR _2092_/B sky130_fd_sc_hd__clkbuf_2
XANTENNA_2 _3294_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
XFILLER_6_64 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3312_ _3720_/CLK _3312_/D VGND VGND VPWR VPWR _3312_/Q sky130_fd_sc_hd__dfxtp_1
X_3243_ _3763_/CLK _3243_/D VGND VGND VPWR VPWR _3243_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_253 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3174_ _2812_/X _3346_/Q _3179_/S VGND VGND VPWR VPWR _3685_/D sky130_fd_sc_hd__mux2_2
X_2125_ _2048_/B _2124_/X _3481_/D VGND VGND VPWR VPWR _3287_/D sky130_fd_sc_hd__a21o_1
XPHY_18 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XPHY_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_19_180 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2056_ _2072_/B _2056_/B VGND VGND VPWR VPWR _3343_/D sky130_fd_sc_hd__nor2_1
XFILLER_62_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_22_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_518 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_22_378 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2958_ _2958_/A VGND VGND VPWR VPWR _2958_/X sky130_fd_sc_hd__clkbuf_2
X_1909_ _1978_/A _1921_/B _1975_/A VGND VGND VPWR VPWR _1909_/Y sky130_fd_sc_hd__nand3_2
X_2889_ _2895_/A _2895_/B _3257_/Q VGND VGND VPWR VPWR _2889_/X sky130_fd_sc_hd__and3_1
XFILLER_1_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_57_242 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_17_106 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_45_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_60_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_40 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_25_161 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_25_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_40_131 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_9_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_9_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_175 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_522 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput50 _3609_/Q VGND VGND VPWR VPWR output_thermometer_o[123] sky130_fd_sc_hd__clkbuf_2
Xoutput61 _3559_/Q VGND VGND VPWR VPWR output_thermometer_o[73] sky130_fd_sc_hd__clkbuf_2
XFILLER_68_518 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
Xoutput72 _3519_/Q VGND VGND VPWR VPWR output_thermometer_o[33] sky130_fd_sc_hd__clkbuf_2
Xoutput94 _3493_/Q VGND VGND VPWR VPWR output_thermometer_o[7] sky130_fd_sc_hd__clkbuf_2
Xoutput83 _3680_/Q VGND VGND VPWR VPWR output_thermometer_o[194] sky130_fd_sc_hd__clkbuf_2
XFILLER_63_278 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_44_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2812_ _3474_/Q _2798_/X _2800_/X _3410_/Q _2811_/X VGND VGND VPWR VPWR _2812_/X
+ sky130_fd_sc_hd__a221o_1
X_2743_ _2747_/A _2747_/B _3305_/Q VGND VGND VPWR VPWR _2743_/X sky130_fd_sc_hd__and3_1
X_2674_ _3265_/Q _2665_/X _2666_/X _3456_/Q _2673_/X VGND VGND VPWR VPWR _2674_/X
+ sky130_fd_sc_hd__a221o_1
X_1625_ _1788_/A _1788_/B _2115_/B VGND VGND VPWR VPWR _1852_/B sky130_fd_sc_hd__o21ai_4
XFILLER_67_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3226_ _2962_/X _3294_/Q _3229_/S VGND VGND VPWR VPWR _3737_/D sky130_fd_sc_hd__mux2_2
XFILLER_36_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_39_286 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3157_ _2760_/X _3363_/Q _3225_/S VGND VGND VPWR VPWR _3668_/D sky130_fd_sc_hd__mux2_2
X_2108_ _3305_/D _2108_/B VGND VGND VPWR VPWR _3300_/D sky130_fd_sc_hd__and2_1
X_3088_ _2554_/X _3432_/Q _3219_/S VGND VGND VPWR VPWR _3599_/D sky130_fd_sc_hd__mux2_1
X_2039_ _1921_/Y _2002_/A _1956_/X VGND VGND VPWR VPWR _3355_/D sky130_fd_sc_hd__a21oi_1
XFILLER_42_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_52_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_18_437 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_459 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_50 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_495 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_5_374 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_47_6 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2390_ _3359_/Q _2381_/X _2382_/X _3295_/Q _2389_/X VGND VGND VPWR VPWR _2390_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_315 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_32 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_49_551 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_67_90 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3011_ _2324_/X _3254_/Q _3204_/S VGND VGND VPWR VPWR _3522_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_49_562 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_64_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_36_223 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_36_256 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_17_470 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_24_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2726_ _2782_/A VGND VGND VPWR VPWR _2726_/X sky130_fd_sc_hd__clkbuf_2
X_2657_ _2659_/A _2659_/B _3334_/Q VGND VGND VPWR VPWR _2657_/X sky130_fd_sc_hd__and3_1
X_2588_ _2630_/A VGND VGND VPWR VPWR _2599_/B sky130_fd_sc_hd__buf_1
XFILLER_59_326 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_510 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
X_3209_ _2914_/X _3311_/Q _3214_/S VGND VGND VPWR VPWR _3720_/D sky130_fd_sc_hd__mux2_1
XFILLER_15_418 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_42_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_12_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_10_189 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_96 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_329 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_18_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_58_370 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_37_71 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_61_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_33_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_33_248 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1890_ _1895_/A VGND VGND VPWR VPWR _1975_/A sky130_fd_sc_hd__clkbuf_4
XFILLER_53_92 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3560_ _3736_/CLK _3560_/D VGND VGND VPWR VPWR _3560_/Q sky130_fd_sc_hd__dfxtp_1
X_2511_ _2511_/A _2511_/B _3383_/Q VGND VGND VPWR VPWR _2511_/X sky130_fd_sc_hd__and3_1
XFILLER_5_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3491_ _3736_/CLK _3491_/D VGND VGND VPWR VPWR _3491_/Q sky130_fd_sc_hd__dfxtp_1
X_2442_ _2484_/A VGND VGND VPWR VPWR _2442_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_45_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_112 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2373_ _2375_/A _2375_/B _3429_/Q VGND VGND VPWR VPWR _2373_/X sky130_fd_sc_hd__and3_1
XFILLER_52_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_20_410 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3758_ _3762_/CLK _3758_/D input1/X VGND VGND VPWR VPWR _3759_/D sky130_fd_sc_hd__dfrtp_1
X_2709_ _2715_/A _2715_/B _3316_/Q VGND VGND VPWR VPWR _2709_/X sky130_fd_sc_hd__and3_1
X_3689_ _3735_/CLK _3689_/D VGND VGND VPWR VPWR _3689_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput240 _3740_/Q VGND VGND VPWR VPWR output_thermometer_o[254] sky130_fd_sc_hd__clkbuf_2
Xoutput262 _3599_/Q VGND VGND VPWR VPWR output_thermometer_o[113] sky130_fd_sc_hd__clkbuf_2
Xoutput251 _3571_/Q VGND VGND VPWR VPWR output_thermometer_o[85] sky130_fd_sc_hd__clkbuf_2
XFILLER_58_15 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_59_189 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_351 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_55_395 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_711 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_15_237 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_15_259 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_700 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_744 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_733 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_722 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_43_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XPHY_777 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_766 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_755 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_799 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_788 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_23_73 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_498 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_7_425 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_17_7 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_34_513 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_88 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_2991_ _2262_/X _3274_/Q _3179_/S VGND VGND VPWR VPWR _3502_/D sky130_fd_sc_hd__mux2_2
XFILLER_21_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_1942_ _1940_/X _2089_/B _1928_/A VGND VGND VPWR VPWR _3412_/D sky130_fd_sc_hd__a21oi_1
XFILLER_9_86 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1873_ _2094_/A _1697_/A _1869_/X _1870_/X VGND VGND VPWR VPWR _3439_/D sky130_fd_sc_hd__a31o_1
X_3612_ _3714_/CLK _3612_/D VGND VGND VPWR VPWR _3612_/Q sky130_fd_sc_hd__dfxtp_1
X_3543_ _3736_/CLK _3543_/D VGND VGND VPWR VPWR _3543_/Q sky130_fd_sc_hd__dfxtp_1
X_3474_ _3476_/CLK _3474_/D VGND VGND VPWR VPWR _3474_/Q sky130_fd_sc_hd__dfxtp_1
X_2425_ _2957_/A VGND VGND VPWR VPWR _2483_/A sky130_fd_sc_hd__buf_2
X_2356_ _3372_/Q _2352_/X _2354_/X _3308_/Q _2355_/X VGND VGND VPWR VPWR _2356_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_56_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2287_ _2329_/A VGND VGND VPWR VPWR _2299_/A sky130_fd_sc_hd__buf_1
XFILLER_52_310 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_546 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_557 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_44_28 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_25_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_60_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_47_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_340 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_43_321 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_43_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_16_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_31_505 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XPHY_530 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_541 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_552 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_563 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_574 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_585 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_596 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_50_60 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2210_ _2871_/A VGND VGND VPWR VPWR _2257_/A sky130_fd_sc_hd__buf_2
X_3190_ _2858_/X _3330_/Q _3192_/S VGND VGND VPWR VPWR _3701_/D sky130_fd_sc_hd__mux2_2
X_2141_ _2141_/A _2141_/B VGND VGND VPWR VPWR _3275_/D sky130_fd_sc_hd__nand2_1
X_2072_ _2072_/A _2072_/B VGND VGND VPWR VPWR _3329_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_362 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_107 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_34_365 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2974_ input3/X VGND VGND VPWR VPWR _2974_/X sky130_fd_sc_hd__buf_1
X_1925_ _2041_/B VGND VGND VPWR VPWR _2033_/A sky130_fd_sc_hd__buf_2
X_1856_ _1855_/Y _1744_/X _1846_/X VGND VGND VPWR VPWR _3444_/D sky130_fd_sc_hd__o21ai_1
X_1787_ _2115_/B _2117_/A VGND VGND VPWR VPWR _1793_/A sky130_fd_sc_hd__nor2_4
X_3526_ _3709_/CLK _3526_/D VGND VGND VPWR VPWR _3526_/Q sky130_fd_sc_hd__dfxtp_1
X_3457_ _3705_/CLK _3457_/D VGND VGND VPWR VPWR _3457_/Q sky130_fd_sc_hd__dfxtp_1
X_3388_ _3705_/CLK _3388_/D VGND VGND VPWR VPWR _3388_/Q sky130_fd_sc_hd__dfxtp_1
X_2408_ _3353_/Q _2395_/X _2396_/X _3746_/Q _2407_/X VGND VGND VPWR VPWR _2408_/X
+ sky130_fd_sc_hd__a221o_1
X_2339_ _2341_/A _2341_/B _3439_/Q VGND VGND VPWR VPWR _2339_/X sky130_fd_sc_hd__and3_1
XFILLER_29_115 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_57_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_343 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_52_162 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_398 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_21_571 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_4_258 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_20_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_431 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_479 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_360 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_368 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_371 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_382 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_393 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2690_ _2704_/A VGND VGND VPWR VPWR _2701_/B sky130_fd_sc_hd__buf_1
X_1710_ _1710_/A _2086_/A VGND VGND VPWR VPWR _2047_/A sky130_fd_sc_hd__nor2_4
XANTENNA_3 _3587_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_1641_ _1749_/A _1729_/A VGND VGND VPWR VPWR _2020_/B sky130_fd_sc_hd__nand2_2
X_3311_ _3720_/CLK _3311_/D VGND VGND VPWR VPWR _3311_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_87 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3242_ _3450_/CLK _3242_/D VGND VGND VPWR VPWR _3242_/Q sky130_fd_sc_hd__dfxtp_1
X_3173_ _2808_/X _3347_/Q _3173_/S VGND VGND VPWR VPWR _3684_/D sky130_fd_sc_hd__mux2_1
X_2124_ _2124_/A VGND VGND VPWR VPWR _2124_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_39_457 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_54_405 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_54_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_19 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_19_170 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2055_ _2055_/A VGND VGND VPWR VPWR _2072_/B sky130_fd_sc_hd__buf_2
XFILLER_62_482 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_3
XFILLER_22_357 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2957_ _2957_/A VGND VGND VPWR VPWR _2957_/X sky130_fd_sc_hd__clkbuf_2
X_2888_ _2930_/A VGND VGND VPWR VPWR _2888_/X sky130_fd_sc_hd__clkbuf_2
X_1908_ _1907_/Y _1866_/X _1897_/X VGND VGND VPWR VPWR _3425_/D sky130_fd_sc_hd__o21ai_1
X_1839_ _1876_/A VGND VGND VPWR VPWR _1839_/X sky130_fd_sc_hd__clkbuf_2
X_3509_ _3728_/CLK _3509_/D VGND VGND VPWR VPWR _3509_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_254 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_140 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_471 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_40 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
Xoutput40 _3637_/Q VGND VGND VPWR VPWR output_thermometer_o[151] sky130_fd_sc_hd__clkbuf_2
Xoutput51 _3567_/Q VGND VGND VPWR VPWR output_thermometer_o[81] sky130_fd_sc_hd__clkbuf_2
Xoutput62 _3572_/Q VGND VGND VPWR VPWR output_thermometer_o[86] sky130_fd_sc_hd__clkbuf_2
Xoutput84 _3721_/Q VGND VGND VPWR VPWR output_thermometer_o[235] sky130_fd_sc_hd__clkbuf_2
Xoutput73 _3647_/Q VGND VGND VPWR VPWR output_thermometer_o[161] sky130_fd_sc_hd__clkbuf_2
Xoutput95 _3507_/Q VGND VGND VPWR VPWR output_thermometer_o[21] sky130_fd_sc_hd__clkbuf_2
XFILLER_36_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_63_235 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_16_184 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_31_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_460 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2811_ _2821_/A _2821_/B _3283_/Q VGND VGND VPWR VPWR _2811_/X sky130_fd_sc_hd__and3_1
XPHY_190 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2742_ _3243_/Q _2739_/X _2740_/X _3434_/Q _2741_/X VGND VGND VPWR VPWR _2742_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_8_372 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2673_ _2673_/A _2673_/B _3328_/Q VGND VGND VPWR VPWR _2673_/X sky130_fd_sc_hd__and3_1
X_1624_ _1645_/C VGND VGND VPWR VPWR _2115_/B sky130_fd_sc_hd__clkbuf_4
X_3225_ _2960_/X _3295_/Q _3225_/S VGND VGND VPWR VPWR _3736_/D sky130_fd_sc_hd__mux2_4
X_3156_ _2758_/X _3364_/Q _3225_/S VGND VGND VPWR VPWR _3667_/D sky130_fd_sc_hd__mux2_1
X_3087_ _2552_/X _3433_/Q _3222_/S VGND VGND VPWR VPWR _3598_/D sky130_fd_sc_hd__mux2_2
X_2107_ _2107_/A _2110_/B VGND VGND VPWR VPWR _3301_/D sky130_fd_sc_hd__nor2_1
X_2038_ _1680_/Y _2033_/X _1956_/X VGND VGND VPWR VPWR _3356_/D sky130_fd_sc_hd__a21oi_1
XFILLER_35_493 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_22_176 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_18_427 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_45_224 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_26_62 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_110 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_13_154 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_41_485 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_3_11 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_68_349 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_3_66 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3010_ _2322_/X _3255_/Q _3204_/S VGND VGND VPWR VPWR _3521_/D sky130_fd_sc_hd__mux2_1
XFILLER_36_235 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_555 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_24_408 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_51_216 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_32_452 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2725_ _2799_/A VGND VGND VPWR VPWR _2782_/A sky130_fd_sc_hd__buf_2
X_2656_ _3272_/Q _2650_/X _2652_/X _3463_/Q _2655_/X VGND VGND VPWR VPWR _2656_/X
+ sky130_fd_sc_hd__a221o_1
X_2587_ _2629_/A VGND VGND VPWR VPWR _2599_/A sky130_fd_sc_hd__buf_1
XFILLER_59_338 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3208_ _2910_/X _3312_/Q _3208_/S VGND VGND VPWR VPWR _3719_/D sky130_fd_sc_hd__mux2_1
X_3139_ _2706_/X _3381_/Q _3204_/S VGND VGND VPWR VPWR _3650_/D sky130_fd_sc_hd__mux2_1
XFILLER_42_205 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_23_430 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_50_293 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_10_135 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_6_139 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_12_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_2_323 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_65_308 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_46_511 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_46_577 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_61_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_33_227 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_26_290 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_14_463 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3490_ _3722_/CLK _3490_/D VGND VGND VPWR VPWR _3490_/Q sky130_fd_sc_hd__dfxtp_1
X_2510_ _3320_/Q _2501_/X _2504_/X _3257_/Q _2509_/X VGND VGND VPWR VPWR _2510_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_5_172 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2441_ _2483_/A VGND VGND VPWR VPWR _2441_/X sky130_fd_sc_hd__clkbuf_2
XFILLER_38_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2372_ _3366_/Q _2367_/X _2368_/X _3302_/Q _2371_/X VGND VGND VPWR VPWR _2372_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_68_146 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_37_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_64_363 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_3757_ _3762_/CLK _3757_/D input1/X VGND VGND VPWR VPWR _3758_/D sky130_fd_sc_hd__dfrtp_1
X_2708_ _2708_/A VGND VGND VPWR VPWR _2708_/X sky130_fd_sc_hd__clkbuf_2
X_3688_ _3709_/CLK _3688_/D VGND VGND VPWR VPWR _3688_/Q sky130_fd_sc_hd__dfxtp_1
Xoutput252 _3524_/Q VGND VGND VPWR VPWR output_thermometer_o[38] sky130_fd_sc_hd__clkbuf_2
Xoutput230 _3741_/Q VGND VGND VPWR VPWR output_thermometer_o[255] sky130_fd_sc_hd__clkbuf_2
Xoutput241 _3514_/Q VGND VGND VPWR VPWR output_thermometer_o[28] sky130_fd_sc_hd__clkbuf_2
X_2639_ _2641_/A _2641_/B _3339_/Q VGND VGND VPWR VPWR _2639_/X sky130_fd_sc_hd__and3_1
XFILLER_58_27 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xoutput263 _3566_/Q VGND VGND VPWR VPWR output_thermometer_o[80] sky130_fd_sc_hd__clkbuf_2
XFILLER_58_49 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_205 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_43_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_701 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_745 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_734 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_723 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_712 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_778 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_767 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_756 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_11_433 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_11_400 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_789 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_2_142 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_2_164 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_2_186 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_60 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_533 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_19_566 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_525 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2990_ _2260_/X _3275_/Q _3186_/S VGND VGND VPWR VPWR _3501_/D sky130_fd_sc_hd__mux2_2
XFILLER_14_282 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1941_ _1941_/A VGND VGND VPWR VPWR _2089_/B sky130_fd_sc_hd__inv_2
X_1872_ _1709_/A _1920_/A _1874_/A VGND VGND VPWR VPWR _2094_/A sky130_fd_sc_hd__o21ai_2
X_3611_ _3713_/CLK _3611_/D VGND VGND VPWR VPWR _3611_/Q sky130_fd_sc_hd__dfxtp_1
X_3542_ _3734_/CLK _3542_/D VGND VGND VPWR VPWR _3542_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_6_481 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3473_ _3476_/CLK _3473_/D VGND VGND VPWR VPWR _3473_/Q sky130_fd_sc_hd__dfxtp_1
X_2424_ _3348_/Q _2409_/X _2410_/X _3285_/Q _2423_/X VGND VGND VPWR VPWR _2424_/X
+ sky130_fd_sc_hd__a221o_1
X_2355_ _2361_/A _2361_/B _3436_/Q VGND VGND VPWR VPWR _2355_/X sky130_fd_sc_hd__and3_1
X_2286_ _3394_/Q _2275_/X _2278_/X _3330_/Q _2285_/X VGND VGND VPWR VPWR _2286_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_64_160 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_514 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_52_355 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_4_429 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_47_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_18_30 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_16_525 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_28_385 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_28_396 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_24_580 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XPHY_520 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_531 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_542 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_553 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_564 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_575 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_586 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_7_201 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_597 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_38_127 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2140_ _1659_/A _2063_/A _1689_/Y _2121_/X VGND VGND VPWR VPWR _3276_/D sky130_fd_sc_hd__a31oi_1
X_2071_ _2071_/A _2072_/B VGND VGND VPWR VPWR _3330_/D sky130_fd_sc_hd__nor2_1
XFILLER_19_330 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_46_193 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_61_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
X_2973_ VGND VGND VPWR VPWR _2973_/HI _3290_/D sky130_fd_sc_hd__conb_1
X_1924_ _1924_/A VGND VGND VPWR VPWR _3418_/D sky130_fd_sc_hd__clkbuf_1
X_1855_ _1899_/A _1941_/A VGND VGND VPWR VPWR _1855_/Y sky130_fd_sc_hd__nand2_1
X_1786_ _1784_/Y _1851_/A _2164_/B VGND VGND VPWR VPWR _1795_/A sky130_fd_sc_hd__a21oi_4
X_3525_ _3741_/CLK _3525_/D VGND VGND VPWR VPWR _3525_/Q sky130_fd_sc_hd__dfxtp_1
X_3456_ _3705_/CLK _3456_/D VGND VGND VPWR VPWR _3456_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_39_29 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2407_ _2417_/A _2417_/B _3417_/Q VGND VGND VPWR VPWR _2407_/X sky130_fd_sc_hd__and3_1
X_3387_ _3452_/CLK _3387_/D VGND VGND VPWR VPWR _3387_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_57_425 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2338_ _3376_/Q _2333_/X _2334_/X _3312_/Q _2337_/X VGND VGND VPWR VPWR _2338_/X
+ sky130_fd_sc_hd__a221o_1
XFILLER_29_105 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_2269_ _2954_/A VGND VGND VPWR VPWR _2330_/A sky130_fd_sc_hd__buf_2
XFILLER_65_480 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_366 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_130 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_52_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
XFILLER_13_528 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_52_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_21_550 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_0_465 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_29_51 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_63_428 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XPHY_350 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_361 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_31_336 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XPHY_372 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_383 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_394 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XFILLER_8_543 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_12
XFILLER_8_532 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
X_1640_ _1938_/B VGND VGND VPWR VPWR _1841_/A sky130_fd_sc_hd__clkbuf_2
XANTENNA_4 _3591_/D VGND VGND VPWR VPWR sky130_fd_sc_hd__diode_2
X_3310_ _3449_/CLK _3310_/D VGND VGND VPWR VPWR _3310_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_3_281 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_3241_ _3763_/CLK _3241_/D VGND VGND VPWR VPWR _3241_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_20_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
X_3172_ _2806_/X _3348_/Q _3173_/S VGND VGND VPWR VPWR _3683_/D sky130_fd_sc_hd__mux2_1
XFILLER_39_425 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_66_233 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2123_ _2166_/A VGND VGND VPWR VPWR _2124_/A sky130_fd_sc_hd__buf_1
XFILLER_39_436 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_39_469 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_66_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_2054_ _2054_/A _3353_/D VGND VGND VPWR VPWR _3344_/D sky130_fd_sc_hd__and2_1
XFILLER_34_152 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_22_347 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_34_196 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2956_ _3424_/Q _2943_/X _2944_/X _3360_/Q _2955_/X VGND VGND VPWR VPWR _2956_/X
+ sky130_fd_sc_hd__a221o_1
X_2887_ _2929_/A VGND VGND VPWR VPWR _2887_/X sky130_fd_sc_hd__clkbuf_2
X_1907_ _1907_/A _1954_/B _1975_/B VGND VGND VPWR VPWR _1907_/Y sky130_fd_sc_hd__nand3_4
X_1838_ _2092_/B _1710_/A _1834_/X _1924_/A VGND VGND VPWR VPWR _3449_/D sky130_fd_sc_hd__a31o_1
X_1769_ _2062_/A _1769_/B VGND VGND VPWR VPWR _2058_/A sky130_fd_sc_hd__nor2_4
X_3508_ _3741_/CLK _3508_/D VGND VGND VPWR VPWR _3508_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_1_229 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
X_3439_ _3720_/CLK _3439_/D VGND VGND VPWR VPWR _3439_/Q sky130_fd_sc_hd__dfxtp_1
XFILLER_66_38 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_13_303 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_20 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_25_185 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_53_461 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_15_53 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_15_75 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_111 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_40_144 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_40_155 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_502 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_8
XFILLER_5_546 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_5_579 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_2
Xoutput52 _3728_/Q VGND VGND VPWR VPWR output_thermometer_o[242] sky130_fd_sc_hd__clkbuf_2
Xoutput30 _3683_/Q VGND VGND VPWR VPWR output_thermometer_o[197] sky130_fd_sc_hd__clkbuf_2
Xoutput41 _3722_/Q VGND VGND VPWR VPWR output_thermometer_o[236] sky130_fd_sc_hd__clkbuf_2
Xoutput74 _3497_/Q VGND VGND VPWR VPWR output_thermometer_o[11] sky130_fd_sc_hd__clkbuf_2
Xoutput63 _3701_/Q VGND VGND VPWR VPWR output_thermometer_o[215] sky130_fd_sc_hd__clkbuf_2
Xoutput85 _3713_/Q VGND VGND VPWR VPWR output_thermometer_o[227] sky130_fd_sc_hd__clkbuf_2
Xoutput96 _3707_/Q VGND VGND VPWR VPWR output_thermometer_o[221] sky130_fd_sc_hd__clkbuf_2
XFILLER_0_262 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_6
XFILLER_48_211 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_48_266 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_56_82 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_29_491 VGND VGND VPWR VPWR sky130_fd_sc_hd__fill_1
XFILLER_48_299 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_44_472 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
XFILLER_31_122 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2810_ _2852_/A VGND VGND VPWR VPWR _2821_/B sky130_fd_sc_hd__buf_1
XPHY_191 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
XPHY_180 VGND VPWR sky130_fd_sc_hd__tapvpwrvgnd_1
X_2741_ _2747_/A _2747_/B _3306_/Q VGND VGND VPWR VPWR _2741_/X sky130_fd_sc_hd__and3_1
XFILLER_68_3 VGND VGND VPWR VPWR sky130_fd_sc_hd__decap_4
X_2672_ _3266_/Q _2665_/X _2666_/X _3457_/Q _2671_/X VGND VGND VPWR VPWR _2672_/X
+ sky130_fd_sc_hd__a221o_1
X_1623_ _1683_/B VGND VGND VPWR VPWR _1788_/B sky130_fd_sc_hd__buf_2
X_3224_ _2956_/X _3296_/Q _3225_/S VGND VGND VPWR VPWR _3735_/D sky130_fd_sc_hd__mux2_1
*.ends



"}
