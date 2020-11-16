v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 -130 270 -130 {lab=source}
N 270 -250 270 -130 {lab=source}
N 90 -250 90 -220 {lab=source}
N 110 -250 170 -250 {lab=source}
N 250 -250 250 -160 {lab=source}
N 170 -250 250 -250 {lab=source}
N 0 -190 50 -190 {lab=gate_n}
N 0 -130 210 -130 {lab=gate_n}
N 250 -250 270 -250 { lab=source}
N 90 -190 110 -190 { lab=source}
N 110 -250 110 -190 { lab=source}
N 90 -250 110 -250 {lab=source}
N 90 -160 90 0 {lab=drain_n}
N 170 -320 170 -250 { lab=source}
N 90 0 420 0 { lab=drain_n}
N 0 -320 170 -320 {lab=source}
N 250 -100 250 -60 { lab=drain_p}
N 250 -60 420 -60 { lab=drain_p}
N 420 -130 440 -130 {lab=source}
N 340 -130 380 -130 { lab=source}
N 340 -250 340 -130 { lab=source}
N 270 -250 340 -250 { lab=source}
N 440 -250 440 -130 { lab=source}
N 340 -250 440 -250 { lab=source}
N 420 -100 420 -90 { lab=source}
N 420 -90 440 -90 { lab=source}
N 440 -130 440 -90 { lab=source}
N 420 -250 420 -160 { lab=source}
C {ipin.sym} 0 -190 0 0 {name=p1 lab=gate_n}
C {ipin.sym} 0 -130 0 0 {name=p2 lab=gate_p}
C {opin.sym} 420 0 0 0 {name=p4 lab=drain_n}
C {iopin.sym} 0 -320 0 1 {name=p5 lab=source}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 230 -130 0 0 {name=Mdiff_n
L=1
W=7
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 70 -190 0 0 {name=Mdiff_p
L=1
W=7
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {opin.sym} 420 -60 0 0 {name=p3 lab=drain_p}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 400 -130 0 0 {name=Mdum_diff
L=1
W=7
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
