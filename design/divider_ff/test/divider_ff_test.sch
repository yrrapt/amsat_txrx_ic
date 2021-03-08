v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 480 -60 540 -60 {lab=in_p}
N 480 -220 480 -60 {lab=in_p}
N 480 -380 540 -380 {lab=in_p}
N 580 -350 580 -220 {lab=in_n}
N 580 -220 580 -90 {lab=in_n}
N 600 -60 600 0 {lab=0}
N 580 0 600 0 {lab=0}
N 580 -30 580 0 {lab=0}
N 580 -60 600 -60 {lab=0}
N 580 -440 580 -410 {lab=#net1}
N 580 -440 600 -440 {lab=#net1}
N 580 -380 600 -380 {lab=#net1}
N 600 -440 600 -380 {lab=#net1}
N 340 -220 480 -220 {lab=in_p}
N 360 -440 580 -440 {lab=#net1}
N 360 0 580 0 {lab=0}
N 480 -240 850 -240 {lab=in_p}
N 580 -220 850 -220 {lab=in_n}
N 950 -400 950 -290 {lab=#net2}
N 600 -440 950 -440 {lab=#net1}
N 950 -170 950 0 {lab=0}
N 600 0 950 0 {lab=0}
N 240 -60 300 -60 {lab=in_vs}
N 240 -220 240 -60 {lab=in_vs}
N 240 -380 300 -380 {lab=in_vs}
N 340 -350 340 -220 {lab=in_p}
N 340 -220 340 -90 {lab=in_p}
N 360 -60 360 0 {lab=0}
N 340 0 360 0 {lab=0}
N 340 -30 340 0 {lab=0}
N 340 -60 360 -60 {lab=0}
N 340 -440 340 -410 {lab=#net1}
N 340 -440 360 -440 {lab=#net1}
N 340 -380 360 -380 {lab=#net1}
N 360 -440 360 -380 {lab=#net1}
N 1420 -60 1480 -60 {lab=out_p}
N 1420 -240 1420 -60 {lab=out_p}
N 1420 -380 1480 -380 {lab=out_p}
N 1520 -350 1520 -90 {lab=#net3}
N 1540 -60 1540 0 {lab=0}
N 1520 0 1540 0 {lab=0}
N 1520 -30 1520 0 {lab=0}
N 1520 -60 1540 -60 {lab=0}
N 1520 -440 1520 -410 {lab=#net1}
N 1520 -440 1540 -440 {lab=#net1}
N 1520 -380 1540 -380 {lab=#net1}
N 1540 -440 1540 -380 {lab=#net1}
N 1300 -440 1520 -440 {lab=#net1}
N 1300 0 1520 0 {lab=0}
N 1180 -60 1240 -60 {lab=out_n}
N 1180 -220 1180 -60 {lab=out_n}
N 1180 -380 1240 -380 {lab=out_n}
N 1280 -350 1280 -90 {lab=#net4}
N 1300 -60 1300 0 {lab=0}
N 1280 0 1300 0 {lab=0}
N 1280 -30 1280 0 {lab=0}
N 1280 -60 1300 -60 {lab=0}
N 1280 -440 1280 -410 {lab=#net1}
N 1280 -440 1300 -440 {lab=#net1}
N 1280 -380 1300 -380 {lab=#net1}
N 1300 -440 1300 -380 {lab=#net1}
N 950 -440 1280 -440 {lab=#net1}
N 950 0 1280 0 {lab=0}
N 1050 -220 1180 -220 {lab=out_n}
N 1050 -240 1420 -240 {lab=out_p}
N 480 -240 480 -220 {lab=in_p}
N 480 -380 480 -240 {lab=in_p}
N 1420 -380 1420 -240 {lab=out_p}
N 1180 -380 1180 -220 {lab=out_n}
N 130 -90 130 0 {lab=0}
N 130 0 340 0 {lab=0}
N 130 -220 130 -150 {lab=in_vs}
N 130 -220 240 -220 {lab=in_vs}
N -0 -440 -0 -260 { lab=#net1}
N -0 -440 340 -440 { lab=#net1}
N -0 -200 -0 0 { lab=0}
N -0 0 130 -0 { lab=0}
N 790 -400 790 -360 { lab=#net2}
N 790 -400 950 -400 { lab=#net2}
N 240 -380 240 -220 {lab=in_vs}
N 790 -300 790 0 { lab=0}
C {pmos4.sym} 560 -380 0 0 {name=XMinvap1 model=sky130_fd_pr__pfet_01v8 w=3 l=0.15 m=1}
C {nmos4.sym} 560 -60 0 0 {name=XMinvan2 model=sky130_fd_pr__nfet_01v8 w=1 l=0.15 m=1}
C {vsource.sym} 130 -120 0 0 {name=Vin value="pulse(0 vdd 0 \{0.001/frequency\} \{0.001/frequency\} \{0.5/frequency\} \{1.0/frequency\} 0)"}
C {pmos4.sym} 320 -380 0 0 {name=XMinvap2 model=sky130_fd_pr__pfet_01v8 w=3 l=0.15 m=1}
C {nmos4.sym} 320 -60 0 0 {name=XMinvan3 model=sky130_fd_pr__nfet_01v8 w=1 l=0.15 m=1}
C {pmos4.sym} 1260 -380 0 0 {name=XMinvap3 model=sky130_fd_pr__pfet_01v8 w=3 l=0.15 m=1}
C {pmos4.sym} 1500 -380 0 0 {name=XMinvap6 model=sky130_fd_pr__pfet_01v8 w=3 l=0.15 m=1}
C {nmos4.sym} 1500 -60 0 0 {name=XMinvan7 model=sky130_fd_pr__nfet_01v8 w=1 l=0.15 m=1}
C {pmos4.sym} 1260 -380 0 0 {name=XMinvap8 model=sky130_fd_pr__pfet_01v8 w=3 l=0.15 m=1}
C {nmos4.sym} 1260 -60 0 0 {name=XMinvan9 model=sky130_fd_pr__nfet_01v8 w=1 l=0.15 m=1}
C {lab_wire.sym} 130 -220 0 1 {name=l1 sig_type=std_logic lab=in_vs}
C {divider_ff/divider_ff.sym} 950 -230 0 0 {name=x1}
C {vsource.sym} 0 -230 0 0 {name=Vddtb value=vdd}
C {lab_wire.sym} 0 0 0 1 {name=l2 sig_type=std_logic lab=0}
C {lab_wire.sym} 670 -240 0 1 {name=l3 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 670 -220 0 1 {name=l4 sig_type=std_logic lab=in_n}
C {lab_wire.sym} 1100 -240 0 1 {name=l5 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 1100 -220 0 1 {name=l6 sig_type=std_logic lab=out_n}
C {code_shown.sym} 0 -570 0 0 {name=SPICE only_toplevel=false value=".lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice ss
.temp 125
.tran 0.01n 10n
.param vdd=1.8
.param frequency=2e9
.save all"}
C {vsource.sym} 790 -330 0 0 {name=Vdd value=vdd}
