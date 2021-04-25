v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {ASITIC>  sympoly name=test:rad=80:w=6:s=6:n=4:sides=8:xorg=250:yorg=250

ASITIC>  pix test 8

maxL = 937.50, maxT =  0.86, maxW =  0.86 (lambda = 18750.00, delta =  1.08)
Performing Analysis at 8 GHz
Generating capacitance matrix (117x117)...
Generating inductance matrix (273x273).....
Pi Model at f=8 GHz:  Q = 7.744 , 7.727 , 10.56 
L = 2.056 nH R = 7.365 
Cs1 = 62.02 fF Rs1 = 16.03 
Cs2 = 62.31 fF Rs2 = 15.88      Est. Resonance = 14.14 GHz} 510 -180 0 0 0.2 0.2 {}
N 180 -220 240 -220 { lab=#net1}
N 360 -220 360 -180 { lab=p2}
N 300 -220 360 -220 { lab=p2}
N 60 -220 60 -180 { lab=p1}
N 60 -220 120 -220 { lab=p1}
N 60 -120 60 -100 { lab=#net2}
N 360 -120 360 -100 { lab=#net3}
N 100 -280 180 -280 { lab=p1}
N 100 -280 100 -220 { lab=p1}
N 320 -280 320 -220 { lab=p2}
N 240 -280 320 -280 { lab=p2}
N 60 -40 60 0 { lab=sub}
N 360 -40 360 0 { lab=sub}
N 0 -0 360 -0 { lab=sub}
N 360 -220 420 -220 { lab=p2}
N 0 -220 50 -220 { lab=p1}
N 50 -220 60 -220 { lab=p1}
C {ind.sym} 150 -220 1 0 {name=L1
m=1
value=1.028n
footprint=1206
device=inductor}
C {capa.sym} 60 -150 0 0 {name=C1
m=1
value=62.02f}
C {res.sym} 60 -70 0 0 {name=R1
value=16.03
m=1}
C {capa.sym} 210 -280 3 0 {name=C2
m=1
value=0.1f}
C {capa.sym} 360 -150 0 0 {name=C3
m=1
value=62.31f}
C {res.sym} 360 -70 0 0 {name=R2
value=15.88
m=1}
C {res.sym} 270 -220 1 0 {name=R3
value=3.6825
m=1}
C {iopin.sym} 420 -220 0 0 {name=p1 lab=p2}
C {iopin.sym} 0 -220 0 1 {name=p2 lab=p1}
C {iopin.sym} 0 0 0 1 {name=p3 lab=sub}
