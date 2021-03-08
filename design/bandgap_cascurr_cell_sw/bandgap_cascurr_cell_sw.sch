v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -110 40 -110 {lab=vdd}
N -80 -10 -20 -10 {lab=curr}
N -80 70 -20 70 {lab=cas}
N 70 270 70 320 {lab=out}
N 70 320 120 320 {lab=out}
N -80 -110 20 -110 {lab=vdd}
N -70 240 -10 240 {lab=sw}
N 70 -110 70 -80 { lab=vdd}
N 40 -110 70 -110 { lab=vdd}
N 70 140 70 210 { lab=#net1}
N -10 240 30 240 { lab=sw}
N 70 240 140 240 { lab=vdd}
N 140 -110 140 240 { lab=vdd}
N 70 -110 140 -110 { lab=vdd}
C {iopin.sym} -80 -110 2 0 {name=p1 lab=vdd}
C {ipin.sym} -80 -10 0 0 {name=p2 lab=curr}
C {ipin.sym} -80 70 0 0 {name=p3 lab=cas}
C {opin.sym} 120 320 0 0 {name=p4 lab=out}
C {ipin.sym} -70 240 0 0 {name=p3 lab=sw}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 70 30 0 0 {name=x1 m=1}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 50 240 0 0 {name=Msw
L=0.35
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
