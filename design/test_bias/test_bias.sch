v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -240 340 -240 { lab=vdd}
N 340 -180 360 -180 { lab=vdd}
N 360 -240 360 -180 { lab=vdd}
N 340 -240 340 -210 { lab=vdd}
N 100 -150 100 -100 { lab=in}
N 160 -180 300 -180 { lab=in}
N 100 -240 100 -210 { lab=vdd}
N 160 -180 160 -100 { lab=in}
N 340 -240 360 -240 { lab=vdd}
N 80 -240 100 -240 { lab=vdd}
N 140 -180 160 -180 { lab=in}
N 100 -100 160 -100 { lab=in}
N 0 -240 80 -240 { lab=vdd}
N 80 -180 100 -180 { lab=vdd}
N 80 -240 80 -180 { lab=vdd}
N 0 0 100 0 { lab=in}
N 100 -100 100 0 { lab=in}
N 340 -150 340 0 { lab=out}
N 340 0 420 0 { lab=out}
N 540 -180 560 -180 { lab=#net1}
N 560 -240 560 -180 { lab=#net1}
N 540 -240 540 -210 { lab=#net1}
N 540 -240 560 -240 { lab=#net1}
N 360 -240 540 -240 {}
N 540 -150 540 -120 {}
N 540 -120 560 -120 {}
N 560 -180 560 -120 {}
N 160 -100 480 -100 {}
N 480 -180 480 -100 {}
N 480 -180 500 -180 {}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 120 -180 0 1 {name=Mcurrp_r
L=1.00
W=2.00
nf=1
mult=100
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 320 -180 0 0 {name=Mcurrp_a
L=1.00
W=2.00
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 0 -240 0 1 {name=p5 lab=vdd}
C {ipin.sym} 0 0 0 0 {name=p1 lab=in}
C {opin.sym} 420 0 0 0 {name=p2 lab=out}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 520 -180 0 0 {name=Mcurrp_a1
L=1.00
W=2.00
nf=1
mult=7
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
