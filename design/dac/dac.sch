v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 930 -210 1010 -210 { lab=out_p}
N 930 -190 1000 -190 { lab=out_n}
N 1000 -190 1010 -190 { lab=out_n}
N 0 0 780 0 { lab=vss}
N 780 -100 780 0 { lab=vss}
N 0 -400 780 -400 { lab=vdda}
N 780 -400 780 -320 { lab=vdda}
N 0 -420 860 -420 { lab=vddd}
N 860 -420 860 -320 { lab=vddd}
N 600 -280 630 -280 { lab=bias_10u_p}
N 600 -360 600 -280 { lab=bias_10u_p}
N -0 -360 600 -360 { lab=bias_10u_p}
C {dac_analogue/dac_analogue.sym} 780 -200 0 0 {name=xanalogue}
C {iopin.sym} 0 0 0 1 {name=p1 lab=vss}
C {iopin.sym} 0 -400 0 1 {name=p2 lab=vdda}
C {iopin.sym} 0 -420 0 1 {name=p3 lab=vddd}
C {ipin.sym} 0 -360 0 0 {name=p4 lab=bias_10u_p}
C {ipin.sym} 0 -280 0 0 {name=p5 lab=clk}
C {ipin.sym} 0 -260 0 0 {name=p6 lab=data[9:0]}
C {opin.sym} 1010 -210 0 0 {name=p7 lab=out_p}
C {opin.sym} 1010 -190 0 0 {name=p8 lab=out_n}
C {ipin.sym} 0 -240 0 0 {name=p9 lab=en}
C {ipin.sym} 0 -220 0 0 {name=p10 lab=randomise}
