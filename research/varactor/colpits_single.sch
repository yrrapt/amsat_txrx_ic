v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 550 -180 550 -160 { lab=#net1}
N 450 -180 450 -160 { lab=#net1}
N 450 -280 450 -240 { lab=osc}
N 450 -280 550 -280 { lab=osc}
N 390 -190 410 -190 { lab=#net1}
N 390 -190 390 -160 { lab=#net1}
N 390 -160 450 -160 { lab=#net1}
N 0 -540 0 -150 { lab=vdd}
N 370 -230 410 -230 { lab=vbias}
N 550 -260 550 -240 { lab=osc}
N 550 -330 550 -280 { lab=osc}
N 0 -540 550 -540 { lab=vdd}
N 450 -160 550 -160 { lab=#net1}
N 160 0 550 0 { lab=GND}
N 80 0 160 0 { lab=GND}
N 0 0 80 0 { lab=GND}
N 160 -90 160 0 { lab=GND}
N 80 -90 80 0 { lab=GND}
N 0 -90 0 0 { lab=GND}
N 550 -540 550 -510 { lab=vdd}
N 550 -450 550 -420 { lab=#net2}
N 550 -50 550 0 { lab=GND}
N 550 -150 550 -110 { lab=#net1}
N 550 -260 640 -260 { lab=osc}
N 640 -260 640 -240 { lab=osc}
N 550 -150 640 -150 { lab=#net1}
N 640 -180 640 -150 { lab=#net1}
N 640 -540 640 -420 { lab=vdd}
N 550 -540 640 -540 { lab=vdd}
N 550 -330 640 -330 { lab=osc}
N 640 -360 640 -330 { lab=osc}
N 260 -450 260 -430 { lab=vtune}
N 160 -450 260 -450 { lab=vtune}
N 160 -370 160 -340 { lab=vtune}
N 260 -250 260 -230 { lab=vtune}
N 160 -230 260 -230 { lab=vtune}
N 300 -280 330 -280 { lab=osc}
N 330 -340 330 -280 { lab=osc}
N 300 -400 330 -400 { lab=osc}
N 300 -340 330 -340 { lab=osc}
N 160 -310 260 -310 { lab=vtune}
N 160 -370 260 -370 { lab=vtune}
N 160 -400 260 -400 { lab=vtune}
N 160 -340 260 -340 { lab=vtune}
N 160 -280 260 -280 { lab=vtune}
N 550 -280 550 -260 { lab=osc}
N 550 -160 550 -150 { lab=#net1}
N 330 -400 330 -340 { lab=osc}
N 550 -360 550 -330 { lab=osc}
N 160 -280 160 -230 { lab=vtune}
N 160 -340 160 -310 { lab=vtune}
N 160 -400 160 -370 { lab=vtune}
N 160 -450 160 -400 { lab=vtune}
N 160 -310 160 -280 { lab=vtune}
N 160 -260 160 -150 {}
N 330 -280 450 -280 {}
C {ind.sym} 550 -390 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {capa.sym} 550 -210 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 450 -210 0 0 {name=G1 value=50m}
C {vsource.sym} 160 -120 0 0 {name=V1 value=0}
C {vsource.sym} 80 -120 0 0 {name=V2 value=0.9}
C {vsource.sym} 0 -120 0 0 {name=V3 value=1.8}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 160 -150 0 1 {name=l3 sig_type=std_logic lab=vtune}
C {lab_wire.sym} 80 -150 0 1 {name=l4 sig_type=std_logic lab=vbias
}
C {lab_wire.sym} 410 -230 0 0 {name=l6 sig_type=std_logic lab=vbias
}
C {lab_wire.sym} 0 -540 0 1 {name=l7 sig_type=std_logic lab=vdd
}
C {code.sym} 740 -540 0 0 {name=s1 only_toplevel=false value="
.param temp=27
.param Vctl=0.2
.lib sky130_fd_pr/models/sky130.lib.spice tt
.inc sky130_fd_pr/cells/cap_var_hvt/sky130_fd_pr__cap_var_hvt.model.spice
.tran 1ps 40ns uic
.ic v(osc)=0.9
"}
C {ammeter.sym} 550 -480 0 0 {name=Vmeas}
C {capa.sym} 550 -80 0 0 {name=C1
m=1
value=4p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 640 -210 0 0 {name=B4 value="I=0.001m*sgn(v(osc)-1.8)*pow(v(osc)-1.8,8)"}
C {lab_pin.sym} 550 -290 0 1 {name=l2 sig_type=std_logic lab=osc}
C {res.sym} 640 -390 0 0 {name=R1
value=10Meg
footprint=1206
device=resistor
m=1}
C {sky130_fd_pr/pfet_01v8.sym} 280 -340 2 0 {name=M1
L=5
W=5
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 280 -280 2 0 {name=M2
L=5
W=5
nf=1
mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 280 -400 2 0 {name=M3
L=5
W=5
nf=1
mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
