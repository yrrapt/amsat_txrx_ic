v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N -860 10 -770 10 {lab=Ip}
N 520 -40 600 -40 {lab=Ip}
N 520 -20 670 -20 {lab=In}
N 600 -40 670 -40 {lab=Ip}
N 520 20 670 20 {lab=Qp}
N 520 40 670 40 {lab=Qn}
N -280 -160 420 -160 {lab=VDD}
N 420 -160 420 -80 {lab=VDD}
N -280 -160 -280 -100 {lab=VDD}
N 420 80 420 260 {lab=GND}
N -280 100 -280 260 {lab=GND}
N 150 260 420 260 {lab=GND}
N -670 260 -280 260 {lab=GND}
N -670 60 -670 260 {lab=GND}
N -670 -160 -670 -60 {lab=VDD}
N -670 -160 -280 -160 {lab=VDD}
N -940 -120 -340 -120 {lab=BIAS}
N -340 -120 -340 -100 {lab=BIAS}
N -940 -10 -770 -10 {lab=ref}
N -940 -160 -670 -160 {lab=VDD}
N -940 260 -670 260 {lab=GND}
N 150 -0 320 0 {lab=ctl}
N -10 220 -10 260 {lab=GND}
N -280 260 -10 260 {lab=GND}
N -170 -0 -10 0 {lab=ctl}
N 150 150 150 260 {lab=GND}
N 150 -0 150 90 {lab=ctl}
N -10 260 150 260 {lab=GND}
N -10 0 150 -0 {lab=ctl}
N -570 10 -390 10 {lab=down}
N -570 -10 -390 -10 {lab=up}
N -10 0 -10 30 {lab=ctl}
N -10 90 -10 160 {lab=#net1}
N -860 330 600 330 {lab=Ip}
N 600 -40 600 330 {lab=Ip}
N -860 10 -860 330 {lab=Ip}
C {chargepump/chargepump.sym} -280 0 0 0 {name=xcp w_invp=3u l_invp=0.18u w_invn=1u l_invn=0.18u w_currn=1u l_currn=4u w_currp=3u l_currp=4u m_curr=10 w_swn=0.5u l_swn=0.18u w_swp=1.5u l_swp=0.18u m_sw=4}
C {opin.sym} 670 -40 0 0 {name=p1 lab=Ip}
C {opin.sym} 670 -20 0 0 {name=p2 lab=In}
C {opin.sym} 670 20 0 0 {name=p3 lab=Qp}
C {opin.sym} 670 40 0 0 {name=p4 lab=Qn}
C {ipin.sym} -940 -120 0 0 {name=p5 lab=BIAS}
C {ipin.sym} -940 -10 0 0 {name=p6 lab=REF}
C {iopin.sym} -940 -160 0 1 {name=p7 lab=VDD}
C {iopin.sym} -940 260 0 1 {name=p8 lab=GND}
C {capa.sym} -10 190 0 0 {name=C1
m=1
value=73p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -810 -10 0 1 {name=l2 sig_type=std_logic lab=ref}
C {vco_quad/vco_quad_behavourial.sym} 420 0 0 0 {name=xvco sec_w=10u load_w=0.22u ctl_w=10u prim_w=30u cross_w=4u}
C {lab_wire.sym} -570 -10 0 1 {name=l4 sig_type=std_logic lab=up}
C {lab_wire.sym} -570 10 0 1 {name=l5 sig_type=std_logic lab=down}
C {capa.sym} 150 120 0 0 {name=C2
m=1
value=14.6p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 290 0 0 1 {name=l8 sig_type=std_logic lab=ctl}
C {res.sym} -10 60 2 0 {name=R2
value=27k
footprint=1206
device=resistor
m=1}
C {phasefrequencydetector_ff/phasefrequencydetector_ff.sym} -670 0 0 0 {name=xpfd w_n=0.5u l_n=0.18u w_n=1.5u l_p=0.18u}
