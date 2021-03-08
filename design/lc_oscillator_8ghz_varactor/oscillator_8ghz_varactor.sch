v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 130 -260 130 -240 { lab=p}
N 30 -260 130 -260 { lab=p}
N 30 -180 30 -130 { lab=p}
N 130 -20 130 0 { lab=p}
N 30 0 130 0 { lab=p}
N 170 -50 200 -50 { lab=xxx}
N 200 -130 200 -50 { lab=xxx}
N 170 -210 200 -210 { lab=xxx}
N 170 -130 200 -130 { lab=xxx}
N 30 -90 130 -90 { lab=p}
N 30 -170 130 -170 { lab=p}
N 30 -210 130 -210 { lab=p}
N 30 -130 130 -130 { lab=p}
N 30 -50 130 -50 { lab=p}
N 200 -210 200 -130 { lab=xxx}
N 30 -130 30 -100 { lab=p}
N 30 -210 30 -180 { lab=p}
N 30 -260 30 -210 { lab=p}
N 30 -100 30 -50 { lab=p}
N 30 -50 30 0 { lab=p}
N 130 -90 130 -80 { lab=p}
N 130 -100 130 -90 { lab=p}
N 130 -180 130 -160 { lab=p}
N 200 -210 240 -210 { lab=xxx}
N 0 0 30 0 { lab=p}
C {sky130_fd_pr/pfet_01v8.sym} 150 -130 2 0 {name=M1
L=5
W=5
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 150 -50 2 0 {name=M2
L=5
W=5
nf=1
mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 150 -210 2 0 {name=M3
L=5
W=5
nf=1
mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {iopin.sym} 240 -210 0 0 {name=p1 lab=m}
C {iopin.sym} 0 0 0 1 {name=p2 lab=p}
