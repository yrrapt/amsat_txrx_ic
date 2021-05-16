v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 700 -450 720 -450 {lab=vdda}
N 700 -690 700 -450 {lab=vdda}
N 700 -690 720 -690 {lab=vdda}
N 720 -690 720 -480 {lab=vdda}
N 720 -370 720 -90 {lab=currp_bias}
N 640 -60 680 -60 {lab=load_bias}
N 640 -140 640 -60 {lab=load_bias}
N 720 -60 740 -60 {lab=vss}
N 740 -60 740 0 {lab=vss}
N 720 0 740 0 {lab=vss}
N 720 -30 720 0 {lab=vss}
N 760 -450 790 -450 { lab=currp_bias}
N 720 -370 790 -370 { lab=currp_bias}
N 720 -420 720 -370 { lab=currp_bias}
N 790 -450 790 -370 { lab=currp_bias}
N 290 -140 290 -90 {lab=load_bias}
N 370 -140 370 -60 {lab=load_bias}
N 530 0 720 0 {lab=vss}
N 290 -30 290 0 {lab=vss}
N 270 -60 290 -60 {lab=vss}
N 270 -60 270 0 {lab=vss}
N 270 0 290 0 {lab=vss}
N 290 -140 370 -140 {lab=load_bias}
N 330 -60 370 -60 {lab=load_bias}
N 790 -450 1130 -450 { lab=currp_bias}
N 0 0 270 0 { lab=vss}
N 0 -270 290 -270 { lab=ref}
N 530 -690 700 -690 { lab=vdda}
N 430 -60 470 -60 {lab=load_bias}
N 430 -140 430 -60 {lab=load_bias}
N 510 -60 530 -60 { lab=vss}
N 530 -60 530 0 { lab=vss}
N 510 -30 510 0 { lab=vss}
N 510 -370 530 -370 { lab=vdda}
N 530 -690 530 -370 { lab=vdda}
N 420 -370 470 -370 { lab=load_bias}
N 420 -370 420 -300 { lab=load_bias}
N 510 -340 510 -300 { lab=load_bias}
N 510 -240 510 -90 { lab=load_bias}
N 430 -140 640 -140 { lab=load_bias}
N 370 -140 430 -140 { lab=load_bias}
N 510 0 530 0 {lab=vss}
N 290 0 510 0 {lab=vss}
N 0 -690 530 -690 { lab=vdda}
N 420 -300 510 -300 { lab=load_bias}
N 510 -240 1130 -240 { lab=load_bias}
N 510 -450 510 -400 { lab=drive_supply}
N 510 -300 510 -240 { lab=load_bias}
N 0 -450 510 -450 { lab=drive_supply}
N 820 -690 820 -560 { lab=vdda}
N 720 -690 820 -690 { lab=vdda}
N 760 -560 790 -560 { lab=vdda}
N 760 -690 760 -560 { lab=vdda}
N 850 -560 880 -560 { lab=vdda}
N 880 -690 880 -560 { lab=vdda}
N 820 -690 880 -690 { lab=vdda}
N 820 -520 820 -450 { lab=currp_bias}
N 290 -170 290 -140 { lab=load_bias}
N 270 -200 290 -200 { lab=vss}
N 270 -200 270 -60 { lab=vss}
N 290 -270 290 -230 { lab=ref}
N 180 -540 180 -450 { lab=drive_supply}
N 180 -690 180 -600 { lab=vdda}
N 90 -120 90 -90 { lab=load_bias}
N 90 -120 290 -120 { lab=load_bias}
N 90 -60 110 -60 { lab=vss}
N 110 -60 110 0 { lab=vss}
N 90 -30 90 0 { lab=vss}
N 1080 -690 1080 -640 { lab=vdda}
N 880 -690 1080 -690 { lab=vdda}
N 950 -520 970 -520 { lab=vdda}
N 950 -690 950 -520 { lab=vdda}
N 970 -690 970 -550 { lab=vdda}
N 1060 -610 1080 -610 { lab=vdda}
N 1060 -690 1060 -610 { lab=vdda}
N 970 -490 970 -240 { lab=load_bias}
N 1080 -580 1080 -450 { lab=currp_bias}
N 180 -570 200 -570 { lab=vdda}
N 200 -690 200 -570 { lab=vdda}
N 640 -140 1130 -140 { lab=load_bias}
C {sky130_stdcells/decap_8.sym} 160 -750 0 0 {name=xdecap[11:0] VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {sky130_stdcells/decap_4.sym} 410 -750 0 0 {name=xdecap2[2:0] VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {iopin.sym} 0 -760 2 0 {name=p3 lab=vddd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 740 -450 0 1 {name=Mcurrp_b
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
C {opin.sym} 1130 -450 0 0 {name=p7 lab=currp_bias}
C {ipin.sym} 0 -270 0 0 {name=p10 lab=ref}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -60 0 1 {name=Mcurrn_r
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 700 -60 0 0 {name=Mcurrn_c
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 490 -60 0 0 {name=Mcurrn_a
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -370 0 0 {name=Mload_r
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
C {opin.sym} 1130 -240 0 0 {name=p4 lab=load_bias}
C {ipin.sym} 0 -450 0 0 {name=p5 lab=drive_supply}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 820 -540 1 1 {name=Mcap
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 310 -200 0 1 {name=Men4
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
C {ipin.sym} 0 -340 0 0 {name=p6 lab=en}
C {sky130_fd_pr/pfet_01v8.sym} 160 -570 0 0 {name=Men1
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
C {lab_pin.sym} 140 -570 0 0 {name=l3 sig_type=std_logic lab=en}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 70 -60 0 0 {name=Men5
L=0.15
W=0.42
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
C {sky130_fd_pr/pfet_01v8.sym} 990 -520 0 1 {name=Men2
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
C {sky130_fd_pr/pfet_01v8.sym} 1100 -610 0 1 {name=Men3
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
C {lab_pin.sym} 1010 -520 0 1 {name=l4 sig_type=std_logic lab=en}
C {lab_pin.sym} 1120 -610 0 1 {name=l5 sig_type=std_logic lab=en}
C {lab_pin.sym} 330 -200 0 1 {name=l6 sig_type=std_logic lab=en}
C {lab_pin.sym} 50 -60 0 0 {name=l7 sig_type=std_logic lab=en_n}
C {ipin.sym} 0 -320 0 0 {name=p8 lab=en_n}
C {opin.sym} 1130 -140 0 0 {name=p9 lab=diff_bias}
