v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1040 -210 1120 -210 { lab=out_p}
N 1040 -190 1110 -190 { lab=out_n}
N 1110 -190 1120 -190 { lab=out_n}
N 0 0 890 0 { lab=vss}
N 890 -100 890 0 { lab=vss}
N 0 -400 890 -400 { lab=vdda}
N 890 -400 890 -320 { lab=vdda}
N 0 -420 970 -420 { lab=vddd}
N 970 -420 970 -320 { lab=vddd}
N 710 -280 740 -280 { lab=bias_10u_p}
N 710 -360 710 -280 { lab=bias_10u_p}
N -0 -360 710 -360 { lab=bias_10u_p}
N 310 -420 310 -280 { lab=vddd}
N 310 -100 310 -0 { lab=vss}
N 0 -190 160 -190 { lab=randomise}
N 0 -150 160 -150 { lab=data[9:0]}
N 0 -170 160 -170 { lab=en}
N -0 -210 160 -210 { lab=rst_n}
N -0 -230 160 -230 { lab=clk}
N 460 -220 740 -220 { lab=#net1}
N 460 -180 740 -180 { lab=#net2}
C {dac_analogue/dac_analogue.sym} 890 -200 0 0 {name=xanalogue}
C {iopin.sym} 0 0 0 1 {name=p1 lab=vss}
C {iopin.sym} 0 -400 0 1 {name=p2 lab=vdda}
C {iopin.sym} 0 -420 0 1 {name=p3 lab=vddd}
C {ipin.sym} 0 -360 0 0 {name=p4 lab=bias_10u_p}
C {ipin.sym} 0 -230 0 0 {name=p5 lab=clk}
C {ipin.sym} 0 -150 0 0 {name=p6 lab=data[9:0]}
C {opin.sym} 1120 -210 0 0 {name=p7 lab=out_p}
C {opin.sym} 1120 -190 0 0 {name=p8 lab=out_n}
C {ipin.sym} 0 -170 0 0 {name=p9 lab=en}
C {ipin.sym} 0 -190 0 0 {name=p10 lab=randomise}
C {dac_digital_interface/dac_digital_interface.sym} 310 -190 0 0 {name=x1}
C {ipin.sym} 0 -210 0 0 {name=p11 lab=rst_n}
C {lab_pin.sym} 740 -240 0 0 {name=l1 sig_type=std_logic lab=clk}
C {lab_pin.sym} 460 -160 0 1 {name=l2 sig_type=std_logic lab=binary[1:0]}
C {lab_pin.sym} 740 -160 0 0 {name=l3 sig_type=std_logic lab=binary[1]}
C {lab_pin.sym} 740 -140 0 0 {name=l4 sig_type=std_logic lab=binary[0]}
