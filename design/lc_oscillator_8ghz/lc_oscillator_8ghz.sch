v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -180 340 -180 { lab=#net1}
N 340 -180 460 -240 { lab=#net1}
N 460 -240 620 -240 { lab=#net1}
N 620 -350 620 -240 { lab=#net1}
N 620 -240 620 -210 { lab=#net1}
N 460 -180 580 -180 { lab=#net2}
N 340 -240 460 -180 { lab=#net2}
N 160 -240 340 -240 { lab=#net2}
N 160 -240 160 -210 { lab=#net2}
N 160 -350 160 -240 { lab=#net2}
N 420 -320 620 -320 { lab=#net1}
N 160 -320 360 -320 { lab=#net2}
N 280 -350 280 -330 { lab=#net2}
N 280 -330 280 -320 { lab=#net2}
N 500 -350 500 -320 { lab=#net1}
N 200 -60 580 -60 { lab=#net3}
N 160 -150 160 -90 { lab=#net4}
N 620 -150 620 -90 { lab=#net5}
N 620 -180 640 -180 { lab=#net6}
N 640 -180 640 0 { lab=#net6}
N 140 0 640 0 { lab=#net6}
N 140 -180 140 0 { lab=#net6}
N 140 -180 160 -180 { lab=#net6}
N 160 -30 160 0 { lab=#net6}
N 140 -60 160 -60 { lab=#net6}
N 620 -30 620 0 { lab=#net6}
N 620 -60 640 -60 { lab=#net6}
N 160 -380 220 -380 { lab=#net6}
N 220 -380 220 0 { lab=#net6}
N 560 -380 620 -380 { lab=#net6}
N 560 -380 560 0 { lab=#net6}
N 280 -480 280 -410 { lab=#net7}
N 280 -480 300 -480 { lab=#net7}
N 360 -480 420 -480 { lab=#net8}
N 500 -480 500 -410 { lab=#net9}
N 480 -480 500 -480 { lab=#net9}
N 500 -480 620 -480 { lab=#net9}
N 620 -480 620 -410 { lab=#net9}
N 160 -480 280 -480 { lab=#net7}
N 160 -480 160 -410 { lab=#net7}
N 620 -540 620 -480 {}
N 160 -540 160 -480 {}
N 160 -660 160 -600 {}
N 160 -660 620 -660 {}
N 620 -660 620 -600 {}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 600 -180 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 -180 0 1 {name=M2
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
C {sky130_fd_pr/cap_mim_m3_1.sym} 390 -320 1 0 {name=C1 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 280 -380 0 0 {name=C2 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 500 -380 0 1 {name=C3 model=cap_mim_m3_1 W=1 L=1 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 140 -380 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 640 -380 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 600 -60 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 180 -60 0 1 {name=M6
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
C {lc_oscillator_8ghz_varactor/oscillator_8ghz_varactor.sym} 330 -480 1 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lc_oscillator_8ghz_varactor/oscillator_8ghz_varactor.sym} 450 -480 3 1 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lc_oscillator_8ghz_inductor/lc_oscillator_8ghz_inductor.sym} 160 -570 0 0 {name=L1
m=1
value=1n
footprint=1206
device=inductor}
C {lc_oscillator_8ghz_inductor/lc_oscillator_8ghz_inductor.sym} 620 -570 0 1 {name=L2
m=1
value=1n
footprint=1206
device=inductor}
