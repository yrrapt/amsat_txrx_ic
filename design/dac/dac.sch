v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 530 -580 530 -240 { lab=#net1}
N 530 -240 730 -240 { lab=#net1}
N 530 -580 730 -580 { lab=#net1}
N 530 -920 730 -920 { lab=#net1}
N 490 -880 730 -880 { lab=#net2}
N 490 -200 730 -200 { lab=#net2}
N 490 -540 490 -200 { lab=#net2}
N 490 -540 730 -540 { lab=#net2}
N 450 -840 730 -840 { lab=#net3}
N 450 -160 730 -160 { lab=#net3}
N 450 -500 450 -160 { lab=#net3}
N 450 -500 730 -500 { lab=#net3}
N 1130 -150 1220 -150 { lab=out_n}
N 1150 -170 1220 -170 { lab=out_p}
N 1030 -830 1130 -830 { lab=out_n}
N 1130 -490 1130 -150 { lab=out_n}
N 1030 -490 1130 -490 { lab=out_n}
N 1030 -850 1150 -850 { lab=out_p}
N 1150 -510 1150 -170 { lab=out_p}
N 1030 -510 1150 -510 { lab=out_p}
N -10 -840 150 -840 { lab=bias_10u}
N 110 -880 150 -880 { lab=#net1}
N 110 -970 110 -880 { lab=#net1}
N 110 -970 530 -970 { lab=#net1}
N 530 -920 530 -580 { lab=#net1}
N 530 -970 530 -920 { lab=#net1}
N 390 -880 490 -880 { lab=#net2}
N 490 -880 490 -540 { lab=#net2}
N 390 -840 450 -840 { lab=#net3}
N 450 -840 450 -500 { lab=#net3}
N 1030 -150 1130 -150 { lab=out_n}
N 1130 -830 1130 -490 { lab=out_n}
N 1030 -170 1150 -170 { lab=out_p}
N 1150 -850 1150 -510 { lab=out_p}
N 530 -1010 530 -970 { lab=#net1}
N 530 -1140 530 -1070 { lab=vdda}
N 0 -1140 530 -1140 { lab=vdda}
N 0 -0 880 0 { lab=vss}
N 880 -40 880 0 { lab=vss}
C {dac_unit_cell/dac_unit_cell.sym} 880 -840 0 0 {name=xunit_cell[255:0]}
C {dac_unit_cell_half/dac_unit_cell_half.sym} 880 -500 0 0 {name=xunit_cell_half}
C {dac_unit_cell_quarter/dac_unit_cell_quarter.sym} 880 -160 0 0 {name=xunit_cell_quarter}
C {dac_bias/dac_bias.sym} 270 -860 0 0 {name=xbias[9:0]}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 530 -1040 0 0 {name=Rdrive[7:0]
W=0.69
L=12.84
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {opin.sym} 1220 -170 0 0 {name=p1 lab=out_p}
C {opin.sym} 1220 -150 0 0 {name=p2 lab=out_n}
C {ipin.sym} 0 -400 0 0 {name=p3 lab=clk}
C {ipin.sym} 0 -380 0 0 {name=p4 lab=data_therm[255:0]}
C {ipin.sym} 0 -360 0 0 {name=p5 lab=data_half}
C {ipin.sym} 0 -340 0 0 {name=p6 lab=data_quarter}
C {lab_pin.sym} 730 -100 0 0 {name=l3 sig_type=std_logic lab=clk}
C {lab_pin.sym} 730 -440 0 0 {name=l1 sig_type=std_logic lab=clk}
C {lab_pin.sym} 730 -780 0 0 {name=l2 sig_type=std_logic lab=clk}
C {lab_pin.sym} 730 -760 0 0 {name=l4 sig_type=std_logic lab=data_therm[255:0]}
C {lab_pin.sym} 730 -420 0 0 {name=l5 sig_type=std_logic lab=data_half}
C {lab_pin.sym} 730 -80 0 0 {name=l6 sig_type=std_logic lab=data_quarter}
C {ipin.sym} -10 -840 0 0 {name=p7 lab=bias_10u}
C {lab_pin.sym} 270 -800 0 0 {name=l7 sig_type=std_logic lab=vss}
C {lab_pin.sym} 270 -920 2 0 {name=l8 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 880 -380 0 0 {name=l10 sig_type=std_logic lab=vss}
C {lab_pin.sym} 880 -40 0 0 {name=l11 sig_type=std_logic lab=vss}
C {lab_pin.sym} 880 -280 2 0 {name=l12 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 880 -620 2 0 {name=l13 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 880 -960 2 0 {name=l9 sig_type=std_logic lab=vdda}
C {lab_pin.sym} 950 -280 2 0 {name=l14 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 950 -620 2 0 {name=l15 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 950 -960 2 0 {name=l16 sig_type=std_logic lab=vddd}
C {lab_pin.sym} 880 -720 0 0 {name=l17 sig_type=std_logic lab=vss}
C {lab_pin.sym} 510 -1040 0 0 {name=l18 sig_type=std_logic lab=vss}
C {iopin.sym} 0 -1140 0 1 {name=p8 lab=vdda}
C {iopin.sym} 0 -1100 0 1 {name=p9 lab=vddd}
C {iopin.sym} 0 0 0 1 {name=p10 lab=vss}
C {sky130_stdcells/decap_12.sym} 830 -1080 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {lab_pin.sym} 730 -820 0 0 {name=l19 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 730 -480 0 0 {name=l20 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 730 -140 0 0 {name=l21 sig_type=std_logic lab=bias_10u}
C {lab_pin.sym} 730 -860 0 0 {name=l22 sig_type=std_logic lab=vss}
C {lab_pin.sym} 730 -520 0 0 {name=l23 sig_type=std_logic lab=vss}
C {lab_pin.sym} 730 -180 0 0 {name=l24 sig_type=std_logic lab=vss}
