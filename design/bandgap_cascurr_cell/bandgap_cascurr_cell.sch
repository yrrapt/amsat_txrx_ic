v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -190 120 -190 {lab=vdd}
N 120 -260 120 -190 {lab=vdd}
N 100 -260 120 -260 {lab=vdd}
N 100 -260 100 -220 {lab=vdd}
N 0 -190 60 -190 {lab=curr}
N 0 -80 60 -80 {lab=cas}
N 100 -80 120 -80 {lab=vdd}
N 120 -190 120 -80 {lab=vdd}
N 100 0 150 0 {lab=out}
N 0 -260 100 -260 {lab=vdd}
N 100 -50 100 0 { lab=out}
N 100 -160 100 -110 { lab=#net1}
C {iopin.sym} 0 -260 2 0 {name=p1 lab=vdd}
C {ipin.sym} 0 -190 0 0 {name=p2 lab=curr}
C {ipin.sym} 0 -80 0 0 {name=p3 lab=cas}
C {opin.sym} 150 0 0 0 {name=p4 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 80 -190 0 0 {name=Mcurr
L=8
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -80 0 0 {name=Mcas
L=0.35
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
