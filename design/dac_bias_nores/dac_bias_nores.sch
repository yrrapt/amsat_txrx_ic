v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 500 -450 520 -450 {lab=vdd}
N 500 -690 500 -450 {lab=vdd}
N 500 -690 520 -690 {lab=vdd}
N 520 -690 520 -480 {lab=vdd}
N 520 -370 520 -90 {lab=currp_bias}
N 440 -60 480 -60 {lab=ref}
N 440 -140 440 -60 {lab=ref}
N 520 -60 540 -60 {lab=vss}
N 540 -60 540 0 {lab=vss}
N 520 0 540 0 {lab=vss}
N 520 -30 520 0 {lab=vss}
N 560 -450 590 -450 { lab=currp_bias}
N 520 -370 590 -370 { lab=currp_bias}
N 520 -420 520 -370 { lab=currp_bias}
N 590 -450 590 -370 { lab=currp_bias}
N 90 -140 90 -90 {lab=ref}
N 170 -140 170 -60 {lab=ref}
N 330 0 520 0 {lab=vss}
N 90 -30 90 0 {lab=vss}
N 70 -60 90 -60 {lab=vss}
N 70 -60 70 0 {lab=vss}
N 70 0 90 0 {lab=vss}
N 90 -140 170 -140 {lab=ref}
N 130 -60 170 -60 {lab=ref}
N 590 -450 680 -450 { lab=currp_bias}
N 0 0 70 -0 { lab=vss}
N -0 -200 90 -200 { lab=ref}
N 90 -200 90 -140 { lab=ref}
N 330 -690 500 -690 { lab=vdd}
N 230 -60 270 -60 {lab=ref}
N 230 -140 230 -60 {lab=ref}
N 310 -60 330 -60 { lab=vss}
N 330 -60 330 0 { lab=vss}
N 310 -30 310 -0 { lab=vss}
N 310 -370 330 -370 { lab=vdd}
N 330 -690 330 -370 { lab=vdd}
N 220 -370 270 -370 { lab=load_bias}
N 220 -370 220 -300 { lab=load_bias}
N 310 -340 310 -300 { lab=load_bias}
N 310 -240 310 -90 { lab=load_bias}
N 230 -140 440 -140 { lab=ref}
N 170 -140 230 -140 { lab=ref}
N 310 -0 330 0 {lab=vss}
N 90 0 310 -0 {lab=vss}
N 0 -690 330 -690 { lab=vdd}
N 220 -300 310 -300 { lab=load_bias}
N 310 -240 680 -240 { lab=load_bias}
N 310 -450 310 -400 { lab=drive_supply}
N 310 -300 310 -240 { lab=load_bias}
N 0 -450 310 -450 { lab=drive_supply}
N 560 -450 590 -450 { lab=currp_bias}
N 590 -450 700 -450 { lab=currp_bias}
N 620 -690 620 -560 { lab=vdd}
N 560 -560 590 -560 { lab=vdd}
N 560 -690 560 -560 { lab=vdd}
N 650 -560 680 -560 { lab=vdd}
N 680 -690 680 -560 { lab=vdd}
N 620 -690 680 -690 { lab=vdd}
N 620 -520 620 -450 { lab=currp_bias}
N 520 -690 620 -690 { lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 540 -450 0 1 {name=Mcurrp_b
L=8.00
W=0.55
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 0 -690 2 0 {name=p1 lab=vdda}
C {iopin.sym} 0 0 2 0 {name=p2 lab=vss}
C {opin.sym} 680 -450 0 0 {name=p7 lab=currp_bias}
C {ipin.sym} 0 -200 0 0 {name=p10 lab=ref}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 110 -60 0 1 {name=Mcurrn_r
L=8.00
W=0.42
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 500 -60 0 0 {name=Mcurrn_c
L=8.00
W=0.42
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 290 -60 0 0 {name=Mcurrn_a
L=8.00
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 290 -370 0 0 {name=Mload_r
L=0.15
W=0.42
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {opin.sym} 680 -240 0 0 {name=p4 lab=load_bias}
C {ipin.sym} 0 -450 0 0 {name=p5 lab=drive_supply}
C {sky130_stdcells/decap_8.sym} 160 -750 0 0 {name=xdecap[11:0] VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {sky130_stdcells/decap_4.sym} 410 -750 0 0 {name=xdecap2[2:0] VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {sky130_fd_pr/pfet_01v8_lvt.sym} 620 -540 1 1 {name=Mcurrp_b1
L=8.00
W=0.55
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {iopin.sym} 0 -760 2 0 {name=p3 lab=vddd}
