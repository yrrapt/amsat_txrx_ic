v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 400 -420 400 -320 { lab=#net1}
N 160 -420 400 -420 { lab=#net1}
N 0 -420 -0 -250 { lab=#net1}
N 0 -190 0 -0 { lab=GND}
N 550 -210 680 -210 { lab=in_n}
N 550 -230 680 -230 { lab=in_p}
N 400 -120 400 -0 { lab=GND}
N 160 -60 160 0 { lab=GND}
N 160 -180 160 -120 { lab=#net2}
N 160 -180 250 -180 { lab=#net2}
N 160 -420 160 -380 { lab=#net1}
N 160 -320 160 -260 { lab=#net3}
N 160 -260 250 -260 { lab=#net3}
N 830 -120 830 -0 { lab=GND}
N 640 -420 830 -420 { lab=#net1}
N 640 -280 680 -280 { lab=#net4}
N 640 -320 640 -280 { lab=#net4}
N 640 -420 640 -380 { lab=#net1}
N 830 -420 830 -320 { lab=#net1}
N 160 0 400 -0 { lab=GND}
N 0 -0 160 0 { lab=GND}
N 0 -420 160 -420 { lab=#net1}
N 400 -0 830 -0 { lab=GND}
N 400 -420 640 -420 { lab=#net1}
N 1180 -320 1180 -150 { lab=#net5}
N 1420 -320 1420 -150 { lab=#net6}
N 1420 -420 1420 -380 { lab=#net1}
N 1180 -420 1420 -420 { lab=#net1}
N 1180 -420 1180 -380 { lab=#net1}
N 1180 -120 1200 -120 { lab=GND}
N 1200 -120 1200 0 { lab=GND}
N 1180 -90 1180 0 { lab=GND}
N 1420 -90 1420 0 { lab=GND}
N 1400 -120 1420 -120 { lab=GND}
N 1400 -120 1400 -10 { lab=GND}
N 1400 -10 1400 0 { lab=GND}
N 830 -420 1180 -420 { lab=#net1}
N 830 -0 1420 0 { lab=GND}
N 1420 0 1820 0 { lab=GND}
N 1620 -100 1620 0 { lab=GND}
N 1820 -100 1820 0 { lab=GND}
N 1820 -240 1820 -160 { lab=load}
N 1620 -240 1820 -240 { lab=load}
N 1620 -240 1620 -160 { lab=load}
C {lc_oscillator/lc_oscillator.sym} 400 -220 0 0 {name=x1}
C {isource.sym} 160 -350 0 0 {name=Ibias value=40u}
C {vsource.sym} 160 -90 0 0 {name=Vctl value=\{vctl\}}
C {vsource.sym} 0 -220 0 0 {name=Vdd value=\{vdd\}}
C {lab_wire.sym} 550 -230 0 1 {name=l1 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 550 -210 0 1 {name=l2 sig_type=std_logic lab=in_n}
C {gnd.sym} 0 0 0 0 {name=l3 lab=GND}
C {code.sym} 340 -670 0 0 {name=SIM only_toplevel=false value="
.param temp=27

.param vdd=1.8 vctl=0.2

*.op
.tran 1p 300n uic

*.options rshunt=1e11

K1 L1 L3 0.98
K2 L3 L2 0.98

.save all

"}
C {devices/code.sym} 500 -670 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.options wnflag=1
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {code.sym} 180 -670 0 0 {name=STDCELL_MODELS
only_toplevel=true
format="tcleval( @value )"
value="[sky130_models]"
}
C {lc_oscillator_buffer/lc_oscillator_buffer.sym} 830 -220 0 0 {name=x2}
C {lab_wire.sym} 980 -230 0 1 {name=l4 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 980 -210 0 1 {name=l5 sig_type=std_logic lab=out_n}
C {isource.sym} 640 -350 0 0 {name=Ibias1 value=100u}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1160 -120 0 0 {name=Mload_n
L=0.15
W=0.42
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {ind.sym} 1180 -350 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1440 -120 0 1 {name=Mload_n1
L=0.15
W=0.42
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {ind.sym} 1420 -350 0 0 {name=L2
m=1
value=1n
footprint=1206
device=inductor}
C {lab_wire.sym} 1140 -120 0 0 {name=l6 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 1460 -120 0 1 {name=l7 sig_type=std_logic lab=out_n}
C {ind.sym} 1620 -130 0 0 {name=L3
m=1
value=1n
footprint=1206
device=inductor}
C {res.sym} 1820 -130 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1820 -240 0 1 {name=l8 sig_type=std_logic lab=load}
