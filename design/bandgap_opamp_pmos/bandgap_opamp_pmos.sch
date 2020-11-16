v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {5u} 500 -570 0 0 0.4 0.4 {}
T {2.5u} 660 -570 0 0 0.4 0.4 {}
T {2.5u} 830 -570 0 0 0.4 0.4 {}
T {1.25u} 1010 -570 0 0 0.4 0.4 {}
N 510 -470 530 -470 {lab=vdd}
N 530 -530 530 -470 {lab=vdd}
N 510 -530 510 -500 {lab=vdd}
N 510 -530 530 -530 {lab=vdd}
N 750 -470 790 -470 {lab=out_n}
N 830 -300 830 -220 {lab=out_p}
N 690 -530 690 -500 {lab=vdd}
N 670 -530 690 -530 {lab=vdd}
N 670 -470 690 -470 {lab=vdd}
N 670 -530 670 -470 {lab=vdd}
N 830 -470 850 -470 {lab=vdd}
N 850 -530 850 -470 {lab=vdd}
N 830 -530 850 -530 {lab=vdd}
N 830 -530 830 -500 {lab=vdd}
N 240 -470 260 -470 {lab=vdd}
N 240 -530 240 -470 {lab=vdd}
N 260 -530 510 -530 {lab=vdd}
N 260 -530 260 -500 {lab=vdd}
N 260 -370 320 -370 {lab=bias}
N 390 -370 960 -370 {lab=bias}
N 960 -470 960 -370 {lab=bias}
N 960 -470 990 -470 {lab=bias}
N 1030 -530 1050 -530 {lab=vdd}
N 1050 -530 1050 -470 {lab=vdd}
N 1030 -470 1050 -470 {lab=vdd}
N 1030 -530 1030 -500 {lab=vdd}
N 690 -530 830 -530 {lab=vdd}
N 300 -470 320 -470 {lab=bias}
N 260 -390 260 -370 {lab=bias}
N 850 -530 1030 -530 {lab=vdd}
N 510 -440 510 -240 { lab=diff}
N 1030 -440 1030 -240 { lab=cas}
N 530 -530 670 -530 {lab=vdd}
N 690 -400 690 -220 { lab=out_n}
N 730 -470 750 -470 {lab=out_n}
N 390 -470 470 -470 { lab=bias}
N 390 -470 390 -370 { lab=bias}
N 320 -470 320 -370 { lab=bias}
N 120 -530 240 -530 {lab=vdd}
N 240 -530 260 -530 {lab=vdd}
N 320 -370 390 -370 {lab=bias}
N 100 -430 100 -390 { lab=bias}
N 100 -530 100 -490 { lab=vdd}
N 100 -460 120 -460 { lab=vdd}
N 120 -530 120 -460 { lab=vdd}
N 100 -390 260 -390 { lab=bias}
N 30 -460 60 -460 { lab=en}
N 690 -400 750 -400 { lab=out_n}
N 830 -440 830 -300 { lab=out_p}
N 750 -470 750 -400 { lab=out_n}
N 690 -440 690 -400 { lab=out_n}
N 260 -440 260 -390 {lab=bias}
N 0 -530 100 -530 {lab=vdd}
N 100 -530 120 -530 {lab=vdd}
N 0 -460 30 -460 { lab=en}
N 1030 -180 1080 -180 { lab=cas}
N 1030 -240 1030 -180 { lab=cas}
N 830 -120 1080 -120 { lab=out_p}
N 830 -220 830 -120 { lab=out_p}
N 690 -60 1080 -60 { lab=out_n}
N 690 -220 690 -60 { lab=out_n}
N 510 -240 510 -10 { lab=diff}
N 510 -10 510 0 { lab=diff}
N 510 0 1080 0 { lab=diff}
N 0 -180 250 -180 { lab=bias}
N 260 -370 260 -180 { lab=bias}
N 250 -180 260 -180 { lab=bias}
C {ipin.sym} 0 -180 0 0 {name=p1 lab=bias}
C {opin.sym} 1080 -120 0 0 {name=p4 lab=out_p}
C {iopin.sym} 0 -530 0 1 {name=p5 lab=vdd}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 490 -470 0 0 {name=Mcurr_diff
L=4
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=8
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 280 -470 0 1 {name=Mcurr_pref
L=4
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 1010 -470 0 0 {name=Mcurr_pa
L=4
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 710 -470 0 1 {name=Mcurr_loadp
L=8
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 810 -470 0 0 {name=Mcurr_loadn
L=8
W=5
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 80 -460 0 0 {name=Msw_en_pcurr
L=8
W=0.42
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {ipin.sym} 0 -460 0 0 {name=p7 lab=en}
C {opin.sym} 1080 -60 0 0 {name=p8 lab=out_n}
C {opin.sym} 1080 -180 0 0 {name=p9 lab=cas}
C {opin.sym} 1080 0 0 0 {name=p2 lab=diff}
