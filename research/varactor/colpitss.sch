v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 560 -260 610 -260 { lab=vtune}
N 410 -180 410 -160 { lab=#net1}
N 410 -160 530 -160 { lab=#net1}
N 590 -160 710 -160 { lab=#net2}
N 710 -180 710 -160 { lab=#net2}
N 310 -180 310 -160 { lab=#net1}
N 330 -160 410 -160 { lab=#net1}
N 770 -160 790 -160 { lab=#net2}
N 790 -180 790 -160 { lab=#net2}
N 790 -280 790 -240 { lab=#net3}
N 710 -280 790 -280 { lab=#net3}
N 310 -280 310 -240 { lab=#net4}
N 310 -280 410 -280 { lab=#net4}
N 250 -190 270 -190 { lab=#net1}
N 250 -190 250 -160 { lab=#net1}
N 250 -160 310 -160 { lab=#net1}
N 830 -190 850 -190 { lab=#net2}
N 850 -190 850 -160 { lab=#net2}
N 790 -160 850 -160 { lab=#net2}
N 330 -20 330 0 { lab=GND}
N 770 -20 770 0 { lab=GND}
N 410 -540 410 -420 { lab=vdd}
N 0 -540 0 -150 { lab=vdd}
N 410 -540 710 -540 { lab=vdd}
N 230 -230 270 -230 { lab=vbias}
N 830 -230 870 -230 { lab=vbias}
N 410 -280 410 -240 { lab=#net4}
N 710 -280 710 -240 { lab=#net3}
N 710 -360 710 -280 { lab=#net3}
N 410 -360 410 -280 { lab=#net4}
N 770 -160 770 -80 { lab=#net2}
N 330 -160 330 -80 { lab=#net1}
N 0 -540 410 -540 { lab=vdd}
N 710 -160 770 -160 { lab=#net2}
N 310 -160 330 -160 { lab=#net1}
N 450 -260 450 -220 { lab=GND}
N 450 -220 500 -220 { lab=GND}
N 560 -220 620 -220 { lab=GND}
N 620 -220 670 -220 { lab=GND}
N 670 -260 670 -220 { lab=GND}
N 560 -260 560 -220 { lab=GND}
N 620 0 770 0 { lab=GND}
N 500 0 620 0 { lab=GND}
N 330 0 500 0 { lab=GND}
N 160 0 330 0 { lab=GND}
N 80 0 160 0 { lab=GND}
N 0 0 80 0 { lab=GND}
N 510 -260 560 -260 { lab=GND}
N 500 -220 560 -220 { lab=GND}
N 620 -220 620 0 { lab=GND}
N 500 -220 500 0 { lab=GND}
N 160 -90 160 0 { lab=GND}
N 80 -90 80 0 { lab=GND}
N 0 -90 0 0 { lab=GND}
N 790 -280 920 -280 { lab=#net3}
N 920 -280 920 -240 { lab=#net3}
N 920 -180 920 -0 { lab=GND}
N 770 -0 920 -0 { lab=GND}
N 710 -540 710 -500 { lab=vdd}
N 710 -440 710 -420 { lab=#net5}
C {sky130_fd_pr/cap_var_hvt.sym} 480 -260 3 0 {name=C1 model=cap_var_hvt W=5.0 L=0.5 VM=1 spiceprefix=X}
C {ind.sym} 410 -390 0 0 {name=L1
m=1
value=10n
footprint=1206
device=inductor}
C {sky130_fd_pr/cap_var_hvt.sym} 640 -260 1 1 {name=C2 model=cap_var_hvt W=5.0 L=0.5 VM=1 spiceprefix=X}
C {ind.sym} 710 -390 0 0 {name=L2
m=1
value=10n
footprint=1206
device=inductor}
C {capa.sym} 410 -210 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 710 -210 0 1 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 560 -160 3 1 {name=C5
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 310 -210 0 0 {name=B1 value="I=v(1,2) > 1.8 : 0 : v(1,2) < 0.0 : 1e-3*v(1,2)"}
C {vccs.sym} 790 -210 0 1 {name=B2 value="I=v(1,2) > 1.8 : 0 : v(1,2) < 0.0 : 1e-3*v(1,2)"}
C {isource.sym} 770 -50 0 0 {name=I0 value=
1m}
C {vsource.sym} 160 -120 0 0 {name=V1 value=0.9}
C {vsource.sym} 80 -120 0 0 {name=V2 value=0.9}
C {vsource.sym} 0 -120 0 0 {name=V3 value=3}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 580 -260 0 0 {name=l2 sig_type=std_logic lab=vtune}
C {lab_wire.sym} 160 -150 0 1 {name=l3 sig_type=std_logic lab=vtune}
C {lab_wire.sym} 80 -150 0 1 {name=l4 sig_type=std_logic lab=vbias
}
C {lab_wire.sym} 830 -230 0 1 {name=l5 sig_type=std_logic lab=vbias
}
C {lab_wire.sym} 270 -230 0 0 {name=l6 sig_type=std_logic lab=vbias
}
C {lab_wire.sym} 0 -540 0 1 {name=l7 sig_type=std_logic lab=vdd
}
C {code.sym} 940 -450 0 0 {name=s1 only_toplevel=false value="
.param temp=27
.param Vctl=0.9
.lib sky130_fd_pr/models/sky130.lib.spice tt
.inc sky130_fd_pr/cells/cap_var_hvt/sky130_fd_pr__cap_var_hvt.model.spice
.tran 1ps 100000ps
"}
C {isource.sym} 330 -50 0 0 {name=I1 value=
1m}
C {isource.sym} 920 -210 0 0 {name=I2 value="pulse(0.1m 0 0 1p 1p 10p 1 0)"}
C {ammeter.sym} 710 -470 0 0 {name=Vmeas}
