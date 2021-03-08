v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 100 -260 100 -200 {lab=out_p}
N 350 -260 350 -160 {lab=out_p}
N 230 -290 350 -290 {lab=vss}
N 100 -520 350 -520 {lab=#net1}
N 100 -590 120 -590 {lab=vdd}
N 120 -660 120 -590 {lab=vdd}
N 100 -660 120 -660 {lab=vdd}
N 100 -660 100 -620 {lab=vdd}
N 350 -590 370 -590 {lab=vdd}
N 370 -660 370 -590 {lab=vdd}
N 350 -660 370 -660 {lab=vdd}
N 350 -660 350 -620 {lab=vdd}
N 100 -70 120 -70 {lab=vss}
N 120 -70 120 0 {lab=vss}
N 100 0 120 0 {lab=vss}
N 100 -40 100 0 {lab=vss}
N 350 -70 370 -70 {lab=vss}
N 370 -70 370 0 {lab=vss}
N 350 0 370 0 {lab=vss}
N 350 -40 350 0 {lab=vss}
N 100 -200 100 -100 {lab=out_p}
N 350 -160 350 -100 {lab=out_p}
N 290 -70 310 -70 {lab=cmf_bias}
N 290 -120 290 -70 {lab=cmf_bias}
N 40 -120 290 -120 {lab=cmf_bias}
N 40 -120 40 -70 {lab=cmf_bias}
N 40 -70 60 -70 {lab=cmf_bias}
N 230 -0 350 0 {lab=vss}
N 120 -660 350 -660 {lab=vdd}
N 40 -590 60 -590 {lab=curr_bias}
N 40 -590 40 -540 {lab=curr_bias}
N 40 -540 290 -540 {lab=curr_bias}
N 290 -590 290 -540 {lab=curr_bias}
N 290 -590 310 -590 {lab=curr_bias}
N 10 -660 100 -660 {lab=vdd}
N 0 0 100 0 {lab=vss}
N 10 -540 40 -540 {lab=curr_bias}
N 10 -240 430 -240 {lab=bit_n}
N 430 -290 430 -240 {lab=bit_n}
N 390 -290 430 -290 {lab=bit_n}
N 10 -290 60 -290 {lab=bit_p}
N 100 -200 500 -200 {lab=out_p}
N 350 -160 500 -160 {lab=out_p}
N 10 -120 40 -120 {lab=cmf_bias}
N 230 -290 230 -0 {lab=vss}
N 100 -290 230 -290 {lab=vss}
N 100 -560 100 -500 {lab=#net1}
N 350 -560 350 -500 {lab=#net1}
N 120 0 230 -0 {lab=vss}
N 100 -500 100 -470 {lab=#net1}
N 100 -410 100 -320 {lab=#net2}
N 350 -410 350 -320 {lab=#net2}
N 100 -440 120 -440 {lab=vdd}
N 120 -590 120 -440 {lab=vdd}
N 370 -590 370 -440 {lab=vdd}
N 350 -440 370 -440 {lab=vdd}
N 350 -500 350 -470 {lab=#net1}
N 40 -440 60 -440 {lab=cas_bias}
N 40 -440 40 -390 {lab=cas_bias}
N 40 -390 290 -390 {lab=cas_bias}
N 290 -440 290 -390 {lab=cas_bias}
N 290 -440 310 -440 {lab=cas_bias}
N 10 -390 40 -390 {lab=cas_bias}
N 100 -370 350 -370 {lab=#net2}
C {nmos4.sym} 80 -70 0 0 {name=Mcmfbp model=nmos w=w_cmfb l=l_cmfb m=m_cmfb}
C {nmos4.sym} 80 -290 0 0 {name=Mbitp model=nmos w=w_bit l=l_bit m=m_bit}
C {nmos4.sym} 370 -290 0 1 {name=Mbitn model=nmos w=w_bit l=l_bit m=m_bit}
C {nmos4.sym} 330 -70 0 0 {name=Mcmfbn model=nmos w=w_cmfb l=l_cmfb m=m_cmfb}
C {pmos4.sym} 330 -590 0 0 {name=Mcurrn model=pmos w=w_curr l=l_curr m=m_curr}
C {pmos4.sym} 80 -590 0 0 {name=Mcurrp model=pmos w=w_curr l=l_curr m=m_curr}
C {iopin.sym} 10 -660 2 0 {name=p1 lab=vdd}
C {iopin.sym} 0 0 2 0 {name=p2 lab=vss}
C {ipin.sym} 10 -540 0 0 {name=p3 lab=curr_bias}
C {ipin.sym} 10 -290 0 0 {name=p4 lab=bit_p}
C {ipin.sym} 10 -240 0 0 {name=p5 lab=bit_n}
C {ipin.sym} 10 -120 0 0 {name=p6 lab=cmf_bias}
C {opin.sym} 500 -200 0 0 {name=p7 lab=out_p}
C {opin.sym} 500 -160 0 0 {name=p8 lab=out_p}
C {pmos4.sym} 330 -440 0 0 {name=Mcasn model=pmos w=w_cas l=l_cas m=m_cas}
C {pmos4.sym} 80 -440 0 0 {name=Mcasp model=pmos w=w_cas l=l_cas m=m_cas}
C {ipin.sym} 10 -390 0 0 {name=p9 lab=cas_bias}
