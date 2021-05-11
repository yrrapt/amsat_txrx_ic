v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {ipin.sym} 0 -620 0 0 {name=p1 lab=vctl}
C {iopin.sym} 0 0 0 1 {name=p2 lab=vss}
C {ipin.sym} 0 -200 0 0 {name=p3 lab=bias}
C {iopin.sym} 0 -520 0 1 {name=p4 lab=vdd}
C {iopin.sym} 700 -210 0 0 {name=p7 lab=ind_n}
C {iopin.sym} 700 -370 0 0 {name=p8 lab=ind_p}
C {code_shown.sym} 90 -660 0 0 {name=PEX only_toplevel=false value="

* NGSPICE file created from lc_oscillator_core.ext - technology: sky130A

.subckt sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8 a_351_n500# w_n439_n526# a_255_n500#
+ a_n413_n500# a_n273_522# a_n177_n588# a_159_n500# a_n81_522# a_15_n588# a_303_522#
+ a_n369_n588# a_n33_n500# a_207_n588# a_111_522# a_n321_n500# a_n225_n500# a_63_n500#
+ a_n129_n500#
X0 a_n225_n500# a_n273_522# a_n321_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=1.65e+12p ps=1.066e+07u w=5e+06u l=150000u
X1 a_n129_n500# a_n177_n588# a_n225_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=0p ps=0u w=5e+06u l=150000u
X2 a_n321_n500# a_n369_n588# a_n413_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=1.55e+12p ps=1.062e+07u w=5e+06u l=150000u
X3 a_159_n500# a_111_522# a_63_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=1.65e+12p ps=1.066e+07u w=5e+06u l=150000u
X4 a_255_n500# a_207_n588# a_159_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=0p ps=0u w=5e+06u l=150000u
X5 a_351_n500# a_303_522# a_255_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.55e+12p pd=1.062e+07u as=0p ps=0u w=5e+06u l=150000u
X6 a_n33_n500# a_n81_522# a_n129_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=0p ps=0u w=5e+06u l=150000u
X7 a_63_n500# a_15_n588# a_n33_n500# w_n439_n526# sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=5e+06u l=150000u
C0 a_n33_n500# a_63_n500# 1.44fF
C1 a_n273_522# a_111_522# 0.02fF
C2 a_n129_n500# a_255_n500# 0.23fF
C3 a_n413_n500# a_n129_n500# 0.32fF
C4 a_n321_n500# a_n225_n500# 1.44fF
C5 a_15_n588# a_n369_n588# 0.02fF
C6 a_111_522# a_303_522# 0.04fF
C7 a_n33_n500# a_159_n500# 0.52fF
C8 a_n273_522# a_n369_n588# 0.02fF
C9 a_n225_n500# a_n129_n500# 1.44fF
C10 a_n33_n500# a_255_n500# 0.32fF
C11 a_63_n500# a_159_n500# 1.44fF
C12 a_n413_n500# a_n33_n500# 0.23fF
C13 a_n225_n500# a_n33_n500# 0.52fF
C14 a_n81_522# a_111_522# 0.04fF
C15 a_n33_n500# a_351_n500# 0.23fF
C16 a_63_n500# a_255_n500# 0.52fF
C17 a_n225_n500# a_63_n500# 0.32fF
C18 a_n81_522# a_15_n588# 0.02fF
C19 a_159_n500# a_255_n500# 1.44fF
C20 a_63_n500# a_351_n500# 0.32fF
C21 a_n273_522# a_n81_522# 0.04fF
C22 a_n225_n500# a_159_n500# 0.23fF
C23 a_n177_n588# a_n369_n588# 0.04fF
C24 a_n81_522# a_303_522# 0.02fF
C25 a_n177_n588# a_15_n588# 0.04fF
C26 a_159_n500# a_351_n500# 0.52fF
C27 a_207_n588# a_111_522# 0.02fF
C28 a_n273_522# a_n177_n588# 0.02fF
C29 a_n413_n500# a_n225_n500# 0.52fF
C30 a_255_n500# a_351_n500# 1.44fF
C31 a_207_n588# a_15_n588# 0.04fF
C32 a_n321_n500# a_n129_n500# 0.52fF
C33 a_207_n588# a_303_522# 0.02fF
C34 a_n321_n500# a_n33_n500# 0.32fF
C35 a_n81_522# a_n177_n588# 0.02fF
C36 a_n129_n500# a_n33_n500# 1.44fF
C37 a_n321_n500# a_63_n500# 0.23fF
C38 a_n129_n500# a_63_n500# 0.52fF
C39 a_207_n588# a_n177_n588# 0.02fF
C40 a_n129_n500# a_159_n500# 0.32fF
C41 a_111_522# a_15_n588# 0.02fF
C42 a_n413_n500# a_n321_n500# 1.44fF
C43 a_351_n500# w_n439_n526# 0.03fF
C44 a_255_n500# w_n439_n526# 0.03fF
C45 a_159_n500# w_n439_n526# 0.03fF
C46 a_63_n500# w_n439_n526# 0.03fF
C47 a_n33_n500# w_n439_n526# 0.03fF
C48 a_n129_n500# w_n439_n526# 0.03fF
C49 a_n225_n500# w_n439_n526# 0.03fF
C50 a_n321_n500# w_n439_n526# 0.03fF
C51 a_n413_n500# w_n439_n526# 0.03fF
C52 a_207_n588# w_n439_n526# 0.12fF
C53 a_303_522# w_n439_n526# 0.12fF
C54 a_15_n588# w_n439_n526# 0.12fF
C55 a_111_522# w_n439_n526# 0.12fF
C56 a_n177_n588# w_n439_n526# 0.12fF
C57 a_n81_522# w_n439_n526# 0.12fF
C58 a_n369_n588# w_n439_n526# 0.12fF
C59 a_n273_522# w_n439_n526# 0.12fF
.ends

.subckt lc_oscillator_cascode_ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522#
+ VSUBS m1_28_951# m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588#
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0 m1_28_951# VSUBS m1_124_669# m1_28_951#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588#
+ m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588#
+ m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522#
+ m1_124_669# m1_28_951# m1_124_669# m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8
C0 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588# m1_124_669# 0.05fF
C1 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# m1_28_951# 0.05fF
C2 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522# m1_124_669# 0.05fF
C3 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# m1_124_669# 0.05fF
C4 m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# 0.05fF
C5 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# m1_28_951# 0.05fF
C6 m1_28_951# m1_124_669# 4.34fF
C7 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# m1_28_951# 0.05fF
C8 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# m1_124_669# 0.05fF
C9 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# m1_28_951# 0.05fF
C10 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588# m1_28_951# 0.05fF
C11 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522# m1_28_951# 0.05fF
C12 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# m1_124_669# 0.05fF
C13 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# m1_124_669# 0.05fF
C14 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# m1_28_951# 0.05fF
C15 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# m1_124_669# 0.05fF
C16 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# m1_124_669# 0.05fF
C17 m1_124_669# VSUBS 0.20fF
C18 m1_28_951# VSUBS 0.19fF
C19 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# VSUBS 0.12fF
C20 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# VSUBS 0.12fF
C21 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# VSUBS 0.12fF
C22 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522# VSUBS 0.12fF
C23 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588# VSUBS 0.12fF
C24 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# VSUBS 0.12fF
C25 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# VSUBS 0.12fF
C26 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# VSUBS 0.12fF
.ends

.subckt sky130_fd_pr__cap_mim_m3_1_6-00_6-00 VSUBS m3_n749_n700# c1_n649_n600#
X0 c1_n649_n600# m3_n749_n700# sky130_fd_pr__cap_mim_m3_1 l=6e+06u w=6e+06u
C0 c1_n649_n600# m3_n749_n700# 4.78fF
C1 m3_n749_n700# VSUBS 1.82fF
.ends

.subckt sky130_fd_pr__nfet_01v8_lvt_5-00_0-50 w_n134_n526# a_n50_n588# a_n108_n500#
+ a_50_n500#
X0 a_50_n500# a_n50_n588# a_n108_n500# w_n134_n526# sky130_fd_pr__nfet_01v8_lvt ad=1.45e+12p pd=1.058e+07u as=1.45e+12p ps=1.058e+07u w=5e+06u l=500000u
C0 a_n108_n500# a_50_n500# 0.67fF
C1 a_50_n500# w_n134_n526# 0.03fF
C2 a_n108_n500# w_n134_n526# 0.03fF
C3 a_n50_n588# w_n134_n526# 0.21fF
.ends

.subckt lc_oscillator_current_ m1_180_574# w_n124_n146# m1_87_0# m1_180_2226#
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|0] w_n124_n146# m1_87_0# w_n124_n146# m1_180_574#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|0] w_n124_n146# m1_87_0# w_n124_n146# m1_180_2226#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|1] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|1] w_n124_n146# m1_87_0# m1_180_2226# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|2] w_n124_n146# m1_87_0# w_n124_n146# m1_180_574#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|2] w_n124_n146# m1_87_0# w_n124_n146# m1_180_2226#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|3] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|3] w_n124_n146# m1_87_0# m1_180_2226# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|4] w_n124_n146# m1_87_0# w_n124_n146# m1_180_574#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|4] w_n124_n146# m1_87_0# w_n124_n146# m1_180_2226#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|5] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|5] w_n124_n146# m1_87_0# m1_180_2226# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|6] w_n124_n146# m1_87_0# w_n124_n146# m1_180_574#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|6] w_n124_n146# m1_87_0# w_n124_n146# m1_180_2226#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|7] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|7] w_n124_n146# m1_87_0# m1_180_2226# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|8] w_n124_n146# m1_87_0# w_n124_n146# m1_180_574#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|8] w_n124_n146# m1_87_0# w_n124_n146# m1_180_2226#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|9] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|9] w_n124_n146# m1_87_0# m1_180_2226# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|10] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|10] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|11] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|11] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|12] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|12] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|13] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|13] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|14] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|14] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|15] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|15] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|16] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_87_0# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|16] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|17] w_n124_n146# m1_87_0# m1_87_0# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|17] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|18] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|18] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|19] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|19] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|20] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|20] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|21] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|21] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|22] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|22] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|23] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|23] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|24] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|24] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|25] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|25] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|26] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|26] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|27] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|27] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|28] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|28] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|29] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|29] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|30] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|30] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|31] w_n124_n146# m1_87_0# m1_180_574# w_n124_n146#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|31] w_n124_n146# m1_87_0# m1_180_2226#
+ w_n124_n146# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[0|32] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_574# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-50_0[1|32] w_n124_n146# m1_87_0# w_n124_n146#
+ m1_180_2226# sky130_fd_pr__nfet_01v8_lvt_5-00_0-50
C0 m1_180_2226# m1_180_574# 1.28fF
C1 m1_180_2226# m1_87_0# 6.92fF
C2 m1_180_574# m1_87_0# 9.44fF
C3 m1_87_0# w_n124_n146# 31.92fF
C4 m1_180_574# w_n124_n146# 26.95fF
C5 m1_180_2226# w_n124_n146# 28.68fF
.ends

.subckt lc_oscillator_xcoupled_ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522#
+ VSUBS sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588#
+ m1_124_669# m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588#
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0 m1_28_951# VSUBS m1_124_669# m1_28_951#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588#
+ m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588#
+ sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588#
+ m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522#
+ m1_124_669# m1_28_951# m1_124_669# m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8
C0 m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# 0.05fF
C1 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522# m1_124_669# 0.05fF
C2 m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# 0.05fF
C3 m1_124_669# m1_28_951# 4.00fF
C4 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# m1_28_951# 0.05fF
C5 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# m1_124_669# 0.05fF
C6 m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588# 0.05fF
C7 m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588# 0.05fF
C8 m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# 0.05fF
C9 m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# 0.05fF
C10 m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# 0.05fF
C11 m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# 0.05fF
C12 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# m1_28_951# 0.05fF
C13 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# m1_124_669# 0.05fF
C14 m1_28_951# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# 0.05fF
C15 m1_124_669# sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# 0.05fF
C16 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522# m1_28_951# 0.05fF
C17 m1_124_669# VSUBS 0.42fF
C18 m1_28_951# VSUBS 0.29fF
C19 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_207_n588# VSUBS 0.12fF
C20 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_303_522# VSUBS 0.12fF
C21 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_15_n588# VSUBS 0.12fF
C22 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_111_522# VSUBS 0.12fF
C23 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n177_n588# VSUBS 0.12fF
C24 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n81_522# VSUBS 0.12fF
C25 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n369_n588# VSUBS 0.12fF
C26 sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf8_0/a_n273_522# VSUBS 0.12fF
.ends

.subckt lc_oscillator_lower_ m1_1219_1162# m1_447_174# m3_1224_880# lc_oscillator_xcoupled__1/VSUBS
Xlc_oscillator_xcoupled__0 m1_1219_1162# lc_oscillator_xcoupled__1/VSUBS m1_1219_1162#
+ m1_1219_1162# m3_1224_880# m1_447_174# m1_1219_1162# m1_1219_1162# m1_1219_1162#
+ m1_1219_1162# m1_1219_1162# lc_oscillator_xcoupled_
Xlc_oscillator_xcoupled__1 m1_447_174# lc_oscillator_xcoupled__1/VSUBS m1_447_174#
+ m1_447_174# m3_1224_880# m1_1219_1162# m1_447_174# m1_447_174# m1_447_174# m1_447_174#
+ m1_447_174# lc_oscillator_xcoupled_
C0 m1_1219_1162# m3_1224_880# 1.03fF
C1 m1_447_174# m1_1219_1162# 2.83fF
C2 m1_447_174# m3_1224_880# 0.78fF
C3 m1_1219_1162# lc_oscillator_xcoupled__1/VSUBS 4.40fF
C4 m3_1224_880# lc_oscillator_xcoupled__1/VSUBS 0.88fF
C5 m1_447_174# lc_oscillator_xcoupled__1/VSUBS 3.40fF
.ends

.subckt sky130_fd_pr__pfet_01v8_4-00_4-00 VSUBS a_n458_n400# w_n494_n500# a_400_n400#
+ a_n400_n497#
X0 a_400_n400# a_n400_n497# a_n458_n400# w_n494_n500# sky130_fd_pr__pfet_01v8 ad=1.16e+12p pd=8.58e+06u as=1.16e+12p ps=8.58e+06u w=4e+06u l=4e+06u
C0 a_400_n400# VSUBS 0.03fF
C1 a_n458_n400# VSUBS 0.03fF
C2 a_n400_n497# VSUBS 0.97fF
C3 w_n494_n500# VSUBS 2.96fF
.ends

.subckt lc_oscillator_varactor_ VSUBS contact$37_2/m1_n26_n384# contact$37_3/m1_n26_n384#
+ w_0_0#
Xsky130_fd_pr__pfet_01v8_4-00_4-00_0[0] VSUBS w_0_0# w_0_0# w_0_0# contact$37_3/m1_n26_n384#
+ sky130_fd_pr__pfet_01v8_4-00_4-00
Xsky130_fd_pr__pfet_01v8_4-00_4-00_0[1] VSUBS w_0_0# w_0_0# w_0_0# contact$37_2/m1_n26_n384#
+ sky130_fd_pr__pfet_01v8_4-00_4-00
C0 w_0_0# contact$37_3/m1_n26_n384# 0.86fF
C1 contact$37_3/m1_n26_n384# contact$37_2/m1_n26_n384# 0.28fF
C2 w_0_0# contact$37_2/m1_n26_n384# 0.90fF
C3 w_0_0# VSUBS 14.15fF
C4 contact$37_3/m1_n26_n384# VSUBS 2.36fF
C5 contact$37_2/m1_n26_n384# VSUBS 2.36fF
.ends


* Top level circuit lc_oscillator_core

Xlc_oscillator_cascode__0 vdd vss ind_p m4_n71_3164# vdd vdd vdd vdd vdd vdd vdd lc_oscillator_cascode_
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_7 vss m4_n71_3164# ind_p sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xlc_oscillator_cascode__1 vdd vss ind_n m4_4623_6058# vdd vdd vdd vdd vdd vdd vdd
+ lc_oscillator_cascode_
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_8 vss sky130_fd_pr__cap_mim_m3_1_6-00_6-00_9/m3_n749_n700#
+ m4_4623_6058# sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_9 vss sky130_fd_pr__cap_mim_m3_1_6-00_6-00_9/m3_n749_n700#
+ m4_n71_3164# sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xlc_oscillator_current__0 m2_n89_n2022# vss bias m2_n89_n2022# lc_oscillator_current_
Xlc_oscillator_lower__0 m4_n71_3164# m4_4623_6058# m2_n89_n2022# vss lc_oscillator_lower_
Xlc_oscillator_varactor__0 vss ind_n ind_p vctl lc_oscillator_varactor_
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_0 vss m4_4623_6058# ind_n sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_1 vss m4_4623_6058# ind_n sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_2 vss m4_4623_6058# ind_n sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_3 vss m4_4623_6058# ind_n sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_4 vss m4_n71_3164# ind_p sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_5 vss m4_n71_3164# ind_p sky130_fd_pr__cap_mim_m3_1_6-00_6-00
Xsky130_fd_pr__cap_mim_m3_1_6-00_6-00_6 vss m4_n71_3164# ind_p sky130_fd_pr__cap_mim_m3_1_6-00_6-00
C0 m4_4623_6058# vdd 0.60fF
C1 ind_p li_562_3678# 0.95fF
C2 m4_n71_3164# ind_n 0.28fF
C3 m4_4623_6058# m4_n71_3164# 1.28fF
C4 m4_4623_6058# ind_n 1.02fF
C5 vdd ind_p 1.04fF
C6 ind_p m4_n71_3164# 2.80fF
C7 ind_p ind_n 1.15fF
C8 vctl li_562_3678# 1.00fF
C9 m4_4623_6058# ind_p 0.28fF
C10 m2_n89_n2022# m4_n71_3164# 1.30fF
C11 vdd vctl 0.57fF
C12 m2_n89_n2022# m4_4623_6058# 0.68fF
C13 vctl m4_n71_3164# 0.04fF
C14 vctl ind_n 4.06fF
C15 m4_4623_6058# vctl 0.04fF
C16 vctl ind_p 2.05fF
C17 sky130_fd_pr__cap_mim_m3_1_6-00_6-00_9/m3_n749_n700# m4_n71_3164# 0.89fF
C18 sky130_fd_pr__cap_mim_m3_1_6-00_6-00_9/m3_n749_n700# m4_4623_6058# 0.15fF
C19 vdd li_562_3678# 0.37fF
C20 m4_n71_3164# li_562_3678# 0.51fF
C21 ind_n li_562_3678# 0.95fF
C22 m4_4623_6058# li_562_3678# 0.51fF
C23 vdd m4_n71_3164# 0.60fF
C24 vdd ind_n 1.04fF
C25 m2_n89_n2022# bias 0.87fF
C26 li_562_3678# vss 4.01fF $ **FLOATING
C27 vctl vss 15.43fF
C28 m4_n71_3164# vss 1.05fF
C29 m4_4623_6058# vss 7.41fF
C30 bias vss 20.21fF
C31 m2_n89_n2022# vss 18.76fF
C32 sky130_fd_pr__cap_mim_m3_1_6-00_6-00_9/m3_n749_n700# vss 4.52fF
C33 ind_n vss 5.55fF
C34 vdd vss 3.14fF
C35 ind_p vss 0.75fF
.end


"}
