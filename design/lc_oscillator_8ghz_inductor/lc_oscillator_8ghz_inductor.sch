v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 -0 320 0 { lab=xxx}
N 320 -40 320 0 { lab=xxx}
N 40 -40 40 0 { lab=xxx}
N 40 -160 40 -100 { lab=xxx}
N 40 -160 100 -160 { lab=xxx}
N 160 -160 200 -160 { lab=#net1}
N 260 -160 360 -160 { lab=#net2}
N 320 -160 320 -100 { lab=#net2}
N -0 -160 40 -160 { lab=xxx}
N 210 -240 280 -240 {}
N 280 -240 280 -160 {}
N 80 -240 150 -240 {}
N 80 -240 80 -160 {}
C {ind.sym} 130 -160 1 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {capa.sym} 180 -240 1 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 230 -160 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 40 -70 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 320 -70 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} 0 -160 0 1 {name=p1 lab=xxx}
C {iopin.sym} 0 0 0 1 {name=p2 lab=xxx}
C {iopin.sym} 360 -160 0 0 {name=p3 lab=xxx}
