v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 100 10 300 10 {lab=down}
N 0 -100 0 -60 {lab=VDD}
N -580 -100 0 -100 {lab=VDD}
N -580 -100 -580 -30 {lab=VDD}
N -250 10 -250 50 {lab=fb}
N 0 150 300 150 {lab=0}
N -580 30 -580 150 {lab=0}
N -250 110 -250 150 {lab=0}
N 300 120 300 150 {lab=0}
N -510 150 -250 150 {lab=0}
N -250 10 -100 10 {lab=fb}
N -510 -10 -510 50 {lab=ref}
N -510 -10 -100 -10 {lab=ref}
N -510 110 -510 150 {lab=0}
N 0 60 0 150 {lab=0}
N 300 10 300 60 {lab=down}
N -250 150 0 150 {lab=0}
N -580 150 -510 150 {lab=0}
N 100 -10 300 -10 {lab=up}
N 380 -10 380 60 {lab=up}
N 300 -10 380 -10 {lab=up}
N 380 120 380 150 {lab=0}
N 300 150 380 150 {lab=0}
N 420 -20 510 -20 {lab=up}
N 420 -20 420 -10 {lab=up}
N 380 -10 420 -10 {lab=up}
N 420 20 510 20 {lab=down}
N 420 10 420 20 {lab=down}
N 300 10 420 10 {lab=down}
N 550 30 550 60 {lab=out}
N 380 150 640 150 {lab=0}
N 640 -40 640 150 {lab=0}
N 550 -40 640 -40 {lab=0}
N 550 -40 550 -30 {lab=0}
N 550 120 550 150 {lab=0}
N 640 150 960 150 {lab=0}
N 960 100 960 150 {lab=0}
N 960 150 1190 150 {lab=0}
N 1190 110 1190 150 {lab=0}
N 1190 -0 1190 50 {lab=#net1}
N 1070 -0 1190 -0 {lab=#net1}
N 790 -10 850 -10 {lab=up}
N 790 10 850 10 {lab=down}
N 900 -120 900 -100 {lab=#net2}
N 960 -220 960 -100 {lab=VDD}
N -0 -220 960 -220 {lab=VDD}
N -0 -220 -0 -100 {lab=VDD}
N 900 -220 900 -180 {lab=VDD}
N 1190 150 1390 150 {lab=0}
N 1390 110 1390 150 {lab=0}
N 1390 -0 1390 50 {lab=out_cp}
N 1330 -0 1390 -0 {lab=out_cp}
N 1190 -0 1270 0 {lab=#net1}
C {vsource.sym} -250 80 0 0 {name=V1 value="pulse(0 1.8 delay 1ns 1ns \{0.5*period\} period)"}
C {vsource.sym} -580 0 0 0 {name=Vdd value=1.8}
C {capa.sym} 300 90 0 0 {name=C1
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -580 -100 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -160 10 0 1 {name=l2 sig_type=std_logic lab=fb}
C {lab_wire.sym} 140 10 0 1 {name=l6 sig_type=std_logic lab=down
}
C {lab_wire.sym} -580 150 0 1 {name=l7 sig_type=std_logic lab=0}
C {code.sym} 230 -140 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
*.option PARHIER=LOCAL RUNLVL=6 post MODMONTE=1 warn maxwarns=400
*.option ITL4=20000 ITL5=0
* .option sampling_method = SRS 
* .option method=gear

*.lib xh018/xh018.lib tm
.include '/home/tom/.xschem/simulations/xh018_ng/xh018.lib'

.param delay=0
.param period=50ns

*.option rshunt = 1.0e3
*.option keepopinfo = 1

.ic v(out_cp)=0.9

.temp 30
.tran  1e-9 10e-6 uic
*.dc Vdd 1.8 1.8 0.25
"}
C {vsource.sym} -510 80 0 0 {name=V2 value="pulse(0 1.8 0ns 1ns 1ns 50ns 100ns)"}
C {lab_wire.sym} -160 -10 0 1 {name=l3 sig_type=std_logic lab=ref}
C {phasefrequencydetector_ff/phasefrequencydetector_ff.sym} 0 0 0 0 {name=x1}
C {lab_wire.sym} 140 -10 0 1 {name=l4 sig_type=std_logic lab=up}
C {capa.sym} 380 90 0 0 {name=C2
m=1
value=0.1p
footprint=1206
device="ceramic capacitor"}
C {vccs.sym} 550 0 0 0 {name=G1 value=1e-6}
C {capa.sym} 550 90 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 550 50 0 1 {name=l5 sig_type=std_logic lab=out}
C {chargepump/chargepump.sym} 960 0 0 0 {name=x2 w_invp=3u l_invp=0.18u w_invn=1u l_invn=0.18u w_currn=1u l_currn=4u w_currp=3u l_currp=4u m_curr=20 w_swn=1u l_swn=0.18u w_swp=3u l_swp=0.18u m_sw=4}
C {isource.sym} 900 -150 0 0 {name=I0 value=10u}
C {capa.sym} 1190 80 0 0 {name=C4
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1340 0 0 1 {name=l8 sig_type=std_logic lab=out_cp}
C {lab_wire.sym} 790 10 0 1 {name=l9 sig_type=std_logic lab=down
}
C {lab_wire.sym} 790 -10 0 1 {name=l10 sig_type=std_logic lab=up}
C {res.sym} 1300 0 1 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {capa.sym} 1390 80 0 0 {name=C5
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
