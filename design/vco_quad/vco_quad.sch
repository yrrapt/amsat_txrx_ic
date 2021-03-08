v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 470 -160 500 -160 {lab=#net1}
N 470 -140 500 -140 {lab=#net2}
N 830 -160 860 -160 {lab=#net3}
N 830 -140 860 -140 {lab=#net4}
N 1150 -160 1220 -160 {lab=Ip}
N 1150 -140 1220 -140 {lab=In}
N 1380 -160 1430 -160 {lab=Qp}
N 1430 -160 1450 -140 {lab=Qp}
N 1380 -140 1430 -140 {lab=Qn}
N 1430 -140 1450 -160 {lab=Qn}
N 1450 -140 1490 -140 {lab=Qp}
N 1490 -140 1490 -30 {lab=Qp}
N 70 -30 1490 -30 {lab=Qp}
N 70 -140 70 -30 {lab=Qp}
N 110 -140 140 -140 {lab=Qp}
N 1450 -160 1490 -160 {lab=Qn}
N 1490 -270 1490 -160 {lab=Qn}
N 110 -160 140 -160 {lab=Qn}
N 70 -270 70 -160 {lab=Qn}
N 830 -230 830 -160 {lab=#net3}
N 1150 -230 1150 -180 {lab=#net3}
N 1150 -180 1220 -180 {lab=#net3}
N 830 -140 830 -70 {lab=#net4}
N 1150 -120 1150 -70 {lab=#net4}
N 1150 -120 1220 -120 {lab=#net4}
N 660 -160 830 -160 {lab=#net3}
N 660 -140 830 -140 {lab=#net4}
N 830 -230 1150 -230 {lab=#net3}
N 830 -70 1150 -70 {lab=#net4}
N 470 -230 470 -160 {lab=#net1}
N 790 -230 790 -180 {lab=#net1}
N 790 -180 860 -180 {lab=#net1}
N 470 -140 470 -70 {lab=#net2}
N 790 -120 790 -70 {lab=#net2}
N 790 -120 860 -120 {lab=#net2}
N 470 -230 790 -230 {lab=#net1}
N 470 -70 790 -70 {lab=#net2}
N 110 -230 110 -160 {lab=Qn}
N 430 -230 430 -180 {lab=Qn}
N 430 -180 500 -180 {lab=Qn}
N 110 -140 110 -70 {lab=Qp}
N 430 -120 430 -70 {lab=Qp}
N 430 -120 500 -120 {lab=Qp}
N 110 -230 430 -230 {lab=Qn}
N 110 -70 430 -70 {lab=Qp}
N 70 -140 110 -140 {lab=Qp}
N 70 -160 110 -160 {lab=Qn}
N 300 -160 470 -160 {lab=#net1}
N 300 -140 470 -140 {lab=#net2}
N 1150 -140 1180 -170 {lab=In}
N 1150 -160 1180 -130 {lab=Ip}
N 1180 -130 1180 -50 {lab=Ip}
N 90 -50 1180 -50 {lab=Ip}
N 90 -120 90 -50 {lab=Ip}
N 90 -120 140 -120 {lab=Ip}
N 1180 -250 1180 -170 {lab=In}
N 90 -250 1180 -250 {lab=In}
N 90 -250 90 -180 {lab=In}
N 90 -180 140 -180 {lab=In}
N 70 -270 1490 -270 {lab=Qn}
N 1020 -160 1150 -160 {lab=Ip}
N 1020 -140 1150 -140 {lab=In}
N 200 -290 200 -210 {lab=CTL}
N 570 -90 570 -10 {lab=GND}
N 930 -90 930 -10 {lab=GND}
N 1290 -90 1290 -10 {lab=GND}
N 210 -10 570 -10 {lab=GND}
N 210 -90 210 -10 {lab=GND}
N 570 -10 930 -10 {lab=GND}
N 930 -10 1290 -10 {lab=GND}
N 200 -290 560 -290 {lab=CTL}
N 560 -290 920 -290 {lab=CTL}
N 920 -290 1280 -290 {lab=CTL}
N 230 -310 590 -310 {lab=VDD}
N 590 -310 950 -310 {lab=VDD}
N 950 -310 1310 -310 {lab=VDD}
N 560 -290 560 -210 {lab=CTL}
N 590 -310 590 -210 {lab=VDD}
N 920 -290 920 -210 {lab=CTL}
N 950 -310 950 -210 {lab=VDD}
N 1280 -290 1280 -210 {lab=CTL}
N 1310 -310 1310 -210 {lab=VDD}
N 30 -10 210 -10 {lab=GND}
N 30 -290 200 -290 {lab=CTL}
N 30 -310 230 -310 {lab=VDD}
N 230 -310 230 -210 {lab=VDD}
C {vco_delaycell/vco_delaycell.sym} 210 -150 0 0 {name=x1 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {vco_delaycell/vco_delaycell.sym} 570 -150 0 0 {name=x2 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {vco_delaycell/vco_delaycell.sym} 930 -150 0 0 {name=x3 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {vco_delaycell/vco_delaycell.sym} 1290 -150 0 0 {name=x4 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {lab_wire.sym} 1380 -140 0 1 {name=l2 sig_type=std_logic lab=Qn}
C {lab_wire.sym} 1380 -160 0 1 {name=l3 sig_type=std_logic lab=Qp}
C {ipin.sym} 30 -290 0 0 {name=p1 lab=CTL}
C {iopin.sym} 30 -310 0 1 {name=p6 lab=VDD}
C {lab_wire.sym} 1050 -160 0 1 {name=l1 sig_type=std_logic lab=Ip}
C {lab_wire.sym} 1050 -140 0 1 {name=l4 sig_type=std_logic lab=In}
C {iopin.sym} 30 -10 0 1 {name=p7 lab=GND}
C {opin.sym} 1590 -210 0 0 {name=p2 lab=Ip}
C {opin.sym} 1590 -170 0 0 {name=p3 lab=In}
C {opin.sym} 1590 -130 0 0 {name=p4 lab=Qp}
C {opin.sym} 1590 -90 0 0 {name=p5 lab=Qn}
