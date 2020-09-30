v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 630 -110 630 0 {lab=GND}
N 440 0 630 0 {lab=GND}
N 0 0 440 0 {lab=GND}
N 480 -180 480 -100 {lab=phase}
N 480 -40 480 0 {lab=GND}
N 630 -280 630 -170 {lab=Ip}
N 630 -280 790 -280 {lab=Ip}
N 480 -300 480 -240 {lab=VDD}
N 0 -300 480 -300 {lab=VDD}
N 1000 -110 1000 0 {lab=GND}
N 1000 -280 1000 -170 {lab=In}
N 1000 -280 1160 -280 {lab=In}
N 1380 -110 1380 0 {lab=GND}
N 1380 -280 1380 -170 {lab=Qp}
N 1380 -280 1540 -280 {lab=Qp}
N 1750 -110 1750 0 {lab=GND}
N 1750 -280 1750 -170 {lab=Qn}
N 1750 -280 1910 -280 {lab=Qn}
N 630 0 1000 0 {lab=GND}
N 1000 0 1380 0 {lab=GND}
N 1380 0 1750 0 {lab=GND}
C {ipin.sym} 0 -230 0 0 {name=p1 lab=CTL}
C {iopin.sym} 0 -300 0 1 {name=p6 lab=VDD}
C {iopin.sym} 0 0 0 1 {name=p7 lab=GND}
C {opin.sym} 790 -280 0 0 {name=p2 lab=Ip}
C {opin.sym} 1160 -280 0 0 {name=p3 lab=In}
C {opin.sym} 1540 -280 0 0 {name=p4 lab=Qp}
C {opin.sym} 1910 -280 0 0 {name=p5 lab=Qn}
C {capa.sym} 480 -70 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 480 -130 0 1 {name=l1 sig_type=std_logic lab=phase}
C {bsource.sym} 480 -210 0 1 {name=B2 VAR=I FUNC="-17500000*v(ctl,gnd)^3 + 89500000*v(ctl,gnd)^2 - 146000000*v(ctl,gnd) + 181000000"}
C {bsource.sym} 630 -140 0 0 {name=B1 VAR=V FUNC="0.5*v(vdd)*(((2*v(phase,gnd)%2)\\\\1)+0.5*v(vdd)"}
C {bsource.sym} 1000 -140 0 0 {name=B3 VAR=V FUNC="-1*0.5*v(vdd)*cos(6.283185307*v(phase,gnd))+0.5*v(vdd)"}
C {bsource.sym} 1380 -140 0 0 {name=B4 VAR=V FUNC="0.5*v(vdd)*sin(6.283185307*v(phase,gnd))+0.5*v(vdd)"}
C {bsource.sym} 1750 -140 0 0 {name=B5 VAR=V FUNC="-1*0.5*v(vdd)*sin(6.283185307*v(phase,gnd))+0.5*v(vdd)"}
