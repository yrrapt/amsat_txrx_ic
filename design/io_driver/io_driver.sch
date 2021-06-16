v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 560 -210 580 -210 { lab=vss}
N 560 -210 560 0 { lab=vss}
N 730 -120 750 -120 { lab=vss}
N 750 -120 750 0 { lab=vss}
N 900 -120 920 -120 { lab=vss}
N 900 -120 900 0 { lab=vss}
N 920 -90 920 0 { lab=vss}
N 730 -90 730 0 { lab=vss}
N 1070 -210 1090 -210 { lab=vss}
N 1090 -210 1090 0 { lab=vss}
N 100 -410 120 -410 { lab=vss}
N 240 -90 240 0 { lab=vss}
N 240 -120 260 -120 { lab=vss}
N 260 -120 260 0 { lab=vss}
N 120 -250 120 0 { lab=vss}
N 240 -280 600 -280 { lab=#net1}
N 600 -280 600 -240 { lab=#net1}
N 240 -280 240 -150 { lab=#net1}
N 1050 -280 1050 -240 { lab=#net1}
N 120 -340 120 -310 { lab=#net1}
N 100 -280 100 0 { lab=vss}
N 100 -280 120 -280 { lab=vss}
N 100 -560 160 -560 { lab=en_n}
N 0 -560 20 -560 { lab=en}
N 0 -480 120 -480 { lab=bias_20u}
N 120 -480 120 -440 { lab=bias_20u}
N 920 0 1090 0 { lab=vss}
N 920 -520 1180 -520 { lab=out_n}
N 730 -540 1180 -540 { lab=out_p}
N 120 -340 210 -340 { lab=#net1}
N 210 -340 210 -280 { lab=#net1}
N 730 0 750 0 { lab=vss}
N 750 0 900 0 { lab=vss}
N 900 0 920 0 { lab=vss}
N 560 0 730 0 { lab=vss}
N 100 0 120 0 { lab=vss}
N 120 0 240 0 { lab=vss}
N 240 0 260 0 { lab=vss}
N 210 -280 240 -280 { lab=#net1}
N 0 0 100 0 { lab=vss}
N 100 -410 100 -280 { lab=vss}
N 120 -380 120 -340 { lab=#net1}
N 160 -280 210 -280 { lab=#net1}
N 600 -280 1050 -280 { lab=#net1}
N 600 -180 600 -120 { lab=g_p}
N 1050 -180 1050 -120 { lab=g_n}
N 600 -120 690 -120 { lab=g_p}
N 960 -120 1050 -120 { lab=g_n}
N 520 -120 600 -120 { lab=g_p}
N 1050 -120 1130 -120 { lab=g_n}
N 260 0 560 0 { lab=vss}
N 730 -540 730 -150 { lab=out_p}
N 920 -520 920 -150 { lab=out_n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 710 -120 0 0 {name=Mdrive_p
L=0.15
W=50
nf=10
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 940 -120 0 1 {name=Mdrive_n
L=0.15
W=50
nf=10
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -280 0 1 {name=Mref
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -410 0 1 {name=Men_pass
L=0.15
W=1.00
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
C {lab_pin.sym} 160 -410 0 1 {name=l7 sig_type=std_logic lab=en_buf}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 220 -120 0 0 {name=Men_a
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
C {lab_pin.sym} 200 -120 0 0 {name=l6 sig_type=std_logic lab=en_n}
C {sky130_stdcells/inv_1.sym} 60 -560 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__ }
C {lab_wire.sym} 100 -560 0 1 {name=l13 sig_type=std_logic lab=en_n}
C {lab_wire.sym} 240 -560 0 1 {name=l14 sig_type=std_logic lab=en_buf}
C {ipin.sym} 0 -560 0 0 {name=p8 lab=en}
C {sky130_stdcells/inv_1.sym} 200 -560 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__ }
C {ipin.sym} 0 -480 0 0 {name=p3 lab=bias_20u}
C {iopin.sym} 0 0 0 1 {name=p4 lab=vss}
C {iopin.sym} 0 -660 0 1 {name=p5 lab=vdd}
C {opin.sym} 1180 -540 0 0 {name=p6 lab=out_p}
C {opin.sym} 1180 -520 0 0 {name=p7 lab=out_n}
C {ipin.sym} 1190 -120 0 1 {name=p1 lab=in_n}
C {ipin.sym} 460 -120 0 0 {name=p2 lab=in_p}
C {sky130_fd_pr/cap_mim_m3_1.sym} 490 -120 3 1 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1160 -120 1 0 {name=C2 model=cap_mim_m3_1 W=20 L=20 MF=4 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -210 0 0 {name=Rbias_p
W=0.35
L=3.5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1050 -210 0 1 {name=Rbias_n
W=0.35
L=3.5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {lab_pin.sym} 630 -120 3 0 {name=l10 sig_type=std_logic lab=g_p}
C {lab_pin.sym} 1020 -120 3 0 {name=l11 sig_type=std_logic lab=g_n}
