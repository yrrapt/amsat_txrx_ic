v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 130 -380 250 -380 {lab=vdd}
N 250 -380 250 -350 {lab=vdd}
N 250 -380 490 -380 {lab=vdd}
N 490 -380 490 -350 {lab=vdd}
N 780 -380 780 -350 {lab=vdd}
N 490 -380 780 -380 {lab=vdd}
N 250 -130 250 -100 { lab=ptat1}
N 490 -130 490 -100 { lab=ptat2}
N 780 -130 780 -100 { lab=ctat}
N 130 -280 160 -280 { lab=ptat_int}
N 130 -200 160 -200 { lab=cas}
N 220 -60 250 -60 { lab=ptat1}
N 220 -20 250 -20 { lab=ptat2}
N 910 -280 940 -280 { lab=ctat_int}
N 870 -280 910 -280 { lab=ctat_int}
N 780 -100 780 -20 { lab=ctat}
N 780 -20 940 -20 { lab=ctat}
N 250 -100 250 -60 { lab=ptat1}
N 250 -20 490 -20 { lab=ptat2}
N 490 -100 490 -20 { lab=ptat2}
C {lab_wire.sym} 580 -280 0 1 {name=l2 sig_type=std_logic lab=ptat_int}
C {lab_wire.sym} 580 -200 0 1 {name=l5 sig_type=std_logic lab=cas}
C {lab_wire.sym} 870 -200 0 1 {name=l6 sig_type=std_logic lab=cas}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 250 -240 0 0 {name=xcurr_ptat8[8:1] m=1}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 490 -240 0 1 {name=xcurr_ptat1[8:1] m=1}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 780 -240 0 1 {name=xcurr_ctat[32:1] m=1}
C {iopin.sym} 130 -380 0 1 {name=p1 lab=vdd}
C {iopin.sym} 130 -280 0 1 {name=p2 lab=ptat_int}
C {iopin.sym} 130 -200 0 1 {name=p3 lab=cas}
C {iopin.sym} 220 -60 0 1 {name=p4 lab=ptat1}
C {iopin.sym} 220 -20 0 1 {name=p5 lab=ptat2}
C {iopin.sym} 940 -280 0 0 {name=p6 lab=ctat_int}
C {iopin.sym} 940 -20 0 0 {name=p7 lab=ctat}
