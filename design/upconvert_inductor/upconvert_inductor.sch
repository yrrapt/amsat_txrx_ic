v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {ASITIC>  SYMSQ NAME=a:LEN=150:W=4:S=6:ILEN=13:N=6:METAL=met5:METAL2=met4:XORG=200:YORG=200 

ASITIC>  pix a 8

maxL = 937.50, maxT =  0.86, maxW =  0.86 (lambda = 18750.00, delta =  1.08)
Performing Analysis at 8 GHz
Generating capacitance matrix (96x96)...
Generating inductance matrix (240x240).....
Pi Model at f=8 GHz:  Q = 2.874 , 2.891 , 7.294 
L = 3.54 nH R = 12.45 
Cs1 = 76.04 fF Rs1 = 15.75 
Cs2 = 75.83 fF Rs2 = 15.83      Est. Resonance = 9.71 GHz} 550 -540 0 0 0.2 0.2 {}
N 180 -220 240 -220 { lab=#net1}
N 360 -220 360 -180 { lab=com}
N 320 -220 360 -220 { lab=com}
N 60 -220 60 -180 { lab=p1}
N 100 -220 120 -220 { lab=p1}
N 60 -120 60 -100 { lab=#net2}
N 360 -120 360 -100 { lab=#net3}
N 100 -280 180 -280 { lab=p1}
N 100 -280 100 -220 { lab=p1}
N 320 -280 320 -220 { lab=com}
N 240 -280 320 -280 { lab=com}
N 60 -40 60 0 { lab=sub}
N 360 -40 360 0 { lab=sub}
N 60 0 360 -0 { lab=sub}
N 420 -220 480 -220 { lab=com}
N 0 -220 60 -220 { lab=p1}
N 600 -220 660 -220 { lab=#net4}
N 480 -220 480 -180 { lab=com}
N 520 -220 540 -220 { lab=com}
N 780 -220 780 -180 { lab=p2}
N 740 -220 780 -220 { lab=p2}
N 780 -120 780 -100 { lab=#net5}
N 480 -120 480 -100 { lab=#net6}
N 660 -280 740 -280 { lab=p2}
N 740 -280 740 -220 { lab=p2}
N 520 -280 520 -220 { lab=com}
N 520 -280 600 -280 { lab=com}
N 780 -40 780 0 { lab=sub}
N 480 -40 480 0 { lab=sub}
N 780 -220 840 -220 { lab=p2}
N 60 -220 100 -220 { lab=p1}
N 300 -220 320 -220 { lab=com}
N 0 -0 60 0 { lab=sub}
N 720 -220 740 -220 { lab=p2}
N 480 -220 520 -220 { lab=com}
N 480 0 780 0 { lab=sub}
N 0 -360 420 -360 { lab=com}
N 420 -360 420 -220 { lab=com}
N 360 0 480 0 { lab=sub}
N 360 -220 420 -220 { lab=com}
C {ind.sym} 150 -220 1 0 {name=L1
m=1
value=1.77n
footprint=1206
device=inductor}
C {capa.sym} 60 -150 0 0 {name=C1
m=1
value=37.915f}
C {res.sym} 60 -70 0 0 {name=R1
value=15.75
m=1}
C {capa.sym} 210 -280 3 0 {name=C2
m=1
value=152f}
C {res.sym} 270 -220 1 0 {name=R3
value=6.225
m=1}
C {iopin.sym} 840 -220 0 0 {name=p1 lab=p2}
C {iopin.sym} 0 -220 0 1 {name=p2 lab=p1}
C {iopin.sym} 0 0 0 1 {name=p3 lab=sub}
C {ind.sym} 690 -220 3 1 {name=L2
m=1
value=1.77n
footprint=1206
device=inductor}
C {capa.sym} 780 -150 0 1 {name=C4
m=1
value=37.915f}
C {res.sym} 780 -70 0 1 {name=R4
value=15.75
m=1}
C {capa.sym} 630 -280 1 1 {name=C5
m=1
value=152f}
C {res.sym} 570 -220 3 1 {name=R6
value=6.225
m=1}
C {iopin.sym} 0 -360 0 1 {name=p4 lab=com}
C {capa.sym} 360 -150 0 1 {name=C3
m=1
value=37.915f}
C {res.sym} 360 -70 0 1 {name=R2
value=15.75
m=1}
C {capa.sym} 480 -150 0 1 {name=C6
m=1
value=37.915f}
C {res.sym} 480 -70 0 1 {name=R5
value=15.75
m=1}
