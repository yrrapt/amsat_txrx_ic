v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 900 -210 920 -210 { lab=vss}
N 900 -210 900 0 { lab=vss}
N 1070 -120 1090 -120 { lab=vss}
N 1090 -120 1090 0 { lab=vss}
N 1240 -120 1260 -120 { lab=vss}
N 1240 -120 1240 0 { lab=vss}
N 1260 -90 1260 0 { lab=vss}
N 1070 -90 1070 0 { lab=vss}
N 1410 -210 1430 -210 { lab=vss}
N 1430 -210 1430 0 { lab=vss}
N 100 -410 120 -410 { lab=vss}
N 240 -90 240 0 { lab=vss}
N 240 -120 260 -120 { lab=vss}
N 260 -120 260 0 { lab=vss}
N 120 -250 120 0 { lab=vss}
N 240 -280 940 -280 { lab=#net1}
N 940 -280 940 -240 { lab=#net1}
N 240 -280 240 -150 { lab=#net1}
N 1390 -280 1390 -240 { lab=#net1}
N 120 -340 120 -310 { lab=#net1}
N 100 -280 100 0 { lab=vss}
N 100 -280 120 -280 { lab=vss}
N 100 -560 160 -560 { lab=en_n}
N 0 -560 20 -560 { lab=en}
N 0 -480 120 -480 { lab=bias_20u}
N 120 -480 120 -440 { lab=bias_20u}
N 1260 0 1430 0 { lab=vss}
N 1260 -520 1520 -520 { lab=out_n}
N 1070 -540 1520 -540 { lab=out_p}
N 120 -340 210 -340 { lab=#net1}
N 210 -340 210 -280 { lab=#net1}
N 660 0 900 0 { lab=vss}
N 1070 0 1090 0 { lab=vss}
N 1090 0 1240 0 { lab=vss}
N 1240 0 1260 0 { lab=vss}
N 900 0 1070 0 { lab=vss}
N 100 0 120 0 { lab=vss}
N 120 0 240 0 { lab=vss}
N 240 0 260 0 { lab=vss}
N 210 -280 240 -280 { lab=#net1}
N 0 0 100 0 { lab=vss}
N 100 -410 100 -280 { lab=vss}
N 120 -380 120 -340 { lab=#net1}
N 160 -280 210 -280 { lab=#net1}
N 940 -280 1390 -280 { lab=#net1}
N 940 -180 940 -120 { lab=g_p}
N 1390 -180 1390 -120 { lab=g_n}
N 940 -120 1030 -120 { lab=g_p}
N 1300 -120 1390 -120 { lab=g_n}
N 860 -120 940 -120 { lab=g_p}
N 1390 -120 1470 -120 { lab=g_n}
N 640 -70 660 -70 { lab=vss}
N 640 -160 660 -160 { lab=vss}
N 640 -130 640 -100 { lab=#net2}
N 660 -160 660 -70 { lab=vss}
N 640 -40 640 0 { lab=vss}
N 660 -70 660 0 { lab=vss}
N 640 -220 640 -190 { lab=cas_p}
N 740 -220 740 -120 { lab=cas_p}
N 660 -360 660 -160 { lab=vss}
N 640 -330 640 -220 { lab=cas_p}
N 490 -70 600 -70 { lab=#net3}
N 1670 -70 1690 -70 { lab=vss}
N 1670 -160 1690 -160 { lab=vss}
N 1690 -130 1690 -100 { lab=#net4}
N 1670 -160 1670 -70 { lab=vss}
N 1690 -40 1690 0 { lab=vss}
N 1670 -70 1670 0 { lab=vss}
N 1690 -220 1690 -190 { lab=cas_n}
N 1590 -220 1590 -120 { lab=cas_n}
N 1670 -360 1670 -160 { lab=vss}
N 1690 -330 1690 -220 { lab=cas_n}
N 1670 0 1690 -0 { lab=vss}
N 380 -70 430 -70 { lab=vss}
N 1730 -70 1950 -70 { lab=#net5}
N 2010 -70 2060 -70 { lab=vss}
N 260 0 640 0 { lab=vss}
N 640 0 660 0 { lab=vss}
N 1430 0 1670 0 { lab=vss}
N 520 -170 520 -70 { lab=#net3}
N 520 -280 520 -230 { lab=#net1}
N 500 -200 500 0 { lab=vss}
N 1390 -280 1860 -280 { lab=#net1}
N 1860 -280 1860 -230 { lab=#net1}
N 1690 -0 1860 -0 { lab=vss}
N 1880 -200 1890 -200 { lab=vss}
N 1890 -200 1890 0 { lab=vss}
N 1860 0 1890 0 { lab=vss}
N 1860 -170 1860 -70 { lab=#net5}
N 640 -220 740 -220 { lab=cas_p}
N 1590 -220 1690 -220 { lab=cas_n}
N 380 -70 380 -0 { lab=vss}
N 2060 -70 2060 -0 { lab=vss}
N 1890 -0 2060 -0 { lab=vss}
N 1070 -540 1070 -210 { lab=out_p}
N 1260 -520 1260 -210 { lab=out_n}
N 1260 -210 1260 -150 { lab=out_n}
N 1070 -210 1070 -150 { lab=out_p}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1050 -120 0 0 {name=Mdrive_p
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1280 -120 0 1 {name=Mdrive_n
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
C {opin.sym} 1520 -540 0 0 {name=p6 lab=out_p}
C {opin.sym} 1520 -520 0 0 {name=p7 lab=out_n}
C {ipin.sym} 1530 -120 0 1 {name=p1 lab=in_n}
C {ipin.sym} 800 -120 0 0 {name=p2 lab=in_p}
C {sky130_fd_pr/cap_mim_m3_1.sym} 830 -120 3 1 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=4 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1500 -120 1 0 {name=C2 model=cap_mim_m3_1 W=20 L=20 MF=4 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po.sym} 940 -210 0 0 {name=Rbias_p
W=0.35
L=3.5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1390 -210 0 1 {name=Rbias_n
W=0.35
L=3.5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 620 -70 0 0 {name=Mdrive_p2
L=0.15
W=10
nf=2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 620 -160 0 0 {name=Mdrive_p3
L=0.15
W=10
nf=2
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
C {lab_pin.sym} 600 -160 0 0 {name=l5 sig_type=std_logic lab=bias}
C {sky130_fd_pr/res_xhigh_po.sym} 640 -360 0 1 {name=Rbias_p1
W=0.60
L=0.35
model=res_xhigh_po
spiceprefix=X
mult=1}
C {lab_pin.sym} 640 -390 0 0 {name=l1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 640 -240 0 0 {name=l2 sig_type=std_logic lab=cas_p}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1710 -70 0 1 {name=Mdrive_p1
L=0.15
W=10
nf=2
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1710 -160 0 1 {name=Mdrive_p4
L=0.15
W=10
nf=2
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
C {lab_pin.sym} 1730 -160 0 1 {name=l3 sig_type=std_logic lab=bias}
C {sky130_fd_pr/res_xhigh_po.sym} 1690 -360 0 0 {name=Rbias_p2
W=0.60
L=0.35
model=res_xhigh_po
spiceprefix=X
mult=1}
C {lab_pin.sym} 1690 -390 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1690 -240 0 1 {name=l8 sig_type=std_logic lab=cas_n}
C {sky130_fd_pr/cap_mim_m3_1.sym} 460 -70 3 1 {name=C3 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 1980 -70 1 0 {name=C4 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po.sym} 520 -200 0 0 {name=Rbias_p3
W=0.35
L=7.00
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1860 -200 0 1 {name=Rbias_n1
W=0.35
L=7.00
model=res_xhigh_po
spiceprefix=X
mult=1}
C {vsource.sym} 30 -30 0 0 {name=V1 value=1.2}
C {lab_pin.sym} 30 -60 0 0 {name=l9 sig_type=std_logic lab=bias}
C {lab_pin.sym} 970 -120 3 0 {name=l10 sig_type=std_logic lab=g_p}
C {lab_pin.sym} 1360 -120 3 0 {name=l11 sig_type=std_logic lab=g_n}
