v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 0 50 0 { lab=vss}
N 0 -510 420 -510 { lab=vdd}
N 340 -380 380 -380 { lab=in_p}
N 440 0 580 0 { lab=vss}
N 420 -510 420 -410 { lab=vdd}
N 580 -50 580 0 { lab=vss}
N 420 -280 420 -110 { lab=out_p}
N 580 -240 580 -110 { lab=out_n}
N 580 -450 600 -450 { lab=vss}
N 600 -80 600 0 { lab=vss}
N 420 -510 580 -510 { lab=vdd}
N 580 0 600 0 { lab=vss}
N 0 -450 540 -450 { lab=in_n}
N 340 -430 340 -380 { lab=in_p}
N 0 -430 340 -430 { lab=in_p}
N 580 -80 600 -80 { lab=vss}
N 140 -140 140 -80 { lab=curr_bias}
N 70 -140 70 -110 { lab=curr_bias}
N 70 -50 70 0 { lab=vss}
N 50 -80 70 -80 { lab=vss}
N 50 -80 50 0 { lab=vss}
N 110 -80 140 -80 { lab=curr_bias}
N 70 -140 140 -140 { lab=curr_bias}
N 600 -450 600 -80 { lab=vss}
N 50 0 70 0 { lab=vss}
N 940 -280 970 -280 { lab=out_p}
N 940 -240 970 -240 { lab=out_n}
N 0 -250 70 -250 { lab=bias_20u}
N 580 -510 580 -480 { lab=vdd}
N 420 -80 440 -80 { lab=vss}
N 440 -80 440 0 { lab=vss}
N 420 -50 420 0 { lab=vss}
N 350 -80 380 -80 { lab=curr_bias}
N 350 -140 350 -80 { lab=curr_bias}
N 510 -80 540 -80 { lab=curr_bias}
N 510 -140 510 -80 { lab=curr_bias}
N 440 -380 440 -80 { lab=vss}
N 420 -350 420 -280 { lab=out_p}
N 580 -420 580 -240 { lab=out_n}
N 420 0 440 0 { lab=vss}
N 280 0 420 0 { lab=vss}
N 260 -140 350 -140 { lab=curr_bias}
N 350 -140 510 -140 { lab=curr_bias}
N 420 -380 440 -380 { lab=vss}
N 100 -340 160 -340 { lab=en_n}
N 0 -340 20 -340 { lab=en}
N 70 -170 70 -140 { lab=curr_bias}
N 50 -200 70 -200 { lab=vss}
N 260 -30 260 0 { lab=vss}
N 260 -60 280 -60 { lab=vss}
N 280 -60 280 0 { lab=vss}
N 260 -140 260 -90 { lab=curr_bias}
N 70 0 260 0 { lab=vss}
N 260 0 280 0 { lab=vss}
N 140 -140 260 -140 { lab=curr_bias}
N 50 -200 50 -80 { lab=vss}
N 70 -250 70 -230 { lab=bias_20u}
N 940 -30 940 0 { lab=vss}
N 940 -60 960 -60 { lab=vss}
N 960 -60 960 0 { lab=vss}
N 940 0 960 0 { lab=vss}
N 940 -510 940 -480 { lab=vdd}
N 940 -450 960 -450 { lab=vdd}
N 960 -510 960 -450 { lab=vdd}
N 940 -240 940 -90 { lab=out_n}
N 940 -420 940 -280 { lab=out_p}
N 750 0 940 0 { lab=vss}
N 940 -510 960 -510 { lab=vdd}
N 670 -80 690 -80 { lab=curr_bias}
N 670 -140 670 -80 { lab=curr_bias}
N 510 -140 670 -140 { lab=curr_bias}
N 730 -140 730 -110 { lab=vss}
N 730 -140 750 -140 { lab=vss}
N 750 -80 750 0 { lab=vss}
N 730 -50 730 0 { lab=vss}
N 730 -80 750 -80 { lab=vss}
N 580 -510 940 -510 { lab=vdd}
N 580 -240 940 -240 { lab=out_n}
N 420 -280 940 -280 { lab=out_p}
N 730 0 750 0 { lab=vss}
N 600 0 730 0 { lab=vss}
N 750 -140 750 -80 { lab=vss}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {iopin.sym} 0 -510 0 1 {name=p4 lab=vdd}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 400 -380 0 0 {name=M1
L=0.15
W=50
nf=10
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -450 0 0 {name=M2
L=0.15
W=50
nf=10
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 560 -80 0 0 {name=M5
L=0.15
W=1
nf=1
mult=50
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
C {opin.sym} 970 -280 0 0 {name=p1 lab=out_p}
C {opin.sym} 970 -240 0 0 {name=p3 lab=out_n}
C {ipin.sym} 0 -250 0 0 {name=p5 lab=bias_20u}
C {ipin.sym} 0 -430 0 0 {name=p7 lab=in_p}
C {ipin.sym} 0 -450 0 0 {name=p8 lab=in_n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 400 -80 0 0 {name=M8
L=0.15
W=1
nf=1
mult=50
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_stdcells/inv_1.sym} 60 -340 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__ }
C {lab_wire.sym} 100 -340 0 1 {name=l13 sig_type=std_logic lab=en_n}
C {lab_wire.sym} 240 -340 0 1 {name=l14 sig_type=std_logic lab=en_buf}
C {ipin.sym} 0 -340 0 0 {name=p6 lab=en}
C {sky130_stdcells/inv_1.sym} 200 -340 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hs__ }
C {sky130_fd_pr/nfet_01v8_lvt.sym} 90 -200 0 1 {name=Men_pass
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
C {lab_wire.sym} 110 -200 0 1 {name=l1 sig_type=std_logic lab=en_buf}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 240 -60 0 0 {name=Men_a
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
C {lab_pin.sym} 220 -60 0 0 {name=l6 sig_type=std_logic lab=en_n}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 920 -60 0 0 {name=Men_a1
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
C {lab_pin.sym} 900 -60 0 0 {name=l2 sig_type=std_logic lab=en_n}
C {sky130_fd_pr/pfet_01v8.sym} 920 -450 0 0 {name=Men_d
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 900 -450 0 0 {name=l12 sig_type=std_logic lab=en_buf}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 710 -80 0 0 {name=Mdum
L=0.15
W=1
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
C {lab_wire.sym} 70 -140 0 1 {name=l3 sig_type=std_logic lab=curr_bias}
