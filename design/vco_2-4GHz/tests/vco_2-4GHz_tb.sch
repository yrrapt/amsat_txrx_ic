v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -440 -600 -440 -300 {lab=#net1}
N -440 -240 -440 0 {lab=0}
N -130 -0 330 0 {lab=0}
N -360 -270 -360 -150 {lab=vctl}
N -360 -270 -260 -270 {lab=vctl}
N -360 -90 -360 0 {lab=0}
N 0 -290 80 -290 {lab=Qn}
N 0 -310 80 -310 {lab=Qp}
N 0 -190 230 -190 {lab=FBn}
N 0 -210 230 -210 {lab=FBp}
N 330 -140 330 0 {lab=0}
N 430 -190 440 -190 {lab=0}
N 440 -190 440 0 {lab=0}
N 330 0 440 0 {lab=0}
N 430 -210 440 -210 {lab=0}
N 440 -210 440 -190 {lab=0}
N -130 -150 -130 -0 {lab=0}
N 0 -340 80 -340 {lab=In}
N 0 -360 80 -360 {lab=Ip}
N -440 -600 -130 -600 {lab=#net1}
N -440 0 -360 0 {lab=0}
N -360 0 -130 -0 {lab=0}
N 0 -240 80 -240 {lab=NCn}
N 0 -260 80 -260 {lab=NCp}
N 330 -600 330 -260 {lab=#net1}
N -130 -600 330 -600 {lab=#net1}
N -130 -470 -130 -400 { lab=#net2}
N -130 -500 -110 -500 { lab=#net1}
N -110 -600 -110 -500 { lab=#net1}
N -130 -600 -130 -530 { lab=#net1}
N -590 -500 -570 -500 { lab=#net1}
N -570 -600 -570 -500 { lab=#net1}
N -590 -600 -590 -530 { lab=#net1}
N -590 -600 -570 -600 { lab=#net1}
N -570 -600 -430 -600 { lab=#net1}
N -590 -470 -590 -390 { lab=#net3}
N -590 -330 -590 -0 { lab=0}
N -590 -0 -440 -0 { lab=0}
N 80 -310 160 -310 { lab=Qp}
N 160 -360 160 -310 { lab=Qp}
N 160 -360 220 -360 { lab=Qp}
N 220 -360 220 -330 { lab=Qp}
N 80 -290 160 -290 { lab=Qn}
N 160 -290 160 -240 { lab=Qn}
N 160 -240 220 -240 { lab=Qn}
N 220 -270 220 -240 { lab=Qn}
C {vsource.sym} -360 -120 0 0 {name=V1 value="vctl"}
C {vsource.sym} -440 -270 0 0 {name=Vdd value=vdd}
C {lab_wire.sym} 40 -290 0 1 {name=l1 sig_type=std_logic lab=Qn}
C {lab_wire.sym} 40 -310 0 1 {name=l2 sig_type=std_logic lab=Qp}
C {lab_wire.sym} 40 -190 0 1 {name=l3 sig_type=std_logic lab=FBn}
C {lab_wire.sym} 40 -210 0 1 {name=l4 sig_type=std_logic lab=FBp}
C {lab_wire.sym} -440 0 0 1 {name=l5 sig_type=std_logic lab=0}
C {code.sym} 370 -420 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.param temp=27
.temp 27

*.save v(ip) v(in) v(vctl) i(vdd)

.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aM04W5p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aM02W3p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aM02W1p65L0p15.spice

.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM04W5p00L0p35.spice
.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM04W3p00L0p35.spice
.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM04W5p00L0p35.spice
.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM04W5p00L0p50.spice
.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM02W3p00L0p35.spice
.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM02W5p00L0p35.spice

.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W1p65L0p15.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W3p00L0p15.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W5p00L0p15.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W3p00L0p25.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W5p00L0p25.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aF04W2p00L0p15.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aF04W3p00L0p15.spice
.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W1p65L0p25.spice

.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aF06W1p65L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aF04W1p65L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aF02W1p65L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aF02W0p84L0p15.spice


.lib sky130_fd_pr/models/sky130.lib.spice tt
*.include sky130_fd_pr/models/corners/tt.spice


.tran 0.01n 10n uic
.param vdd=1.8
.param vctl=0.2
"}
C {vco_2-4GHz/vco_2-4GHz.sym} -130 -270 0 0 {name=xvco}
C {lab_wire.sym} 40 -340 0 1 {name=l8 sig_type=std_logic lab=In}
C {lab_wire.sym} 40 -360 0 1 {name=l9 sig_type=std_logic lab=Ip}
C {noconn.sym} 80 -360 2 0 {name=l10}
C {noconn.sym} 80 -340 2 0 {name=l11}
C {lab_wire.sym} 40 -240 0 1 {name=l12 sig_type=std_logic lab=NCn}
C {lab_wire.sym} 40 -260 0 1 {name=l13 sig_type=std_logic lab=NCp}
C {noconn.sym} 80 -260 2 0 {name=l14}
C {noconn.sym} 80 -240 2 0 {name=l15}
C {lab_wire.sym} -360 -270 0 1 {name=l16 sig_type=std_logic lab=vctl}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -150 -500 0 0 {name=M1
L=0.35
W=7
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=64
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -610 -500 0 0 {name=M2
L=0.35
W=7
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=64
model=pfet_01v8_lvt
spiceprefix=X
}
C {ammeter.sym} -590 -360 0 0 {name=Vmeas}
C {lab_wire.sym} -630 -500 0 0 {name=l17 sig_type=std_logic lab=0}
C {lab_wire.sym} -170 -500 0 0 {name=l18 sig_type=std_logic lab=0}
C {res.sym} 220 -300 0 0 {name=R1
value=100
footprint=1206
device=resistor
m=1}
