v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 170 -710 170 -580 { lab=out_p}
N 650 -710 650 -580 { lab=out_n}
N 650 -680 930 -680 { lab=out_n}
N 170 -620 930 -620 { lab=out_p}
N 0 -520 50 -520 { lab=vctl}
N 0 -260 50 -260 { lab=bias}
N 0 -960 410 -960 { lab=vdd}
N 410 -960 410 -890 { lab=vdd}
N 110 -960 110 -580 { lab=vdd}
N 410 -100 410 0 { lab=vss}
N 0 0 410 0 { lab=vss}
C {ipin.sym} 0 -520 0 0 {name=p1 lab=vctl}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {ipin.sym} 0 -260 0 0 {name=p3 lab=bias_20u_p}
C {iopin.sym} 0 -960 0 1 {name=p4 lab=vdd}
C {opin.sym} 930 -620 0 0 {name=p5 lab=out_p}
C {opin.sym} 930 -680 0 0 {name=p6 lab=out_n}
C {lc_oscillator_inductor_diff/lc_oscillator_inductor_diff.sym} 410 -790 0 0 {name=x3}
C {lab_pin.sym} 410 -710 3 0 {name=l7 sig_type=std_logic lab=vss}
C {lc_oscillator_core/lc_oscillator_core.sym} 410 -340 0 0 {name=x4}
