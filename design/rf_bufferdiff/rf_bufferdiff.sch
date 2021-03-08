v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -30 70 0 {lab=vss}
N 70 0 220 0 {lab=vss}
N 220 -30 220 0 {lab=vss}
N 70 -60 220 -60 {lab=vss}
N 70 -140 70 -90 {lab=out_p}
N 220 -270 220 -200 {lab=vdd}
N 0 -270 220 -270 {lab=vdd}
N 70 -270 70 -200 {lab=vdd}
N 0 -120 70 -120 {lab=out_p}
N 220 -140 220 -90 {lab=out_n}
N 220 -120 290 -120 {lab=out_n}
N 0 -170 40 -170 {lab=vss}
N 240 -170 280 -170 {lab=vss}
N 0 0 70 0 {lab=vss}
N 150 -60 150 0 {lab=vss}
N 20 -60 30 -60 { lab=in_p}
N 260 -60 290 -60 { lab=in_n}
N 0 -60 20 -60 { lab=in_p}
N 40 -170 50 -170 { lab=vss}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 50 -60 0 0 {name=XMdiffp model=sky130_fd_pr__rf_nfet_01v8_lvt_aF02W1p65L0p15

}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 240 -60 0 1 {name=XMdiffn model=sky130_fd_pr__rf_nfet_01v8_lvt_aF02W1p65L0p15
}
C {iopin.sym} 0 -270 0 1 {name=p1 lab=vdd}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {ipin.sym} 0 -60 0 0 {name=p3 lab=in_p}
C {ipin.sym} 290 -60 0 1 {name=p4 lab=in_n}
C {opin.sym} 0 -120 0 1 {name=p5 lab=out_p}
C {opin.sym} 290 -120 0 0 {name=p6 lab=out_n}
C {lab_wire.sym} 0 -170 0 1 {name=l1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 240 -170 0 1 {name=l2 sig_type=std_logic lab=vss}
C {sky130_fd_pr/res_xhigh_po.sym} 70 -170 0 0 {name=Rp
W=2.85
L=5.00
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 220 -170 0 1 {name=Rn
W=2.85
L=5.00
model=res_xhigh_po
spiceprefix=X
mult=1}
