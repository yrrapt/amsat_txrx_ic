v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N -1050 -10 -1010 -10 {lab=INp}
N -1050 10 -1010 10 {lab=INn}
N -910 -100 -910 -60 {lab=VDD}
N -910 60 -910 100 {lab=GND}
N -650 -100 -650 -60 {lab=VDD}
N -650 60 -650 100 {lab=GND}
N -390 -100 -390 -60 {lab=VDD}
N -390 60 -390 100 {lab=GND}
N -130 -100 -130 -60 {lab=VDD}
N -130 60 -130 100 {lab=GND}
N 130 -100 130 -60 {lab=VDD}
N 130 60 130 100 {lab=GND}
N 390 -100 390 -60 {lab=VDD}
N 390 60 390 100 {lab=GND}
N 650 -100 650 -60 {lab=VDD}
N 650 60 650 100 {lab=GND}
N 910 -100 910 -60 {lab=VDD}
N 910 60 910 100 {lab=GND}
N -1050 -100 -910 -100 {lab=VDD}
N -910 -100 -650 -100 {lab=VDD}
N -650 -100 -390 -100 {lab=VDD}
N -390 -100 -130 -100 {lab=VDD}
N -130 -100 130 -100 {lab=VDD}
N 130 -100 390 -100 {lab=VDD}
N 390 -100 650 -100 {lab=VDD}
N 650 -100 910 -100 {lab=VDD}
N -1050 100 -910 100 {lab=GND}
N -910 100 -650 100 {lab=GND}
N -650 100 -390 100 {lab=GND}
N -390 100 -130 100 {lab=GND}
N -130 100 130 100 {lab=GND}
N 130 100 390 100 {lab=GND}
N 390 100 650 100 {lab=GND}
N 650 100 910 100 {lab=GND}
N -810 -10 -750 -10 {lab=div2_p}
N -810 10 -750 10 {lab=div2_n}
N -550 -10 -490 -10 {lab=div4_p}
N -550 10 -490 10 {lab=div4_n}
N -290 -10 -230 -10 {lab=div8_p}
N -290 10 -230 10 {lab=div8_n}
N -30 -10 30 -10 {lab=#net1}
N -30 10 30 10 {lab=#net2}
N 230 -10 290 -10 {lab=#net3}
N 230 10 290 10 {lab=#net4}
N 490 -10 550 -10 {lab=#net5}
N 490 10 550 10 {lab=#net6}
N 750 -10 810 -10 {lab=#net7}
N 750 10 810 10 {lab=#net8}
N 1010 -10 1070 -10 {lab=OUTp}
N 1010 10 1070 10 {lab=OUTn}
C {divider_cml/divider_cml.sym} -650 0 0 0 {name=x1}
C {divider_ff/divider_ff.sym} -390 0 0 0 {name=x2}
C {divider_cml/divider_cml.sym} -910 0 0 0 {name=x3}
C {divider_ff/divider_ff.sym} -130 0 0 0 {name=x4}
C {divider_ff/divider_ff.sym} 130 0 0 0 {name=x5}
C {divider_ff/divider_ff.sym} 390 0 0 0 {name=x6}
C {divider_ff/divider_ff.sym} 650 0 0 0 {name=x7}
C {divider_ff/divider_ff.sym} 910 0 0 0 {name=x8}
C {ipin.sym} -1050 -10 0 0 {name=p1 lab=INp}
C {ipin.sym} -1050 10 0 0 {name=p2 lab=INn}
C {opin.sym} 1070 -10 0 0 {name=p3 lab=OUTp}
C {opin.sym} 1070 10 0 0 {name=p4 lab=OUTn}
C {iopin.sym} -1050 -100 2 0 {name=p5 lab=VDD}
C {iopin.sym} -1050 100 2 0 {name=p6 lab=GND}
C {lab_wire.sym} -810 -10 0 1 {name=l1 sig_type=std_logic lab=div2_p}
C {lab_wire.sym} -810 10 0 1 {name=l2 sig_type=std_logic lab=div2_n}
C {lab_wire.sym} -550 -10 0 1 {name=l3 sig_type=std_logic lab=div4_p}
C {lab_wire.sym} -550 10 0 1 {name=l4 sig_type=std_logic lab=div4_n}
C {lab_wire.sym} -290 -10 0 1 {name=l5 sig_type=std_logic lab=div8_p}
C {lab_wire.sym} -290 10 0 1 {name=l6 sig_type=std_logic lab=div8_n}
