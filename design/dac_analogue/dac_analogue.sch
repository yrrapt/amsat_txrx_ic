v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 720 -910 720 -570 { lab=#net1}
N 720 -570 920 -570 { lab=#net1}
N 720 -910 920 -910 { lab=#net1}
N 720 -1250 920 -1250 { lab=#net1}
N 680 -1210 920 -1210 { lab=#net2}
N 680 -530 920 -530 { lab=#net2}
N 680 -870 680 -530 { lab=#net2}
N 680 -870 920 -870 { lab=#net2}
N 640 -1170 920 -1170 { lab=#net3}
N 640 -490 920 -490 { lab=#net3}
N 640 -830 640 -490 { lab=#net3}
N 640 -830 920 -830 { lab=#net3}
N 1320 -480 1410 -480 { lab=out_n}
N 1340 -500 1410 -500 { lab=out_p}
N 1220 -1160 1320 -1160 { lab=out_n}
N 1320 -820 1320 -480 { lab=out_n}
N 1220 -820 1320 -820 { lab=out_n}
N 1220 -1180 1340 -1180 { lab=out_p}
N 1340 -840 1340 -500 { lab=out_p}
N 1220 -840 1340 -840 { lab=out_p}
N 20 -1090 340 -1090 { lab=bias_10u}
N 310 -1130 340 -1130 { lab=#net1}
N 720 -1250 720 -910 { lab=#net1}
N 680 -1210 680 -870 { lab=#net2}
N 640 -1170 640 -830 { lab=#net3}
N 1220 -480 1320 -480 { lab=out_n}
N 1320 -1160 1320 -820 { lab=out_n}
N 1220 -500 1340 -500 { lab=out_p}
N 1340 -1180 1340 -840 { lab=out_p}
N 500 -1430 720 -1430 { lab=vdda}
N 460 0 1070 0 { lab=vss}
N 460 -1050 460 0 { lab=vss}
N 20 -910 110 -910 { lab=bias_10u}
N 20 -1090 20 -910 { lab=bias_10u}
N 0 0 460 0 { lab=vss}
N -10 -1090 20 -1090 { lab=bias_10u}
N 0 -1430 500 -1430 { lab=vdda}
N 500 -1430 500 -1190 { lab=vdda}
N 270 -1430 270 -1010 { lab=vdda}
N 1070 -1430 1070 -1290 { lab=vdda}
N 720 -1430 1070 -1430 { lab=vdda}
N 0 -1390 1140 -1390 { lab=vddd}
N 1140 -1390 1140 -1290 { lab=vddd}
N 420 -1380 420 -1190 { lab=vddd}
N 420 -1390 420 -1380 { lab=vddd}
N 190 -1390 190 -1010 { lab=vddd}
N 90 -950 110 -950 { lab=#net1}
N 90 -1250 90 -950 { lab=#net1}
N 310 -1250 310 -1130 { lab=#net1}
N 230 -870 230 0 { lab=vss}
N 350 -950 680 -950 { lab=#net2}
N 350 -910 640 -910 { lab=#net3}
N 90 -1250 720 -1250 { lab=#net1}
N 580 -1090 640 -1090 { lab=#net3}
N 580 -1130 680 -1130 { lab=#net2}
N 720 -570 720 -230 { lab=#net1}
N 720 -230 920 -230 { lab=#net1}
N 680 -190 920 -190 { lab=#net2}
N 680 -530 680 -190 { lab=#net2}
N 640 -150 920 -150 { lab=#net3}
N 640 -490 640 -150 { lab=#net3}
N 1070 -30 1070 0 { lab=vss}
C {dac_unit_cell/dac_unit_cell.sym} 1070 -1170 0 0 {name=xunit_cell[255:0]}
C {dac_unit_cell_half/dac_unit_cell_half.sym} 1070 -830 0 0 {name=xunit_cell_half}
C {dac_unit_cell_quarter/dac_unit_cell_quarter.sym} 1070 -490 0 0 {name=xunit_cell_quarter}
C {dac_bias/dac_bias.sym} 460 -1110 0 0 {name=xbias[7:0]}
C {opin.sym} 1410 -500 0 0 {name=p1 lab=out_p}
C {opin.sym} 1410 -480 0 0 {name=p2 lab=out_n}
C {ipin.sym} 0 -750 0 0 {name=p3 lab=clk}
C {ipin.sym} 0 -710 0 0 {name=p4 lab=data_therm[255:0]}
C {ipin.sym} 0 -690 0 0 {name=p5 lab=data_half}
C {ipin.sym} 0 -670 0 0 {name=p6 lab=data_quarter}
C {lab_pin.sym} 920 -430 0 0 {name=l3 sig_type=std_logic lab=clk}
C {lab_pin.sym} 920 -770 0 0 {name=l1 sig_type=std_logic lab=clk}
C {lab_pin.sym} 920 -1110 0 0 {name=l2 sig_type=std_logic lab=clk}
C {lab_pin.sym} 920 -1090 0 0 {name=l4 sig_type=std_logic lab=data_therm[255:0]}
C {lab_pin.sym} 920 -750 0 0 {name=l5 sig_type=std_logic lab=data_half}
C {lab_pin.sym} 920 -410 0 0 {name=l6 sig_type=std_logic lab=data_quarter}
C {ipin.sym} -10 -1090 0 0 {name=p7 lab=bias_10u}
C {lab_pin.sym} 1070 -710 0 0 {name=l10 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1070 -370 0 0 {name=l11 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1070 -610 2 0 {name=l12 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 1070 -950 2 0 {name=l13 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 1070 -1290 2 0 {name=l9 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 1140 -610 2 0 {name=l14 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 1140 -950 2 0 {name=l15 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 1070 -1050 0 0 {name=l17 sig_type=std_logic lab=vss}
C {iopin.sym} 0 -1430 0 1 {name=p8 lab=vdda}
C {iopin.sym} 0 -1390 0 1 {name=p9 lab=vddd}
C {iopin.sym} 0 0 0 1 {name=p10 lab=vss}
C {lab_pin.sym} 920 -1150 0 0 {name=l19 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 920 -810 0 0 {name=l20 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 920 -470 0 0 {name=l21 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 920 -1190 0 0 {name=l22 sig_type=std_logic lab=vss}
C {lab_pin.sym} 920 -850 0 0 {name=l23 sig_type=std_logic lab=vss}
C {lab_pin.sym} 920 -510 0 0 {name=l24 sig_type=std_logic lab=vss}
C {dac_bias_nores/dac_bias_nores.sym} 230 -930 0 0 {name=x1[1:0]}
C {dac_unit_cell_dummy/dac_unit_cell_dummy.sym} 1070 -150 0 0 {name=x1[5:0]}
C {lab_pin.sym} 1070 -270 2 0 {name=l18 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 1140 -270 2 0 {name=l25 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 920 -130 0 0 {name=l26 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 920 -170 0 0 {name=l27 sig_type=std_logic lab=vss}
C {ipin.sym} 0 -730 0 0 {name=p11 lab=en}
