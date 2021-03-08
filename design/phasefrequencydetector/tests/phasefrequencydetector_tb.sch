v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 680 -140 880 -140 {lab=down}
N 580 -250 580 -210 {lab=VDD}
N 0 -250 580 -250 {lab=VDD}
N 0 -250 0 -180 {lab=VDD}
N 330 -140 330 -100 {lab=fb}
N 580 0 880 0 {lab=0}
N 0 -120 0 0 {lab=0}
N 330 -40 330 0 {lab=0}
N 880 -30 880 0 {lab=0}
N 70 0 330 0 {lab=0}
N 330 -140 480 -140 {lab=fb}
N 70 -160 70 -100 {lab=ref}
N 70 -160 480 -160 {lab=ref}
N 70 -40 70 0 {lab=0}
N 580 -90 580 0 {lab=0}
N 880 -140 880 -90 {lab=down}
N 330 0 580 0 {lab=0}
N 0 0 70 0 {lab=0}
N 680 -160 880 -160 {lab=up}
N 960 -160 960 -90 {lab=up}
N 880 -160 960 -160 {lab=up}
N 960 -30 960 0 {lab=0}
N 880 0 960 0 {lab=0}
N 1000 -170 1090 -170 {lab=up}
N 1000 -170 1000 -160 {lab=up}
N 960 -160 1000 -160 {lab=up}
N 1000 -130 1090 -130 {lab=down}
N 1000 -140 1000 -130 {lab=down}
N 880 -140 1000 -140 {lab=down}
N 1130 -120 1130 -90 {lab=out}
N 960 0 1220 0 {lab=0}
N 1220 -190 1220 0 {lab=0}
N 1130 -190 1220 -190 {lab=0}
N 1130 -190 1130 -180 {lab=0}
N 1130 -30 1130 0 {lab=0}
N 1500 -50 1500 0 {lab=0}
N 1500 0 1730 0 {lab=0}
N 1730 -40 1730 0 {lab=0}
N 1730 -150 1730 -100 {lab=#net1}
N 1610 -150 1730 -150 {lab=#net1}
N 1330 -160 1390 -160 {lab=up}
N 1330 -140 1390 -140 {lab=down}
N 1440 -270 1440 -250 {lab=#net2}
N 1500 -370 1500 -250 {lab=VDD}
N 1440 -370 1440 -330 {lab=VDD}
N 1730 0 1930 0 {lab=0}
N 1930 -40 1930 0 {lab=0}
N 1930 -150 1930 -100 {lab=out_cp}
N 1870 -150 1930 -150 {lab=out_cp}
N 1730 -150 1810 -150 {lab=#net1}
N 1220 0 1500 0 { lab=0}
N 1440 -370 1500 -370 { lab=VDD}
N 580 -370 1440 -370 { lab=VDD}
N 580 -370 580 -250 { lab=VDD}
C {vsource.sym} 0 -150 0 0 {name=Vdd value=1.8}
C {capa.sym} 880 -60 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 0 -250 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 420 -140 0 1 {name=l2 sig_type=std_logic lab=fb}
C {lab_wire.sym} 720 -140 0 1 {name=l6 sig_type=std_logic lab=down
}
C {lab_wire.sym} 0 0 0 1 {name=l7 sig_type=std_logic lab=0}
C {code.sym} 810 -290 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice tt

.param delay=0
.param period=50ns

.temp 30
.tran  1e-9 100e-6 uic
"}
C {lab_wire.sym} 420 -160 0 1 {name=l3 sig_type=std_logic lab=ref}
C {phasefrequencydetector/phasefrequencydetector.sym} 580 -150 0 0 {name=x1}
C {lab_wire.sym} 720 -160 0 1 {name=l4 sig_type=std_logic lab=up}
C {capa.sym} 960 -60 0 0 {name=C2
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 1130 -150 0 0 {name=G1 value=1e-6}
C {capa.sym} 1130 -60 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1130 -100 0 1 {name=l5 sig_type=std_logic lab=out}
C {vsource.sym} 330 -70 0 0 {name=V1 value="pulse(0 1.8 delay 1ns 1ns \{0.5*period\} period)"}
C {vsource.sym} 70 -70 0 0 {name=V2 value="pulse(0 1.8 0ns 1ns 1ns 50ns 100ns)"}
C {chargepump/chargepump.sym} 1500 -150 0 0 {name=x2 w_invp=3u l_invp=0.18u w_invn=1u l_invn=0.18u w_currn=1u l_currn=4u w_currp=3u l_currp=4u m_curr=20 w_swn=1u l_swn=0.18u w_swp=3u l_swp=0.18u m_sw=4}
C {isource.sym} 1440 -300 0 0 {name=I0 value=10u}
C {capa.sym} 1730 -70 0 0 {name=C4
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1880 -150 0 1 {name=l8 sig_type=std_logic lab=out_cp}
C {lab_wire.sym} 1330 -140 0 1 {name=l9 sig_type=std_logic lab=down
}
C {lab_wire.sym} 1330 -160 0 1 {name=l10 sig_type=std_logic lab=up}
C {res.sym} 1840 -150 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {capa.sym} 1930 -70 0 0 {name=C5
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
