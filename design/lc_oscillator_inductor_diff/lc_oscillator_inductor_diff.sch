v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 230 -140 330 -140 { lab=sub}
N 0 -60 200 -60 { lab=positive}
N 200 -110 200 -60 { lab=positive}
N 360 -60 560 -60 { lab=neg}
N 360 -110 360 -60 { lab=neg}
N 10 -240 360 -240 { lab=common}
N 360 -240 360 -170 { lab=common}
N 200 -240 200 -170 { lab=common}
N 280 -140 280 0 { lab=sub}
N 0 0 280 0 { lab=sub}
C {lc_oscillator_inductor/lc_oscillator_inductor.sym} 360 -140 0 0 {name=xlneg}
C {lc_oscillator_inductor/lc_oscillator_inductor.sym} 200 -140 0 1 {name=xlpos}
C {iopin.sym} 10 -240 0 1 {name=p1 lab=common}
C {iopin.sym} 0 -60 0 1 {name=p2 lab=positive}
C {iopin.sym} 0 0 0 1 {name=p3 lab=sub}
C {iopin.sym} 560 -60 0 0 {name=p4 lab=negative}
