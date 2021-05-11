v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {code_shown.sym} 20 -1040 0 0 {name=PEX only_toplevel=false value="

xpex vdda curr_bias clk data out_p out_n drive_load vss drive_supply cas_bias drive_bias vddd dac_unit_cell_pex_sub

* NGSPICE file created from dac_unit_cell.ext - technology: sky130A

.subckt sky130_fd_pr__nfet_01v8_lvt_0-42_8-00 a_n800_n130# a_n858_n42# a_800_n42#
+ w_n884_n68#
X0 a_800_n42# a_n800_n130# a_n858_n42# w_n884_n68# sky130_fd_pr__nfet_01v8_lvt ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=8e+06u
C0 a_800_n42# w_n884_n68# 0.03fF
C1 a_n858_n42# w_n884_n68# 0.03fF
C2 a_n800_n130# w_n884_n68# 1.73fF
.ends

.subckt sky130_fd_pr__pfet_01v8_0-84_0-15 VSUBS a_15_n84# w_n109_n184# a_n33_n181#
+ a_n73_n84#
X0 a_15_n84# a_n33_n181# a_n73_n84# w_n109_n184# sky130_fd_pr__pfet_01v8 ad=2.436e+11p pd=2.26e+06u as=2.436e+11p ps=2.26e+06u w=840000u l=150000u
C0 a_15_n84# a_n73_n84# 0.29fF
C1 a_15_n84# a_n33_n181# 0.03fF
C2 a_n33_n181# a_n73_n84# 0.03fF
C3 a_15_n84# VSUBS 0.03fF
C4 a_n73_n84# VSUBS 0.03fF
C5 a_n33_n181# VSUBS 0.20fF
C6 w_n109_n184# VSUBS 0.24fF
.ends

.subckt sky130_fd_sc_hs__inv_1 VGND Y VPWR A VPB VNB
X0 Y A VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=3.864e+11p ps=2.93e+06u w=1.12e+06u l=150000u
X1 Y A VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.109e+11p pd=2.05e+06u as=2.627e+11p ps=2.19e+06u w=740000u l=150000u
C0 VPWR VGND 0.01fF
C1 A VGND 0.08fF
C2 VPWR VPB 0.02fF
C3 Y VPWR 0.24fF
C4 Y A 0.26fF
C5 A VPWR 0.08fF
C6 Y VGND 0.19fF
C7 VGND VNB 0.37fF
C8 Y VNB 0.19fF
C9 VPWR VNB 0.36fF
C10 A VNB 0.36fF
C11 VPB VNB 0.41fF
.ends

.subckt sky130_fd_sc_hs__dfxtp_1 a_713_458# Q a_454_503# VGND a_1118_508# a_668_503#
+ a_206_368# a_27_74# VPWR CLK a_731_101# a_561_463# VPB a_1168_124# VNB a_1210_314#
+ D a_1011_424#
X0 VPWR CLK a_27_74# VPB sky130_fd_pr__pfet_01v8 ad=1.50923e+12p pd=1.272e+07u as=3.304e+11p ps=2.83e+06u w=1.12e+06u l=150000u
X1 a_561_463# a_206_368# a_454_503# VPB sky130_fd_pr__pfet_01v8 ad=1.967e+11p pd=2.01e+06u as=1.967e+11p ps=2.01e+06u w=420000u l=150000u
X2 VPWR a_1210_314# a_1118_508# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.995e+11p ps=1.79e+06u w=420000u l=150000u
X3 a_713_458# a_561_463# VPWR VPB sky130_fd_pr__pfet_01v8 ad=4.662e+11p pd=2.79e+06u as=0p ps=0u w=840000u l=150000u
X4 VPWR a_1011_424# a_1210_314# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=2.478e+11p ps=2.27e+06u w=840000u l=150000u
X5 Q a_1210_314# VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=0p ps=0u w=1.12e+06u l=150000u
X6 Q a_1210_314# VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.109e+11p pd=2.05e+06u as=1.27305e+12p ps=1.059e+07u w=740000u l=150000u
X7 a_668_503# a_27_74# a_561_463# VPB sky130_fd_pr__pfet_01v8 ad=1.008e+11p pd=1.32e+06u as=0p ps=0u w=420000u l=150000u
X8 VGND a_1011_424# a_1210_314# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=1.824e+11p ps=1.85e+06u w=640000u l=150000u
X9 a_731_101# a_206_368# a_561_463# VNB sky130_fd_pr__nfet_01v8_lvt ad=8.82e+10p pd=1.26e+06u as=1.575e+11p ps=1.73e+06u w=420000u l=150000u
X10 a_454_503# D VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=3.1125e+11p pd=2.43e+06u as=0p ps=0u w=420000u l=150000u
X11 a_1168_124# a_27_74# a_1011_424# VNB sky130_fd_pr__nfet_01v8_lvt ad=1.113e+11p pd=1.37e+06u as=2.362e+11p ps=2.07e+06u w=420000u l=150000u
X12 a_1118_508# a_206_368# a_1011_424# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=2.856e+11p ps=2.45e+06u w=420000u l=150000u
X13 VPWR a_713_458# a_668_503# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X14 VGND a_1210_314# a_1168_124# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X15 a_206_368# a_27_74# VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=0p ps=0u w=1.12e+06u l=150000u
X16 a_206_368# a_27_74# VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.553e+11p pd=2.17e+06u as=0p ps=0u w=740000u l=150000u
X17 a_713_458# a_561_463# VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.18125e+11p pd=2.05e+06u as=0p ps=0u w=550000u l=150000u
X18 a_1011_424# a_27_74# a_713_458# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X19 VGND a_713_458# a_731_101# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X20 a_1011_424# a_206_368# a_713_458# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=550000u l=150000u
X21 a_454_503# D VPWR VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X22 a_561_463# a_27_74# a_454_503# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X23 VGND CLK a_27_74# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=2.109e+11p ps=2.05e+06u w=740000u l=150000u
C0 D a_206_368# 0.42fF
C1 Q a_206_368# 0.02fF
C2 Q a_1210_314# 0.35fF
C3 D VGND 0.02fF
C4 Q VGND 0.13fF
C5 CLK a_206_368# 0.04fF
C6 VGND CLK 0.06fF
C7 a_1011_424# VPWR 0.12fF
C8 a_713_458# a_27_74# 0.59fF
C9 a_561_463# a_713_458# 0.51fF
C10 a_454_503# VPWR 0.02fF
C11 VPWR a_206_368# 1.00fF
C12 a_1210_314# VPWR 0.35fF
C13 D a_713_458# 0.02fF
C14 VGND VPWR 0.02fF
C15 a_206_368# a_1118_508# 0.03fF
C16 a_561_463# a_27_74# 0.87fF
C17 a_1011_424# a_206_368# 0.65fF
C18 a_713_458# VPWR 0.02fF
C19 a_1011_424# a_1210_314# 0.60fF
C20 a_1011_424# VGND 0.20fF
C21 a_454_503# a_206_368# 0.14fF
C22 D a_27_74# 0.20fF
C23 a_561_463# D 0.09fF
C24 VGND a_454_503# 0.02fF
C25 a_1210_314# a_206_368# 0.16fF
C26 VGND a_206_368# 0.24fF
C27 VGND a_1210_314# 0.39fF
C28 a_27_74# CLK 0.41fF
C29 VPWR VPB 0.11fF
C30 D CLK 0.02fF
C31 a_668_503# a_206_368# 0.03fF
C32 a_1011_424# a_713_458# 0.12fF
C33 a_27_74# VPWR 0.28fF
C34 a_561_463# VPWR 0.14fF
C35 a_454_503# a_713_458# 0.03fF
C36 a_713_458# a_206_368# 0.56fF
C37 a_1210_314# a_713_458# 0.03fF
C38 D VPWR 0.02fF
C39 VGND a_713_458# 0.06fF
C40 Q VPWR 0.24fF
C41 VPWR CLK 0.02fF
C42 VPB a_206_368# 0.02fF
C43 a_1011_424# a_27_74# 0.30fF
C44 a_1011_424# a_561_463# 0.03fF
C45 a_454_503# a_27_74# 0.17fF
C46 a_561_463# a_454_503# 0.34fF
C47 a_27_74# a_206_368# 1.29fF
C48 Q a_1011_424# 0.02fF
C49 a_561_463# a_206_368# 0.56fF
C50 a_1210_314# a_27_74# 0.11fF
C51 VGND a_27_74# 1.60fF
C52 a_561_463# a_1210_314# 0.03fF
C53 a_561_463# VGND 0.04fF
C54 a_731_101# a_27_74# 0.03fF
C55 D a_454_503# 0.26fF
C56 Q VNB 0.16fF
C57 a_1011_424# VNB 0.11fF
C58 VGND VNB 1.28fF
C59 a_454_503# VNB 0.12fF
C60 a_561_463# VNB 0.53fF
C61 a_713_458# VNB 0.49fF
C62 D VNB 0.39fF
C63 a_206_368# VNB 1.52fF
C64 a_27_74# VNB 1.51fF
C65 CLK VNB 0.24fF
C66 VPWR VNB 1.26fF
C67 VPB VNB 1.91fF
.ends

.subckt sky130_fd_pr__pfet_01v8_0-42_0-15_1g VSUBS a_n73_n61# w_n109_n123# a_15_n61#
+ a_n33_54#
X0 a_15_n61# a_n33_54# a_n73_n61# w_n109_n123# sky130_fd_pr__pfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
C0 a_n73_n61# a_15_n61# 0.15fF
C1 a_15_n61# a_n33_54# 0.01fF
C2 a_n73_n61# a_n33_54# 0.01fF
C3 a_15_n61# VSUBS 0.03fF
C4 a_n73_n61# VSUBS 0.03fF
C5 a_n33_54# VSUBS 0.12fF
C6 w_n109_n123# VSUBS 0.16fF
.ends

.subckt sky130_fd_pr__pfet_01v8_lvt_0-55_8-00 VSUBS a_n800_n152# a_800_n55# w_n894_n155#
+ a_n858_n55#
X0 a_800_n55# a_n800_n152# a_n858_n55# w_n894_n155# sky130_fd_pr__pfet_01v8_lvt ad=1.595e+11p pd=1.68e+06u as=1.595e+11p ps=1.68e+06u w=550000u l=8e+06u
C0 a_800_n55# VSUBS 0.03fF
C1 a_n858_n55# VSUBS 0.03fF
C2 a_n800_n152# VSUBS 1.82fF
C3 w_n894_n155# VSUBS 1.66fF
.ends

.subckt sky130_fd_pr__nfet_01v8_0-42_0-15_1g a_n73_n75# w_n99_n101# a_15_n75# a_n33_31#
X0 a_15_n75# a_n33_31# a_n73_n75# w_n99_n101# sky130_fd_pr__nfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
C0 a_n33_31# a_n73_n75# 0.02fF
C1 a_15_n75# a_n73_n75# 0.15fF
C2 a_15_n75# a_n33_31# 0.02fF
C3 a_15_n75# w_n99_n101# 0.03fF
C4 a_n73_n75# w_n99_n101# 0.03fF
C5 a_n33_31# w_n99_n101# 0.12fF
.ends

.subckt sky130_fd_pr__nfet_01v8_lvt_4-00_2-00 a_200_n400# w_n284_n426# a_n200_n488#
+ a_n258_n400#
X0 a_200_n400# a_n200_n488# a_n258_n400# w_n284_n426# sky130_fd_pr__nfet_01v8_lvt ad=1.16e+12p pd=8.58e+06u as=1.16e+12p ps=8.58e+06u w=4e+06u l=2e+06u
C0 a_200_n400# w_n284_n426# 0.03fF
C1 a_n258_n400# w_n284_n426# 0.03fF
C2 a_n200_n488# w_n284_n426# 0.51fF
.ends

.subckt sky130_fd_pr__nfet_01v8_0-84_0-15_1g a_n73_n117# w_n99_n143# a_n33_73# a_15_n117#
X0 a_15_n117# a_n33_73# a_n73_n117# w_n99_n143# sky130_fd_pr__nfet_01v8 ad=2.436e+11p pd=2.26e+06u as=2.436e+11p ps=2.26e+06u w=840000u l=150000u
C0 a_n33_73# a_n73_n117# 0.02fF
C1 a_15_n117# a_n73_n117# 0.29fF
C2 a_15_n117# a_n33_73# 0.02fF
C3 a_15_n117# w_n99_n143# 0.03fF
C4 a_n73_n117# w_n99_n143# 0.03fF
C5 a_n33_73# w_n99_n143# 0.12fF
.ends



* Top level circuit dac_unit_cell
.subckt dac_unit_cell_pex_sub  vdda curr_bias clk data out_p out_n drive_load vss drive_supply cas_bias
+  drive_bias vddd
Xsky130_fd_pr__nfet_01v8_lvt_0-42_8-00_0[0] drive_bias ctl_s vss vss sky130_fd_pr__nfet_01v8_lvt_0-42_8-00
Xsky130_fd_pr__nfet_01v8_lvt_0-42_8-00_0[1] ctl_s vss vss vss sky130_fd_pr__nfet_01v8_lvt_0-42_8-00
Xsky130_fd_pr__pfet_01v8_0-84_0-15_0 vss ctl_p vdda drive_load drive_supply sky130_fd_pr__pfet_01v8_0-84_0-15
Xsky130_fd_pr__pfet_01v8_0-84_0-15_1 vss ctl_n vdda drive_load drive_supply sky130_fd_pr__pfet_01v8_0-84_0-15
Xsky130_fd_sc_hs__inv_1_0 vss sky130_fd_sc_hs__inv_1_0/Y vddd data vddd vss sky130_fd_sc_hs__inv_1
Xsky130_fd_sc_hs__dfxtp_1_0 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# data_p sky130_fd_sc_hs__dfxtp_1_0/a_454_503#
+ vss sky130_fd_sc_hs__dfxtp_1_0/a_1118_508# sky130_fd_sc_hs__dfxtp_1_0/a_668_503#
+ sky130_fd_sc_hs__dfxtp_1_0/a_206_368# sky130_fd_sc_hs__dfxtp_1_0/a_27_74# vddd clk
+ sky130_fd_sc_hs__dfxtp_1_0/a_731_101# sky130_fd_sc_hs__dfxtp_1_0/a_561_463# vddd
+ sky130_fd_sc_hs__dfxtp_1_0/a_1168_124# vss sky130_fd_sc_hs__dfxtp_1_0/a_1210_314#
+ data sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# sky130_fd_sc_hs__dfxtp_1
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_0 vss a_250_7220# vdda out_p cas_bias sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_sc_hs__dfxtp_1_1 sky130_fd_sc_hs__dfxtp_1_1/a_713_458# data_n sky130_fd_sc_hs__dfxtp_1_1/a_454_503#
+ vss sky130_fd_sc_hs__dfxtp_1_1/a_1118_508# sky130_fd_sc_hs__dfxtp_1_1/a_668_503#
+ sky130_fd_sc_hs__dfxtp_1_1/a_206_368# sky130_fd_sc_hs__dfxtp_1_1/a_27_74# vddd clk
+ sky130_fd_sc_hs__dfxtp_1_1/a_731_101# sky130_fd_sc_hs__dfxtp_1_1/a_561_463# vddd
+ sky130_fd_sc_hs__dfxtp_1_1/a_1168_124# vss sky130_fd_sc_hs__dfxtp_1_1/a_1210_314#
+ sky130_fd_sc_hs__inv_1_0/Y sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# sky130_fd_sc_hs__dfxtp_1
Xpfet_01v8_lvt_0-55_8-00[0] vss curr_bias a_431_7381# vdda vdda sky130_fd_pr__pfet_01v8_lvt_0-55_8-00
Xpfet_01v8_lvt_0-55_8-00[1] vss curr_bias a_431_7381# vdda vdda sky130_fd_pr__pfet_01v8_lvt_0-55_8-00
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_1 vss a_431_7381# vdda a_250_7220# ctl_p sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-42_0-15_1g_0 ctl_s vss ctl_p data_p sky130_fd_pr__nfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_3 vss a_431_7220# vdda out_n cas_bias sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_2 vss a_431_7381# vdda a_431_7220# ctl_n sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__nfet_01v8_lvt_4-00_2-00_0 vss vss ctl_s vss sky130_fd_pr__nfet_01v8_lvt_4-00_2-00
Xsky130_fd_pr__nfet_01v8_0-42_0-15_1g_1 ctl_s vss ctl_n data_n sky130_fd_pr__nfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_0 m1_97_6342# vss data_n ctl_p sky130_fd_pr__nfet_01v8_0-84_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_2 ctl_n vss data_p m1_97_6342# sky130_fd_pr__nfet_01v8_0-84_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_1 m1_97_6342# vss data_p ctl_n sky130_fd_pr__nfet_01v8_0-84_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_3 ctl_p vss data_n m1_97_6342# sky130_fd_pr__nfet_01v8_0-84_0-15_1g
C0 m3_49_1697# sky130_fd_sc_hs__dfxtp_1_1/a_561_463# 0.09fF
C1 clk m3_49_n990# 0.12fF
C2 a_501_5998# ctl_s 0.02fF
C3 m3_49_1697# sky130_fd_sc_hs__dfxtp_1_1/a_27_74# 0.06fF
C4 ctl_p a_179_5998# 0.05fF
C5 a_431_7381# out_n 0.04fF
C6 ctl_p m1_97_6342# 0.23fF
C7 ctl_n drive_supply 0.20fF
C8 sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C9 drive_bias ctl_s 0.19fF
C10 m3_49_552# sky130_fd_sc_hs__inv_1_0/Y 0.14fF
C11 m3_49_1697# sky130_fd_sc_hs__dfxtp_1_1/a_713_458# 0.21fF
C12 ctl_p vdda 0.03fF
C13 m3_49_832# data_p 0.32fF
C14 vddd data_n 0.15fF
C15 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# clk 0.20fF
C16 drive_load ctl_n 0.68fF
C17 ctl_p out_n 0.16fF
C18 ctl_p a_431_7381# 0.05fF
C19 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# vddd 0.02fF
C20 sky130_fd_sc_hs__dfxtp_1_0/a_561_463# clk 0.13fF
C21 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C22 ctl_n data_p 0.23fF
C23 drive_supply m1_97_6342# 0.10fF
C24 data vddd 0.28fF
C25 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# clk 0.24fF
C26 curr_bias ctl_n 0.01fF
C27 vdda drive_supply 0.04fF
C28 cas_bias a_250_7220# 0.01fF
C29 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# sky130_fd_sc_hs__inv_1_0/Y 0.47fF
C30 sky130_fd_sc_hs__dfxtp_1_0/a_1118_508# sky130_fd_sc_hs__inv_1_0/Y 0.04fF
C31 drive_load m1_97_6342# 0.02fF
C32 ctl_s data_p 1.37fF
C33 out_n drive_supply 0.46fF
C34 a_250_7220# a_431_7220# 0.09fF
C35 sky130_fd_sc_hs__inv_1_0/Y m3_49_n710# 0.18fF
C36 cas_bias out_p 0.40fF
C37 sky130_fd_sc_hs__dfxtp_1_1/a_561_463# data_p 0.07fF
C38 m3_49_832# vddd 0.19fF
C39 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# data_p 0.62fF
C40 vddd m3_49_n990# 0.24fF
C41 ctl_n data_n 0.09fF
C42 drive_load vdda 0.01fF
C43 sky130_fd_sc_hs__dfxtp_1_0/a_668_503# sky130_fd_sc_hs__inv_1_0/Y 0.02fF
C44 m3_49_1977# sky130_fd_sc_hs__dfxtp_1_1/a_27_74# 0.08fF
C45 sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# clk 0.11fF
C46 a_179_5998# data_p 0.02fF
C47 cas_bias a_431_7220# 0.01fF
C48 drive_load out_n 0.36fF
C49 m3_49_552# clk 0.14fF
C50 data_p m1_97_6342# 0.22fF
C51 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.02fF
C52 sky130_fd_sc_hs__dfxtp_1_1/a_713_458# data_p 0.14fF
C53 data m3_49_n990# 0.38fF
C54 ctl_p drive_supply 0.20fF
C55 ctl_s data_n 3.06fF
C56 clk sky130_fd_sc_hs__inv_1_0/Y 0.62fF
C57 ctl_n a_250_7220# 0.01fF
C58 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# m3_49_n710# 0.29fF
C59 ctl_p drive_load 0.68fF
C60 curr_bias vdda 0.23fF
C61 ctl_n out_p 0.13fF
C62 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# clk 0.04fF
C63 sky130_fd_sc_hs__dfxtp_1_1/a_454_503# data_p 0.08fF
C64 ctl_n cas_bias 0.24fF
C65 data_n m1_97_6342# 0.22fF
C66 data_p sky130_fd_sc_hs__inv_1_0/Y 0.18fF
C67 m3_49_1697# sky130_fd_sc_hs__dfxtp_1_1/a_731_101# 0.02fF
C68 curr_bias a_431_7381# 0.12fF
C69 ctl_n a_431_7220# 0.04fF
C70 m3_49_832# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.25fF
C71 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# vddd 0.05fF
C72 ctl_p data_p 0.10fF
C73 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# vddd 0.02fF
C74 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# clk 0.14fF
C75 m3_49_1697# data_p 0.14fF
C76 m3_49_1977# m3_49_1697# 0.52fF
C77 clk m3_49_n710# 0.25fF
C78 ctl_p curr_bias 0.01fF
C79 data sky130_fd_sc_hs__dfxtp_1_0/a_206_368# 0.09fF
C80 drive_load drive_supply 0.14fF
C81 drive_bias data_p 1.60fF
C82 sky130_fd_sc_hs__dfxtp_1_1/a_1168_124# data_p 0.01fF
C83 m3_49_552# vddd 0.37fF
C84 m3_49_832# sky130_fd_sc_hs__dfxtp_1_1/a_27_74# 0.10fF
C85 ctl_p data_n 0.16fF
C86 vdda out_p 0.01fF
C87 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# sky130_fd_sc_hs__inv_1_0/Y 0.16fF
C88 vdda cas_bias 0.04fF
C89 data_p drive_supply 0.01fF
C90 vddd sky130_fd_sc_hs__inv_1_0/Y 0.62fF
C91 out_n out_p 0.73fF
C92 sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# data_p 0.44fF
C93 sky130_fd_sc_hs__dfxtp_1_0/a_454_503# sky130_fd_sc_hs__inv_1_0/Y 0.04fF
C94 out_n cas_bias 0.33fF
C95 m3_49_1977# sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# 0.17fF
C96 a_431_7381# out_p 0.04fF
C97 a_501_5998# data_n 0.02fF
C98 a_431_7381# cas_bias 0.06fF
C99 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.09fF
C100 drive_bias data_n 0.08fF
C101 ctl_p a_250_7220# 0.04fF
C102 m3_49_1697# sky130_fd_sc_hs__dfxtp_1_1/a_206_368# 0.15fF
C103 drive_load data_p 0.01fF
C104 data sky130_fd_sc_hs__inv_1_0/Y 0.47fF
C105 m3_49_552# m3_49_832# 0.52fF
C106 data_p clk 0.31fF
C107 m3_49_1697# vddd 0.24fF
C108 ctl_n m1_97_6342# 0.23fF
C109 ctl_p out_p 0.19fF
C110 data_p sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# 0.20fF
C111 ctl_p cas_bias 0.24fF
C112 data_n drive_supply 0.01fF
C113 m3_49_1977# sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# 0.22fF
C114 m3_49_832# sky130_fd_sc_hs__inv_1_0/Y 0.14fF
C115 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# vddd 0.06fF
C116 sky130_fd_sc_hs__inv_1_0/Y m3_49_n990# 0.21fF
C117 ctl_n vdda 0.03fF
C118 ctl_p a_431_7220# 0.01fF
C119 m3_49_552# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.19fF
C120 m3_49_1977# data_p 0.18fF
C121 ctl_s a_179_5998# 0.03fF
C122 vddd m3_49_n710# 0.22fF
C123 ctl_s m1_97_6342# 0.07fF
C124 ctl_n out_n 0.28fF
C125 drive_load data_n 0.02fF
C126 ctl_n a_431_7381# 0.05fF
C127 data sky130_fd_sc_hs__dfxtp_1_0/a_27_74# 0.14fF
C128 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C129 a_250_7220# drive_supply 0.01fF
C130 sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# vddd 0.01fF
C131 data m3_49_n710# 0.14fF
C132 out_p drive_supply 0.03fF
C133 data_p data_n 2.90fF
C134 ctl_p ctl_n 0.15fF
C135 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# 0.02fF
C136 cas_bias drive_supply 0.94fF
C137 m3_49_1977# data_n 0.02fF
C138 sky130_fd_sc_hs__dfxtp_1_0/a_561_463# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C139 clk vddd 0.04fF
C140 sky130_fd_sc_hs__dfxtp_1_0/a_454_503# clk 0.03fF
C141 m3_49_n990# m3_49_n710# 0.52fF
C142 drive_supply a_431_7220# 0.01fF
C143 drive_load out_p 0.12fF
C144 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# data_p 0.15fF
C145 ctl_n a_501_5998# 0.05fF
C146 drive_load cas_bias 0.05fF
C147 data clk 0.88fF
C148 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# sky130_fd_sc_hs__inv_1_0/Y 0.08fF
C149 m3_49_1977# sky130_fd_sc_hs__dfxtp_1_1/a_206_368# 0.14fF
C150 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# sky130_fd_sc_hs__inv_1_0/Y 0.44fF
C151 data_p vddd 0.19fF
C152 m3_49_1977# vddd 0.25fF
C153 vdda out_n 0.01fF
C154 m3_49_552# sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# 0.08fF
C155 m3_49_832# clk 0.43fF
C156 m3_49_n990# vss 0.13fF $ **FLOATING
C157 m3_49_n710# vss 0.18fF $ **FLOATING
C158 m3_49_552# vss 0.28fF $ **FLOATING
C159 m3_49_832# vss 0.02fF $ **FLOATING
C160 m3_49_1697# vss 0.30fF $ **FLOATING
C161 m3_49_1977# vss 0.41fF $ **FLOATING
C162 ctl_n vss 0.19fF
C163 ctl_p vss 0.85fF
C164 m1_97_6342# vss 0.37fF
C165 a_250_7220# vss 0.03fF
C166 curr_bias vss 18.15fF
C167 a_501_5998# vss 1.00fF $ **FLOATING
C168 a_179_5998# vss 1.00fF $ **FLOATING
C169 drive_load vss 0.89fF
C170 a_431_7220# vss 0.03fF
C171 a_431_7381# vss 0.17fF
C172 out_n vss 0.37fF
C173 data_n vss 0.75fF
C174 sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# vss 0.11fF
C175 sky130_fd_sc_hs__dfxtp_1_1/a_454_503# vss 0.12fF
C176 sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# vss 0.04fF
C177 sky130_fd_sc_hs__dfxtp_1_1/a_561_463# vss 0.53fF
C178 sky130_fd_sc_hs__dfxtp_1_1/a_713_458# vss 0.49fF
C179 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# vss 1.52fF
C180 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# vss 1.55fF
C181 out_p vss 0.46fF
C182 cas_bias vss 0.11fF
C183 data_p vss 0.49fF
C184 sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# vss 0.11fF
C185 sky130_fd_sc_hs__dfxtp_1_0/a_454_503# vss 0.12fF
C186 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# vss 0.02fF
C187 sky130_fd_sc_hs__dfxtp_1_0/a_561_463# vss 0.53fF
C188 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# vss 0.49fF
C189 data vss 1.37fF
C190 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# vss 1.53fF
C191 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# vss 1.57fF
C192 clk vss 0.71fF
C193 vddd vss 8.09fF
C194 sky130_fd_sc_hs__inv_1_0/Y vss 0.60fF
C195 drive_supply vss 0.36fF
C196 vdda vss 5.89fF
C197 ctl_s vss 0.45fF
C198 drive_bias vss 1.93fF
.ends
.end


"}
C {iopin.sym} -120 -930 2 0 {name=p1 lab=vdda}
C {iopin.sym} -120 0 2 0 {name=p2 lab=vss}
C {ipin.sym} -120 -790 0 0 {name=p3 lab=curr_bias}
C {ipin.sym} -120 -700 0 0 {name=p6 lab=drive_supply}
C {ipin.sym} -120 -310 0 0 {name=p9 lab=cas_bias}
C {ipin.sym} -120 -90 0 0 {name=p10 lab=drive_bias}
C {ipin.sym} -120 -650 0 0 {name=p11 lab=drive_load}
C {iopin.sym} -120 -1030 2 0 {name=p13 lab=vddd}
C {ipin.sym} -130 -500 0 0 {name=p4 lab=clk}
C {ipin.sym} -130 -480 0 0 {name=p5 lab=data}
C {opin.sym} -170 -170 0 0 {name=p7 lab=out_p}
C {opin.sym} -170 -210 0 0 {name=p8 lab=out_n}
