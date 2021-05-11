v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 430 -560 430 -490 { lab=ind_p}
N 410 -460 430 -460 { lab=vss}
N 410 -80 410 0 { lab=vss}
N 430 0 910 0 { lab=vss}
N 910 -460 930 -460 { lab=vss}
N 930 -80 930 0 { lab=vss}
N 910 0 930 0 { lab=vss}
N 910 -50 910 0 { lab=vss}
N 910 -80 930 -80 { lab=vss}
N 410 -80 430 -80 { lab=vss}
N 430 -50 430 0 { lab=vss}
N 910 -560 910 -490 { lab=ind_n}
N 910 -310 910 -260 { lab=#net1}
N 430 -310 430 -260 { lab=#net2}
N 470 -230 550 -230 { lab=#net1}
N 550 -230 790 -310 { lab=#net1}
N 790 -310 910 -310 { lab=#net1}
N 790 -230 870 -230 { lab=#net2}
N 550 -310 790 -230 { lab=#net2}
N 430 -310 550 -310 { lab=#net2}
N 430 -170 430 -110 { lab=#net3}
N 910 -170 910 -110 { lab=#net3}
N 670 -80 870 -80 { lab=bias}
N 670 -140 670 -80 { lab=bias}
N 180 -140 670 -140 { lab=bias}
N 100 -140 100 -110 { lab=bias}
N 140 -80 180 -80 { lab=bias}
N 180 -140 180 -80 { lab=bias}
N 80 -80 100 -80 { lab=vss}
N 80 -80 80 0 { lab=vss}
N 100 0 410 0 { lab=vss}
N 100 -50 100 0 { lab=vss}
N 650 -390 690 -390 { lab=#net4}
N 790 -390 910 -390 { lab=#net1}
N 550 -390 590 -390 { lab=#net2}
N 550 -430 550 -390 { lab=#net2}
N 550 -560 550 -490 { lab=ind_p}
N 430 -560 550 -560 { lab=ind_p}
N 790 -560 790 -490 { lab=ind_n}
N 790 -560 910 -560 { lab=ind_n}
N 790 -430 790 -390 { lab=#net1}
N 470 -460 510 -460 { lab=vdd}
N 510 -520 510 -460 { lab=vdd}
N 830 -460 870 -460 { lab=vdd}
N 830 -520 830 -460 { lab=vdd}
N 550 -560 590 -560 { lab=ind_p}
N 670 -560 690 -560 { lab=vctl}
N 750 -560 790 -560 { lab=ind_n}
N 0 0 80 0 { lab=vss}
N 100 -200 100 -140 { lab=bias}
N 0 -200 100 -200 { lab=bias}
N 0 -620 670 -620 { lab=vctl}
N 670 -620 670 -560 { lab=vctl}
N 410 -230 430 -230 { lab=vss}
N 910 -230 930 -230 { lab=vss}
N 930 -230 930 -80 { lab=vss}
N 410 -230 410 -80 { lab=vss}
N 410 0 430 0 { lab=vss}
N 910 -390 910 -310 { lab=#net1}
N 430 -390 430 -310 { lab=#net2}
N 470 -80 670 -80 { lab=bias}
N 100 -140 180 -140 { lab=bias}
N 80 0 100 0 { lab=vss}
N 910 -430 910 -390 { lab=#net1}
N 430 -430 430 -390 { lab=#net2}
N 430 -390 550 -390 { lab=#net2}
N 430 -780 430 -560 { lab=ind_p}
N 910 -620 910 -560 { lab=ind_n}
N 750 -390 790 -390 { lab=#net1}
N 510 -520 830 -520 { lab=vdd}
N 650 -560 670 -560 { lab=vctl}
N 410 -460 410 -230 { lab=vss}
N 930 -460 930 -230 { lab=vss}
N 910 -620 1210 -620 { lab=ind_n}
N 430 -780 1210 -780 { lab=ind_p}
N 430 -170 910 -170 { lab=#net3}
N 430 -200 430 -170 { lab=#net3}
N 910 -200 910 -170 { lab=#net3}
N 0 -520 510 -520 { lab=vdd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 120 -80 0 1 {name=M2
L=0.5
W=5
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 890 -80 0 0 {name=M1
L=0.5
W=5
nf=1
mult=32
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 450 -80 0 1 {name=M3
L=0.5
W=5
nf=1
mult=32
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} 550 -460 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 790 -460 0 1 {name=C2 model=cap_mim_m3_1 W=5 L=5 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 620 -390 3 1 {name=C3 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 720 -390 1 0 {name=C4 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 450 -460 0 1 {name=M4
L=0.15
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 890 -460 0 0 {name=M5
L=0.15
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 450 -230 0 1 {name=M6
L=0.15
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 890 -230 0 0 {name=M7
L=0.15
W=40
nf=8
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {lc_oscillator_varactor/lc_oscillator_varactor.sym} 620 -560 1 1 {name=x1}
C {lc_oscillator_varactor/lc_oscillator_varactor.sym} 720 -560 3 0 {name=x2}
C {ipin.sym} 0 -620 0 0 {name=p1 lab=vctl}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {ipin.sym} 0 -200 0 0 {name=p3 lab=bias_20u_p}
C {iopin.sym} 0 -520 0 1 {name=p4 lab=vdd}
C {iopin.sym} 1210 -620 0 0 {name=p7 lab=ind_n}
C {iopin.sym} 1210 -780 0 0 {name=p8 lab=ind_p}
