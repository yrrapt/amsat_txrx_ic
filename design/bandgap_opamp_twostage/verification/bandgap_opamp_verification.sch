v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 430 -110 470 -110 { lab=#net1}
N 430 -210 430 -110 { lab=#net1}
N 430 -210 530 -210 { lab=#net1}
N 530 -110 810 -110 { lab=ac}
N 810 -230 810 -110 { lab=ac}
N 710 -230 810 -230 { lab=ac}
N 630 -170 630 0 { lab=GND}
N -120 0 630 0 { lab=GND}
N -120 -190 -120 0 { lab=GND}
N -120 -450 -120 -250 { lab=#net2}
N -120 -450 630 -450 { lab=#net2}
N 630 -450 630 -290 { lab=#net2}
N 600 -330 600 -290 { lab=#net3}
N 520 -330 600 -330 { lab=#net3}
N 520 -350 520 -330 { lab=#net3}
N 520 -450 520 -410 { lab=#net2}
N 170 -250 170 -180 { lab=#net4}
N 170 -250 530 -250 { lab=#net4}
N 170 -120 170 0 { lab=GND}
N 380 -110 430 -110 { lab=#net1}
N 240 -110 320 -110 { lab=#net5}
N 240 -110 240 -70 { lab=#net5}
N 240 -10 240 0 { lab=GND}
N 520 -380 550 -380 { lab=#net2}
N 550 -450 550 -380 { lab=#net2}
N 130 -380 480 -380 { lab=#net6}
N 40 -440 40 -430 { lab=#net2}
N 40 -450 40 -440 { lab=#net2}
N -80 -380 -50 -380 { lab=#net2}
N -80 -450 -80 -380 { lab=#net2}
N 40 -330 40 -0 { lab=GND}
C {vsource.sym} -120 -220 0 0 {name=Vdd value=\{vdd\}}
C {bandgap_opamp/bandgap_opamp.sym} 630 -230 0 0 {name=xdut}
C {vsource.sym} 170 -150 0 0 {name=V2 value="dc=0.7 ac=0"}
C {gnd.sym} -120 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 710 -230 0 1 {name=l2 sig_type=std_logic lab=ac}
C {code.sym} 710 -400 0 0 {name=sim only_toplevel=false value="
.lib "/usr/local/share/sky130_fd_pr/models/sky130.lib.spice" tt
.param vdd=1.8

.param temp=27
.temp 27

.save all
.option savecurrents

"}
C {vsource.sym} 240 -40 0 0 {name=V3 value="dc=0 ac=1"}
C {res_ac.sym} 350 -110 1 0 {name=R1
value=1000Meg
footprint=1206
device=resistor
m=1
ac=1u}
C {res_ac.sym} 500 -110 1 0 {name=R2
value=1u
footprint=1206
device=resistor
m=1
ac=1000Meg}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 500 -380 0 0 {name=Mcurr_op_ctat
L=8
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {bandgap_bmr/bandgap_bmr.sym} 40 -380 0 0 {name=xbmr}
