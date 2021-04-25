v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 90 -200 90 -120 { lab=p}
N 40 -200 90 -200 { lab=p}
N 40 -200 40 -120 { lab=p}
N 40 -120 60 -120 { lab=p}
N 120 -120 140 -120 { lab=p}
N 140 -200 140 -120 { lab=p}
N 90 -200 140 -200 { lab=p}
N 0 -200 40 -200 { lab=p}
N 90 -80 90 0 { lab=xxx}
N 90 0 140 -0 { lab=xxx}
C {sky130_fd_pr/nfet_01v8.sym} 90 -100 1 1 {name=Mvaractor
L=4
W=4
nf=3 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 0 -200 0 1 {name=p1 lab=p}
C {iopin.sym} 140 0 0 0 {name=p2 lab=m}
