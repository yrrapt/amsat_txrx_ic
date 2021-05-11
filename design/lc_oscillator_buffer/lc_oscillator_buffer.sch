v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 290 -310 470 -310 { lab=gnd}
N 0 0 50 0 { lab=gnd}
N 0 -780 290 -780 { lab=vdd}
N 180 -310 250 -310 { lab=in_n}
N 70 0 370 0 { lab=gnd}
N 290 -780 290 -710 { lab=vdd}
N 450 -780 960 -780 { lab=vdd}
N 370 -50 370 0 { lab=gnd}
N 370 -190 370 -110 { lab=#net1}
N 290 -190 370 -190 { lab=#net1}
N 290 -280 290 -190 { lab=#net1}
N 450 -410 450 -190 { lab=#net1}
N 370 -190 450 -190 { lab=#net1}
N 450 -440 470 -440 { lab=gnd}
N 470 -80 470 0 { lab=gnd}
N 290 -780 450 -780 { lab=vdd}
N 370 0 470 0 { lab=gnd}
N 470 0 1040 0 { lab=gnd}
N 960 -310 1140 -310 { lab=gnd}
N 960 -780 960 -710 { lab=vdd}
N 1040 -50 1040 0 { lab=gnd}
N 1040 -190 1040 -110 { lab=#net2}
N 960 -190 1040 -190 { lab=#net2}
N 960 -280 960 -190 { lab=#net2}
N 1120 -410 1120 -190 { lab=#net2}
N 1040 -190 1120 -190 { lab=#net2}
N 1120 -780 1120 -710 { lab=vdd}
N 1120 -440 1140 -440 { lab=gnd}
N 1140 -80 1140 0 { lab=gnd}
N 960 -780 1120 -780 { lab=vdd}
N 1040 0 1140 0 { lab=gnd}
N 1120 -510 1120 -470 { lab=out_n}
N 640 -310 920 -310 { lab=#net3}
N 690 -440 1080 -440 { lab=#net4}
N 290 -650 290 -550 { lab=#net4}
N 450 -510 450 -470 { lab=#net3}
N 640 -510 640 -310 { lab=#net3}
N 450 -510 640 -510 { lab=#net3}
N 690 -550 690 -440 { lab=#net4}
N 450 -650 450 -510 { lab=#net3}
N 290 -550 690 -550 { lab=#net4}
N 0 -440 410 -440 { lab=in_p}
N 180 -420 180 -310 { lab=in_n}
N 0 -420 180 -420 { lab=in_n}
N 450 -780 450 -710 { lab=vdd}
N 370 -80 470 -80 { lab=gnd}
N 1040 -80 1140 -80 { lab=gnd}
N 290 -80 330 -80 { lab=bias_100u_p}
N 290 -130 290 -80 { lab=bias_100u_p}
N 290 -130 960 -130 { lab=bias_100u_p}
N 960 -130 960 -80 { lab=bias_100u_p}
N 960 -80 1000 -80 { lab=bias_100u_p}
N 70 -130 70 -110 { lab=bias_100u_p}
N 70 -50 70 0 { lab=gnd}
N 50 -80 70 -80 { lab=gnd}
N 50 -80 50 0 { lab=gnd}
N 110 -80 290 -80 { lab=bias_100u_p}
N 70 -130 290 -130 { lab=bias_100u_p}
N 290 -550 290 -340 { lab=#net4}
N 470 -310 470 -80 { lab=gnd}
N 470 -440 470 -310 { lab=gnd}
N 1140 -440 1140 -310 { lab=gnd}
N 1140 -310 1140 -80 { lab=gnd}
N 50 0 70 0 { lab=gnd}
N 70 -180 70 -130 { lab=bias_100u_p}
N 960 -550 960 -340 { lab=out_p}
N 960 -550 1240 -550 { lab=out_p}
N 1120 -510 1240 -510 { lab=out_n}
N 0 -180 70 -180 { lab=bias_100u_p}
N 960 -650 960 -550 { lab=out_p}
N 1120 -650 1120 -510 { lab=out_n}
C {iopin.sym} 0 0 0 1 {name=p2 lab=gnd}
C {iopin.sym} 0 -780 0 1 {name=p4 lab=vdd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 270 -310 0 0 {name=M1
L=0.15
W=2
nf=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 430 -440 0 0 {name=M2
L=0.15
W=2
nf=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 940 -310 0 0 {name=M3
L=0.15
W=2
nf=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1100 -440 0 0 {name=M4
L=0.15
W=2
nf=1
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 290 -680 0 1 {name=R5
W=0.35
L=0.45
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 450 -680 0 0 {name=R1
W=0.35
L=0.45
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 310 -680 0 1 {name=l6 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 430 -680 0 0 {name=l7 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 350 -80 0 0 {name=M5
L=0.5
W=2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1020 -80 0 0 {name=M6
L=0.5
W=2
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 90 -80 0 1 {name=M7
L=0.5
W=2
nf=1
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 960 -680 0 1 {name=R2
W=0.35
L=0.45
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 1120 -680 0 0 {name=R3
W=0.35
L=0.45
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} 980 -680 0 1 {name=l8 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 1100 -680 0 0 {name=l9 sig_type=std_logic lab=gnd}
C {opin.sym} 1240 -550 0 0 {name=p1 lab=out_p}
C {opin.sym} 1240 -510 0 0 {name=p3 lab=out_n}
C {ipin.sym} 0 -180 0 0 {name=p5 lab=bias_100u_p}
C {ipin.sym} 0 -440 0 0 {name=p7 lab=in_p}
C {ipin.sym} 0 -420 0 0 {name=p8 lab=in_n}
