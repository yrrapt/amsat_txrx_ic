v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1130 -910 1130 -570 { lab=#net1}
N 1130 -570 1330 -570 { lab=#net1}
N 1130 -910 1330 -910 { lab=#net1}
N 1130 -1250 1330 -1250 { lab=#net1}
N 1090 -1210 1330 -1210 { lab=#net2}
N 1090 -530 1330 -530 { lab=#net2}
N 1090 -870 1090 -530 { lab=#net2}
N 1090 -870 1330 -870 { lab=#net2}
N 1050 -1170 1330 -1170 { lab=#net3}
N 1050 -490 1330 -490 { lab=#net3}
N 1050 -830 1050 -490 { lab=#net3}
N 1050 -830 1330 -830 { lab=#net3}
N 1730 -480 1820 -480 { lab=out_n}
N 1750 -500 1820 -500 { lab=out_p}
N 1630 -1160 1730 -1160 { lab=out_n}
N 1730 -820 1730 -480 { lab=out_n}
N 1630 -820 1730 -820 { lab=out_n}
N 1630 -1180 1750 -1180 { lab=out_p}
N 1750 -840 1750 -500 { lab=out_p}
N 1630 -840 1750 -840 { lab=out_p}
N 240 -1090 650 -1090 { lab=bias_10u}
N 530 -1130 650 -1130 { lab=#net1}
N 1130 -1250 1130 -910 { lab=#net1}
N 1090 -1210 1090 -870 { lab=#net2}
N 1050 -1170 1050 -830 { lab=#net3}
N 1630 -480 1730 -480 { lab=out_n}
N 1730 -1160 1730 -820 { lab=out_n}
N 1630 -500 1750 -500 { lab=out_p}
N 1750 -1180 1750 -840 { lab=out_p}
N 800 -1430 1130 -1430 { lab=vdda}
N 770 0 1480 0 { lab=vss}
N 760 -980 760 0 { lab=vss}
N 240 -910 330 -910 { lab=bias_10u}
N 240 -1090 240 -910 { lab=bias_10u}
N 0 0 770 0 { lab=vss}
N -10 -1090 240 -1090 { lab=bias_10u}
N 0 -1430 800 -1430 { lab=vdda}
N 800 -1430 800 -1190 { lab=vdda}
N 490 -1430 490 -1010 { lab=vdda}
N 1480 -1430 1480 -1290 { lab=vdda}
N 1130 -1430 1480 -1430 { lab=vdda}
N 0 -1390 1550 -1390 { lab=vddd}
N 1550 -1390 1550 -1290 { lab=vddd}
N 720 -1380 720 -1190 { lab=vddd}
N 720 -1390 720 -1380 { lab=vddd}
N 410 -1390 410 -1010 { lab=vddd}
N 310 -950 330 -950 { lab=#net1}
N 310 -1250 310 -950 { lab=#net1}
N 530 -1250 530 -1130 { lab=#net1}
N 450 -800 450 0 { lab=vss}
N 570 -950 1090 -950 { lab=#net2}
N 570 -910 1050 -910 { lab=#net3}
N 310 -1250 1130 -1250 { lab=#net1}
N 880 -1090 1050 -1090 { lab=#net3}
N 880 -1130 1090 -1130 { lab=#net2}
N 1130 -570 1130 -230 { lab=#net1}
N 1130 -230 1330 -230 { lab=#net1}
N 1090 -190 1330 -190 { lab=#net2}
N 1090 -530 1090 -190 { lab=#net2}
N 1050 -150 1330 -150 { lab=#net3}
N 1050 -490 1050 -150 { lab=#net3}
N 1480 -30 1480 0 { lab=vss}
N 0 -590 60 -590 { lab=en}
N 330 -590 350 -590 { lab=en_buf}
N 140 -590 250 -590 { lab=en_buf_n}
N 880 -1050 1010 -1050 { lab=#net4}
N 1010 -1050 1010 -130 { lab=#net4}
N 1010 -130 1330 -130 { lab=#net4}
N 1010 -470 1330 -470 { lab=#net4}
N 1010 -810 1330 -810 { lab=#net4}
N 1010 -1150 1330 -1150 { lab=#net4}
N 1010 -1150 1010 -1050 { lab=#net4}
N 570 -870 1010 -870 { lab=#net4}
C {dac_unit_cell/dac_unit_cell.sym} 1480 -1170 0 0 {name=xunit_cell[255:0]}
C {dac_unit_cell_half/dac_unit_cell_half.sym} 1480 -830 0 0 {name=xunit_cell_half}
C {dac_unit_cell_quarter/dac_unit_cell_quarter.sym} 1480 -490 0 0 {name=xunit_cell_quarter}
C {dac_bias/dac_bias.sym} 760 -1110 0 0 {name=xbias[7:0]}
C {devices/opin.sym} 1820 -500 0 0 {name=p1 lab=out_p}
C {devices/opin.sym} 1820 -480 0 0 {name=p2 lab=out_n}
C {devices/ipin.sym} 0 -750 0 0 {name=p3 lab=clk}
C {devices/ipin.sym} 0 -710 0 0 {name=p4 lab=data_therm[255:0]}
C {devices/ipin.sym} 0 -690 0 0 {name=p5 lab=data_half}
C {devices/ipin.sym} 0 -670 0 0 {name=p6 lab=data_quarter}
C {devices/lab_pin.sym} 1330 -430 0 0 {name=l3 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1330 -770 0 0 {name=l1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1330 -1110 0 0 {name=l2 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1330 -1090 0 0 {name=l4 sig_type=std_logic lab=data_therm[255:0]}
C {devices/lab_pin.sym} 1330 -750 0 0 {name=l5 sig_type=std_logic lab=data_half}
C {devices/ipin.sym} -10 -1090 0 0 {name=p7 lab=bias_10u}
C {devices/lab_pin.sym} 1480 -710 0 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1480 -370 0 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1480 -610 2 0 {name=l12 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1480 -950 2 0 {name=l13 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1480 -1290 2 0 {name=l9 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1550 -610 2 0 {name=l14 sig_type=std_logic lab=vddd}
C {devices/lab_pin.sym} 1550 -950 2 0 {name=l15 sig_type=std_logic lab=vddd}
C {devices/lab_pin.sym} 1480 -1050 0 0 {name=l17 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 0 -1430 0 1 {name=p8 lab=vdda}
C {devices/iopin.sym} 0 -1390 0 1 {name=p9 lab=vddd}
C {devices/iopin.sym} 0 0 0 1 {name=p10 lab=vss}
C {devices/lab_pin.sym} 1330 -1190 0 0 {name=l22 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1330 -850 0 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1330 -510 0 0 {name=l24 sig_type=std_logic lab=vss}
C {dac_bias_nores/dac_bias_nores.sym} 450 -930 0 0 {name=x1[1:0]}
C {dac_unit_cell_dummy/dac_unit_cell_dummy.sym} 1480 -150 0 0 {name=x1[5:0]}
C {devices/lab_pin.sym} 1480 -270 2 0 {name=l18 sig_type=std_logic lab=vdda}
C {devices/lab_pin.sym} 1550 -270 2 0 {name=l25 sig_type=std_logic lab=vddd}
C {devices/lab_pin.sym} 1330 -170 0 0 {name=l27 sig_type=std_logic lab=vss}
C {devices/ipin.sym} 0 -590 0 0 {name=p11 lab=en}
C {sky130_stdcells/inv_1.sym} 100 -590 0 0 {name=x1 VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {sky130_stdcells/inv_1.sym} 290 -590 0 0 {name=x2 VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {devices/lab_wire.sym} 170 -590 0 1 {name=l7 sig_type=std_logic lab=en_buf_n}
C {devices/lab_wire.sym} 350 -590 0 1 {name=l8 sig_type=std_logic lab=en_buf}
C {devices/lab_pin.sym} 640 -1060 0 0 {name=l16 sig_type=std_logic lab=en_buf}
C {devices/lab_pin.sym} 330 -880 0 0 {name=l28 sig_type=std_logic lab=en_buf}
C {devices/lab_pin.sym} 330 -860 0 0 {name=l29 sig_type=std_logic lab=en_buf_n}
C {devices/lab_pin.sym} 640 -1040 0 0 {name=l30 sig_type=std_logic lab=en_buf_n}
