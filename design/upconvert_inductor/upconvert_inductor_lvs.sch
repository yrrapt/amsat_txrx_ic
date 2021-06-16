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
N 420 -220 840 -220 { lab=com}
N 0 -220 420 -220 { lab=p1}
N 0 -360 420 -360 { lab=com}
N 420 -360 420 -220 { lab=com}
C {iopin.sym} 840 -220 0 0 {name=p1 lab=p2}
C {iopin.sym} 0 -220 0 1 {name=p2 lab=p1}
C {iopin.sym} 0 0 0 1 {name=p3 lab=sub}
C {iopin.sym} 0 -360 0 1 {name=p4 lab=com}
