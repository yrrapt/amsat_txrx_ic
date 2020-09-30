v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 70 -30 70 0 {lab=vss}
N 70 0 220 0 {lab=vss}
N 220 -30 220 0 {lab=vss}
N 70 -60 220 -60 {lab=vss}
N 70 -140 70 -90 {lab=out_n}
N 220 -270 220 -200 {lab=vdd}
N 0 -270 220 -270 {lab=vdd}
N 70 -270 70 -200 {lab=vdd}
N 0 -60 30 -60 {lab=in_p}
N 260 -60 290 -60 {lab=in_n}
N 0 -120 70 -120 {lab=out_n}
N 220 -140 220 -90 {lab=out_p}
N 220 -120 290 -120 {lab=out_p}
N 0 -170 40 -170 {lab=vss}
N 250 -170 290 -170 {lab=vss}
N 0 0 70 0 {lab=vss}
N 150 -60 150 0 {lab=vss}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 50 -60 0 0 {name=XMdiffp model=sky130_fd_pr__rf_nfet_01v8_bM02W1p65L0p15 m=1

}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 240 -60 0 1 {name=XMdiffn model=sky130_fd_pr__rf_nfet_01v8_bM02W1p65L0p15 m=1
}
C {iopin.sym} 0 -270 0 1 {name=p1 lab=vdd}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {ipin.sym} 0 -60 0 0 {name=p3 lab=in_p}
C {ipin.sym} 290 -60 0 1 {name=p4 lab=in_n}
C {opin.sym} 0 -120 0 1 {name=p5 lab=out_n}
C {opin.sym} 290 -120 0 0 {name=p6 lab=out_p}
C {lab_wire.sym} 0 -170 0 1 {name=l1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 250 -170 0 1 {name=l2 sig_type=std_logic lab=vss}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/res_sub.sym} 70 -170 0 0 {name=Rn
model=sky130_fd_pr__res_xhigh_po_2p85
m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/res_sub.sym} 220 -170 0 1 {name=Rp
value=1k
model=sky130_fd_pr__res_xhigh_po_2p85
m=1}
