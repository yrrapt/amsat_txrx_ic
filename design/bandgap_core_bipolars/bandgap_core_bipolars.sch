v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -60 20 -60 {lab=gnd}
N 0 -60 0 0 {lab=gnd}
N 0 0 60 0 {lab=gnd}
N 60 -30 60 0 {lab=gnd}
N 300 -30 300 0 {lab=gnd}
N 300 0 360 0 {lab=gnd}
N 360 -60 360 0 {lab=gnd}
N 340 -60 360 -60 {lab=gnd}
N 240 0 300 0 {lab=gnd}
N 60 -60 120 -60 { lab=gnd}
N 240 -60 300 -60 { lab=gnd}
N 240 -60 240 0 { lab=gnd}
N 120 0 240 0 {lab=gnd}
N 120 -60 120 0 { lab=gnd}
N 60 0 120 0 {lab=gnd}
N 60 -140 60 -90 { lab=q1}
N -0 -140 60 -140 { lab=q1}
N 300 -170 300 -90 { lab=q1}
N -0 -170 300 -170 { lab=q1}
C {sky130_fd_pr/pnp_05v5.sym} 40 -60 0 0 {name=Q1
model="pnp_05v5_W3p40L3p40 m=1"
spiceprefix=X}
C {sky130_fd_pr/pnp_05v5.sym} 320 -60 0 1 {name=Q8
m=1
model="pnp_05v5_W3p40L3p40 m=8"
spiceprefix=X
}
C {iopin.sym} 0 0 0 1 {name=p2 lab=gnd}
C {iopin.sym} 0 -140 0 1 {name=p1 lab=q1}
C {iopin.sym} 0 -170 0 1 {name=p3 lab=q8}
