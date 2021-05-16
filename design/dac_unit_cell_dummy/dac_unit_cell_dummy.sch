v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Bias with 0.25 uA in each half} 390 -950 0 0 0.2 0.2 {}
N 0 -930 90 -930 {lab=vdda}
N 0 0 300 0 {lab=vss}
N 0 -790 170 -790 {lab=curr_bias}
N 90 -860 110 -860 {lab=vdda}
N 90 -930 90 -860 {lab=vdda}
N 90 -930 110 -930 {lab=vdda}
N 110 -930 110 -890 {lab=vdda}
N 860 -860 880 -860 {lab=vdda}
N 880 -930 880 -860 {lab=vdda}
N 860 -930 880 -930 {lab=vdda}
N 860 -930 860 -890 {lab=vdda}
N 150 -860 170 -860 {lab=curr_bias}
N 800 -860 820 -860 {lab=curr_bias}
N 300 -160 300 -120 { lab=vss}
N 300 -90 320 -90 { lab=vss}
N 300 -60 300 0 { lab=vss}
N 800 -860 800 -790 { lab=curr_bias}
N 170 -790 800 -790 { lab=curr_bias}
N 170 -860 170 -790 { lab=curr_bias}
N 680 -930 860 -930 { lab=vdda}
N 300 0 320 0 { lab=vss}
N 210 -90 260 -90 { lab=drive_bias}
N 320 -90 320 0 { lab=vss}
N 540 -60 540 0 { lab=vss}
N 520 0 540 0 { lab=vss}
N 520 -90 540 -90 { lab=vss}
N 520 -90 520 0 { lab=vss}
N 110 -930 280 -930 { lab=vdda}
N 280 -930 680 -930 { lab=vdda}
N 320 -160 320 -90 { lab=vss}
N 540 -160 540 -120 { lab=vss}
N 520 -160 540 -160 { lab=vss}
N 580 -90 660 -90 { lab=drive_bias}
N 520 -160 520 -90 { lab=vss}
N 660 -210 660 -90 { lab=drive_bias}
N 320 0 520 0 { lab=vss}
N 660 -90 740 -90 { lab=drive_bias}
N 780 -160 780 -120 { lab=vss}
N 780 -160 800 -160 { lab=vss}
N 800 -90 800 0 { lab=vss}
N 780 -0 800 0 { lab=vss}
N 780 -60 780 -0 { lab=vss}
N 780 -90 800 -90 { lab=vss}
N 860 -810 880 -810 { lab=vdda}
N 90 -810 110 -810 { lab=vdda}
N 540 0 780 -0 { lab=vss}
N 800 -160 800 -90 { lab=vss}
N 860 -830 860 -810 { lab=vdda}
N 880 -860 880 -810 { lab=vdda}
N 90 -860 90 -810 { lab=vdda}
N 110 -830 110 -810 { lab=vdda}
N 300 -160 320 -160 { lab=vss}
N 210 -210 210 -90 { lab=drive_bias}
N 210 -210 660 -210 { lab=drive_bias}
N 0 -90 210 -90 { lab=drive_bias}
N 510 -680 530 -680 { lab=vdda}
N 530 -930 530 -680 { lab=vdda}
N 480 -930 480 -680 { lab=vdda}
N 430 -680 450 -680 { lab=vdda}
N 430 -930 430 -680 { lab=vdda}
N 670 -680 690 -680 { lab=vdda}
N 690 -930 690 -680 { lab=vdda}
N 640 -930 640 -680 { lab=vdda}
N 590 -680 610 -680 { lab=vdda}
N 590 -930 590 -680 { lab=vdda}
N 340 -680 360 -680 { lab=vdda}
N 360 -930 360 -680 { lab=vdda}
N 310 -930 310 -680 { lab=vdda}
N 260 -680 280 -680 { lab=vdda}
N 260 -930 260 -680 { lab=vdda}
N 0 -580 310 -580 { lab=drive_supply}
N 310 -640 310 -580 { lab=drive_supply}
N 0 -530 480 -530 { lab=drive_load}
N 480 -640 480 -530 { lab=drive_load}
N -0 -480 640 -480 { lab=cas_bias}
N 640 -640 640 -480 { lab=cas_bias}
C {devices/iopin.sym} 0 -930 2 0 {name=p1 lab=vdda}
C {devices/iopin.sym} 0 0 2 0 {name=p2 lab=vss}
C {devices/ipin.sym} 0 -790 0 0 {name=p3 lab=curr_bias}
C {devices/ipin.sym} 0 -580 0 0 {name=p6 lab=drive_supply}
C {devices/ipin.sym} 0 -480 0 0 {name=p9 lab=cas_bias}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 130 -860 0 1 {name=Mcurr_p
L=8.00
W=0.55
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 840 -860 0 0 {name=Mcurr_n
L=8.00
W=0.55
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/ipin.sym} 0 -90 0 0 {name=p10 lab=drive_bias}
C {devices/ipin.sym} 0 -530 0 0 {name=p11 lab=drive_load}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 280 -90 0 0 {name=Mdrive_curr
L=8.00
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -90 0 1 {name=Mdrive_currcap
L=8.00
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
C {devices/iopin.sym} 0 -1030 2 0 {name=p13 lab=vddd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 760 -90 0 0 {name=Mdrive_currcap1
L=2.00
W=4.00
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
C {sky130_fd_pr/pfet_01v8_lvt.sym} 310 -660 3 0 {name=Mcurr_n1
L=1
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 480 -660 3 0 {name=Mcurr_n2
L=1
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 640 -660 3 0 {name=Mcurr_n3
L=1
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_stdcells/decap_8.sym} 250 -1010 0 0 {name=x1[3:0] VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
C {sky130_stdcells/decap_4.sym} 530 -1010 0 0 {name=x1 VGND=vss VNB=vss VPB=vddd VPWR=vddd prefix=sky130_fd_sc_hs__ }
