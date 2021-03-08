v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N -810 230 190 230 {lab=fb}
N -810 10 -810 230 {lab=fb}
N -810 10 -770 10 {lab=fb}
N -570 10 -390 10 {lab=down}
N -570 -10 -390 -10 {lab=up}
N 390 230 600 230 {lab=Ip}
N 520 -40 600 -40 {lab=Ip}
N 520 -20 620 -20 {lab=In}
N 390 250 620 250 {lab=In}
N 620 -20 670 -20 {lab=In}
N 600 -40 670 -40 {lab=Ip}
N 520 20 670 20 {lab=Qp}
N 520 40 670 40 {lab=Qn}
N 290 -160 290 180 {lab=VDD}
N 290 -160 420 -160 {lab=VDD}
N 420 -160 420 -80 {lab=VDD}
N -280 -160 -280 -100 {lab=VDD}
N -280 -160 290 -160 {lab=VDD}
N 290 300 290 380 {lab=GND}
N 420 80 420 380 {lab=GND}
N -280 100 -280 380 {lab=GND}
N 150 380 290 380 {lab=GND}
N -670 380 -280 380 {lab=GND}
N 290 380 420 380 {lab=GND}
N -670 60 -670 380 {lab=GND}
N -670 -160 -670 -60 {lab=VDD}
N -670 -160 -280 -160 {lab=VDD}
N -940 -120 -340 -120 {lab=BIAS}
N -340 -120 -340 -100 {lab=BIAS}
N -940 -10 -770 -10 {lab=ref}
N -940 -160 -670 -160 {lab=VDD}
N -940 380 -670 380 {lab=GND}
N 150 -0 320 0 {lab=#net1}
N -60 -0 -60 40 {lab=ctl}
N -60 100 -60 380 {lab=GND}
N -280 380 -60 380 {lab=GND}
N -170 -0 -60 -0 {lab=ctl}
N 600 -40 600 230 {lab=Ip}
N 620 -20 620 250 {lab=In}
N 150 100 150 380 {lab=GND}
N 150 -0 150 40 {lab=#net1}
N -60 380 150 380 {lab=GND}
N 80 0 150 -0 {lab=#net1}
N -60 -0 20 -0 {lab=ctl}
C {phasefrequencydetector_ff/phasefrequencydetector_ff.sym} -670 0 0 0 {name=xpfd}
C {divider_256_4cml_64ff/divider_256_4cml_64ff.sym} 290 240 0 1 {name=xdiv}
C {chargepump/chargepump.sym} -280 0 0 0 {name=xcp w_invp=3u l_invp=0.18u w_invn=1u l_invn=0.18u w_currn=1u l_currn=4u w_currp=3u l_currp=4u m_curr=20 w_swn=1u l_swn=0.18u w_swp=3u l_swp=0.18u m_sw=4}
C {opin.sym} 670 -40 0 0 {name=p1 lab=Ip}
C {opin.sym} 670 -20 0 0 {name=p2 lab=In}
C {opin.sym} 670 20 0 0 {name=p3 lab=Qp}
C {opin.sym} 670 40 0 0 {name=p4 lab=Qn}
C {ipin.sym} -940 -120 0 0 {name=p5 lab=BIAS}
C {ipin.sym} -940 -10 0 0 {name=p6 lab=REF}
C {iopin.sym} -940 -160 0 1 {name=p7 lab=VDD}
C {iopin.sym} -940 380 0 1 {name=p8 lab=GND}
C {capa.sym} -60 70 0 0 {name=C1
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -170 0 0 1 {name=l1 sig_type=std_logic lab=ctl}
C {lab_wire.sym} -810 -10 0 1 {name=l2 sig_type=std_logic lab=ref}
C {lab_wire.sym} -810 10 0 1 {name=l3 sig_type=std_logic lab=fb}
C {vco_quad/vco_quad.sym} 420 0 0 0 {name=xvco sec_w=10u load_w=0.22u ctl_w=10u prim_w=30u cross_w=4u}
C {lab_wire.sym} -570 -10 0 1 {name=l4 sig_type=std_logic lab=up}
C {lab_wire.sym} -570 10 0 1 {name=l5 sig_type=std_logic lab=down}
C {capa.sym} 150 70 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 50 0 1 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
