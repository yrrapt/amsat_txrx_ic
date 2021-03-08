v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1380 -30 1380 0 {lab=GND}
N 1320 -60 1360 -60 { lab=GND}
N 1320 -60 1320 0 { lab=GND}
N 1320 0 1380 0 {lab=GND}
N 1320 -380 1360 -380 { lab=GND}
N 1320 -140 1320 -60 { lab=GND}
N 1320 -300 1360 -300 { lab=GND}
N 1320 -220 1360 -220 { lab=GND}
N 1320 -140 1360 -140 { lab=GND}
N 1380 -100 1380 -90 { lab=#net1}
N 1380 -190 1380 -170 { lab=#net2}
N 1380 -270 1380 -250 { lab=#net3}
N 1380 -350 1380 -330 { lab=#net4}
N 1610 -30 1610 0 {lab=GND}
N 1780 -100 1780 -90 { lab=#net1}
N 1610 -100 1610 -90 { lab=#net1}
N 1550 -100 1550 -90 { lab=#net1}
N 1580 -60 1590 -60 { lab=GND}
N 1550 -30 1550 -0 { lab=GND}
N 1780 -30 1780 -0 { lab=GND}
N 1800 -60 1820 -60 { lab=GND}
N 1820 -60 1820 -0 { lab=GND}
N 1580 -60 1580 0 { lab=GND}
N 1580 0 1610 0 {lab=GND}
N 1610 0 1780 -0 {lab=GND}
N 1780 -0 1820 -0 {lab=GND}
N 1320 -380 1320 -300 { lab=GND}
N 1320 -300 1320 -220 { lab=GND}
N 1320 -220 1320 -140 { lab=GND}
N 1380 -110 1380 -100 { lab=#net1}
N 1550 -100 1610 -100 { lab=#net1}
N 1380 -100 1550 -100 { lab=#net1}
N 1570 -60 1580 -60 { lab=GND}
N 1380 0 1550 -0 {lab=GND}
N 1550 -0 1580 0 {lab=GND}
N 1610 -100 1780 -100 { lab=#net1}
N 910 -100 910 -80 {lab=q8}
N 930 -50 970 -50 { lab=GND}
N 740 -20 740 0 { lab=GND}
N 740 0 910 0 { lab=GND}
N 740 -100 740 -80 { lab=q8}
N 740 -100 910 -100 { lab=q8}
N 700 -50 720 -50 { lab=GND}
N 910 -20 910 0 {lab=GND}
N 970 -50 970 -0 { lab=GND}
N 910 -0 970 -0 { lab=GND}
N 970 -0 1320 -0 { lab=GND}
N 700 -50 700 -0 { lab=GND}
N 700 -0 740 -0 { lab=GND}
N 1380 -510 1380 -410 { lab=#net5}
N 1380 -600 1380 -570 { lab=GND}
N 1320 -600 1380 -600 { lab=GND}
N 1320 -600 1320 -380 { lab=GND}
N 740 -200 740 -90 { lab=q8}
N 740 -300 740 -260 { lab=GND}
N 700 -300 740 -300 { lab=GND}
N 700 -300 700 -50 { lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 1380 -60 0 0 {name=Rctat5a
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1380 -140 0 0 {name=Rctat4
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1380 -220 0 0 {name=Rctat3
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1380 -300 0 0 {name=Rctat2
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1380 -380 0 0 {name=Rctat1
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1550 -60 0 1 {name=Rctat5b
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1610 -60 0 0 {name=Rctat5c
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1780 -60 0 1 {name=Rctat5d
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 910 -50 0 1 {name=Rptat1b
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 740 -50 0 0 {name=Rptat1a
W=1
L=6.67
model=res_xhigh_po
spiceprefix=X
m=1}
C {lab_wire.sym} 910 -100 0 1 {name=l20 sig_type=std_logic lab=q8}
C {spice_probe.sym} 750 -100 0 0 {name=p9 analysis=tran voltage=6.624}
C {spice_probe.sym} 1380 -450 0 0 {name=p1 analysis=tran voltage=51.16}
C {code.sym} 280 -460 0 0 {name=simulation only_toplevel=false value="
.temp -40

.lib "sky130_fd_pr/models/sky130.lib.spice" ss
.include sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice

.save all 
.options savecurrents

.op

"}
C {isource.sym} 740 -230 0 0 {name=I0 value=1m}
C {isource.sym} 1380 -540 0 0 {name=I1 value=1m}
C {gnd.sym} 700 0 0 0 {name=l1 lab=GND}
