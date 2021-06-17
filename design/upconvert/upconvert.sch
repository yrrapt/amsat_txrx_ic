v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 460 -360 460 -300 { lab=out_p}
N 300 -320 300 -300 { lab=out_n}
N 460 -360 660 -360 { lab=out_p}
N 300 -320 660 -320 { lab=out_n}
N 220 -60 220 -0 { lab=vss}
N 0 0 220 -0 { lab=vss}
N 0 -100 100 -100 { lab=en}
N 0 -260 100 -260 { lab=bias_10u}
N 0 -220 100 -220 { lab=lo_p}
N 0 -200 100 -200 { lab=lo_n}
N 0 -160 100 -160 { lab=in_p}
N 0 -140 100 -140 { lab=in_n}
N 380 -640 380 -600 { lab=vdd}
N 0 -640 380 -640 { lab=vdd}
N 460 -400 460 -360 { lab=out_p}
N 300 -400 300 -320 { lab=out_n}
N 220 -640 220 -300 { lab=vdd}
C {upconvert_inductor/upconvert_inductor_lvs.sym} 380 -500 0 0 {name=x1}
C {ipin.sym} 0 -140 0 0 {name=p1 lab=in_n}
C {ipin.sym} 0 -160 0 0 {name=p2 lab=in_p}
C {ipin.sym} 0 -260 0 0 {name=p3 lab=bias_10u}
C {lab_wire.sym} 380 -400 2 0 {name=l5 sig_type=std_logic lab=vss}
C {iopin.sym} 0 0 0 1 {name=p4 lab=vss}
C {iopin.sym} 0 -640 0 1 {name=p5 lab=vdd}
C {opin.sym} 660 -360 0 0 {name=p6 lab=out_p}
C {opin.sym} 660 -320 0 0 {name=p7 lab=out_n}
C {ipin.sym} 0 -100 0 0 {name=p8 lab=en}
C {ipin.sym} 0 -200 0 0 {name=p9 lab=lo_n}
C {ipin.sym} 0 -220 0 0 {name=p10 lab=lo_p}
C {upconvert_core/upconvert_core.sym} 280 -220 0 0 {name=x2}
