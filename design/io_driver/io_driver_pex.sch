v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {ipin.sym} 0 -560 0 0 {name=p8 lab=en}
C {ipin.sym} 0 -480 0 0 {name=p3 lab=bias_20u}
C {iopin.sym} 0 0 0 1 {name=p4 lab=vss}
C {iopin.sym} 0 -660 0 1 {name=p5 lab=vdd}
C {opin.sym} 1200 -420 0 0 {name=p6 lab=out_p}
C {opin.sym} 1200 -400 0 0 {name=p7 lab=out_n}
C {ipin.sym} 0 -180 0 0 {name=p1 lab=in_n}
C {ipin.sym} 0 -210 0 0 {name=p2 lab=in_p}
C {code_shown.sym} 160 -690 0 0 {name=s1 only_toplevel=false value="

* NGSPICE file created from io_driver.ext - technology: sky130A

.subckt sky130_fd_pr__res_xhigh_po_0p35_0-35_3-50 VSUBS a_n36_1150# a_n36_18#
X0 a_n36_18# a_n36_1150# VSUBS sky130_fd_pr__res_xhigh_po w=350000u l=3.5e+06u
C0 a_n36_18# VSUBS 0.35fF
C1 a_n36_1150# VSUBS 0.35fF
.ends

.subckt sky130_fd_pr__nfet_01v8_lvt_0-42_0-15 a_n73_n70# w_n99_n96# a_n33_36# a_15_n70#
X0 a_15_n70# a_n33_36# a_n73_n70# w_n99_n96# sky130_fd_pr__nfet_01v8_lvt ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
C0 a_15_n70# a_n33_36# 0.02fF
C1 a_15_n70# a_n73_n70# 0.15fF
C2 a_n33_36# a_n73_n70# 0.02fF
C3 a_15_n70# w_n99_n96# 0.03fF
C4 a_n73_n70# w_n99_n96# 0.03fF
C5 a_n33_36# w_n99_n96# 0.12fF
.ends

.subckt sky130_fd_sc_hs__inv_1 VGND Y VPWR A VPB VNB
X0 Y A VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=3.864e+11p ps=2.93e+06u w=1.12e+06u l=150000u
X1 Y A VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.109e+11p pd=2.05e+06u as=2.627e+11p ps=2.19e+06u w=740000u l=150000u
C0 VGND VPWR 0.01fF
C1 Y VGND 0.19fF
C2 VPWR VPB 0.02fF
C3 VPWR A 0.08fF
C4 Y A 0.26fF
C5 VGND A 0.08fF
C6 Y VPWR 0.24fF
C7 VGND VNB 0.37fF
C8 Y VNB 0.19fF
C9 VPWR VNB 0.36fF
C10 A VNB 0.36fF
C11 VPB VNB 0.41fF
.ends

.subckt sky130_fd_pr__cap_mim_m3_1_20-00_20-00 VSUBS c1_100_100# m3_0_0#
X0 c1_100_100# m3_0_0# sky130_fd_pr__cap_mim_m3_1 l=2e+07u w=2e+07u
C0 m3_0_0# c1_100_100# 39.78fF
C1 m3_0_0# VSUBS 8.90fF
.ends

.subckt sky130_fd_pr__nfet_01v8_lvt_1-00_0-15_nf2 w_n151_n126# a_n33_n100# a_63_n100#
+ a_n81_n188# a_n125_n100# a_15_122#
X0 a_n33_n100# a_n81_n188# a_n125_n100# w_n151_n126# sky130_fd_pr__nfet_01v8_lvt ad=3.3e+11p pd=2.66e+06u as=3.1e+11p ps=2.62e+06u w=1e+06u l=150000u
X1 a_63_n100# a_15_122# a_n33_n100# w_n151_n126# sky130_fd_pr__nfet_01v8_lvt ad=3.1e+11p pd=2.62e+06u as=0p ps=0u w=1e+06u l=150000u
C0 a_63_n100# a_n125_n100# 0.11fF
C1 a_n33_n100# a_63_n100# 0.29fF
C2 a_15_122# a_n81_n188# 0.02fF
C3 a_n33_n100# a_n125_n100# 0.29fF
C4 a_63_n100# w_n151_n126# 0.03fF
C5 a_n33_n100# w_n151_n126# 0.03fF
C6 a_n125_n100# w_n151_n126# 0.03fF
C7 a_n81_n188# w_n151_n126# 0.12fF
C8 a_15_122# w_n151_n126# 0.12fF
.ends

.subckt sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10 a_716_1110# w_n26_62# a_236_0#
+ a_188_88# a_572_88# a_620_0# a_92_88# a_908_1110# a_140_1110# a_284_88# a_956_88#
+ a_428_0# a_812_0# a_380_88# a_332_1110# a_668_88# a_0_88# a_524_1110# a_764_88#
+ a_44_0# a_476_88# a_860_88#
X0 a_92_88# a_44_0# a_0_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=1.55e+12p ps=1.062e+07u w=5e+06u l=150000u
X1 a_188_88# a_140_1110# a_92_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=0p ps=0u w=5e+06u l=150000u
X2 a_764_88# a_716_1110# a_668_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=1.65e+12p ps=1.066e+07u w=5e+06u l=150000u
X3 a_284_88# a_236_0# a_188_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=0p ps=0u w=5e+06u l=150000u
X4 a_956_88# a_908_1110# a_860_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=1.55e+12p pd=1.062e+07u as=1.65e+12p ps=1.066e+07u w=5e+06u l=150000u
X5 a_860_88# a_812_0# a_764_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=5e+06u l=150000u
X6 a_476_88# a_428_0# a_380_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=1.65e+12p pd=1.066e+07u as=1.65e+12p ps=1.066e+07u w=5e+06u l=150000u
X7 a_380_88# a_332_1110# a_284_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=5e+06u l=150000u
X8 a_668_88# a_620_0# a_572_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=1.65e+12p ps=1.066e+07u w=5e+06u l=150000u
X9 a_572_88# a_524_1110# a_476_88# w_n26_62# sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=5e+06u l=150000u
C0 a_380_88# a_0_88# 0.23fF
C1 a_668_88# a_380_88# 0.32fF
C2 a_668_88# a_956_88# 0.32fF
C3 a_572_88# a_188_88# 0.23fF
C4 a_476_88# a_284_88# 0.52fF
C5 a_428_0# a_812_0# 0.02fF
C6 a_428_0# a_620_0# 0.04fF
C7 a_908_1110# a_812_0# 0.02fF
C8 a_428_0# a_332_1110# 0.02fF
C9 a_620_0# a_524_1110# 0.02fF
C10 a_428_0# a_236_0# 0.04fF
C11 a_524_1110# a_332_1110# 0.04fF
C12 a_764_88# a_380_88# 0.23fF
C13 a_716_1110# a_908_1110# 0.04fF
C14 a_764_88# a_956_88# 0.52fF
C15 a_572_88# a_284_88# 0.32fF
C16 a_668_88# a_764_88# 1.44fF
C17 a_716_1110# a_524_1110# 0.04fF
C18 a_380_88# a_476_88# 1.44fF
C19 a_860_88# a_956_88# 1.44fF
C20 a_332_1110# a_140_1110# 0.04fF
C21 a_668_88# a_860_88# 0.52fF
C22 a_668_88# a_476_88# 0.52fF
C23 a_236_0# a_140_1110# 0.02fF
C24 a_428_0# a_524_1110# 0.02fF
C25 a_380_88# a_572_88# 0.52fF
C26 a_572_88# a_956_88# 0.23fF
C27 a_524_1110# a_908_1110# 0.02fF
C28 a_764_88# a_860_88# 1.44fF
C29 a_668_88# a_572_88# 1.44fF
C30 a_764_88# a_476_88# 0.32fF
C31 a_236_0# a_44_0# 0.04fF
C32 a_92_88# a_188_88# 1.44fF
C33 a_764_88# a_572_88# 0.52fF
C34 a_860_88# a_476_88# 0.23fF
C35 a_524_1110# a_140_1110# 0.02fF
C36 a_92_88# a_284_88# 0.52fF
C37 a_428_0# a_44_0# 0.02fF
C38 a_860_88# a_572_88# 0.32fF
C39 a_476_88# a_572_88# 1.44fF
C40 a_188_88# a_284_88# 1.44fF
C41 a_0_88# a_92_88# 1.44fF
C42 a_380_88# a_92_88# 0.32fF
C43 a_140_1110# a_44_0# 0.02fF
C44 a_0_88# a_188_88# 0.52fF
C45 a_380_88# a_188_88# 0.52fF
C46 a_0_88# a_284_88# 0.32fF
C47 a_620_0# a_812_0# 0.04fF
C48 a_380_88# a_284_88# 1.44fF
C49 a_668_88# a_284_88# 0.23fF
C50 a_476_88# a_92_88# 0.23fF
C51 a_620_0# a_236_0# 0.02fF
C52 a_716_1110# a_812_0# 0.02fF
C53 a_716_1110# a_620_0# 0.02fF
C54 a_236_0# a_332_1110# 0.02fF
C55 a_716_1110# a_332_1110# 0.02fF
C56 a_476_88# a_188_88# 0.32fF
C57 a_956_88# w_n26_62# 0.03fF
C58 a_860_88# w_n26_62# 0.03fF
C59 a_764_88# w_n26_62# 0.03fF
C60 a_668_88# w_n26_62# 0.03fF
C61 a_572_88# w_n26_62# 0.03fF
C62 a_476_88# w_n26_62# 0.03fF
C63 a_380_88# w_n26_62# 0.03fF
C64 a_284_88# w_n26_62# 0.03fF
C65 a_188_88# w_n26_62# 0.03fF
C66 a_92_88# w_n26_62# 0.03fF
C67 a_0_88# w_n26_62# 0.03fF
C68 a_812_0# w_n26_62# 0.12fF
C69 a_908_1110# w_n26_62# 0.12fF
C70 a_620_0# w_n26_62# 0.12fF
C71 a_716_1110# w_n26_62# 0.12fF
C72 a_428_0# w_n26_62# 0.12fF
C73 a_524_1110# w_n26_62# 0.12fF
C74 a_236_0# w_n26_62# 0.12fF
C75 a_332_1110# w_n26_62# 0.12fF
C76 a_44_0# w_n26_62# 0.12fF
C77 a_140_1110# w_n26_62# 0.12fF
.ends

*.subckt io_driver bias_20u vdd en in_n in_p vss out_n out_p
Xsky130_fd_pr__res_xhigh_po_0p35_0-35_3-50_0 vss m3_535_2996# m1_3156_3760# sky130_fd_pr__res_xhigh_po_0p35_0-35_3-50
Xsky130_fd_pr__res_xhigh_po_0p35_0-35_3-50_1 vss m4_3735_2549# m1_3156_3760# sky130_fd_pr__res_xhigh_po_0p35_0-35_3-50
Xsky130_fd_pr__nfet_01v8_lvt_0-42_0-15_0 m1_3156_3760# vss sky130_fd_sc_hs__inv_1_1/Y
+ vss sky130_fd_pr__nfet_01v8_lvt_0-42_0-15
Xsky130_fd_sc_hs__inv_1_0 vss sky130_fd_sc_hs__inv_1_0/Y vdd sky130_fd_sc_hs__inv_1_1/Y
+ vdd vss sky130_fd_sc_hs__inv_1
Xsky130_fd_sc_hs__inv_1_1 vss sky130_fd_sc_hs__inv_1_1/Y vdd en vdd vss sky130_fd_sc_hs__inv_1
Xsky130_fd_pr__cap_mim_m3_1_20-00_20-00_0 vss in_p m3_535_2996# sky130_fd_pr__cap_mim_m3_1_20-00_20-00
Xsky130_fd_pr__cap_mim_m3_1_20-00_20-00_1 vss in_n m4_3735_2549# sky130_fd_pr__cap_mim_m3_1_20-00_20-00
Xsky130_fd_pr__nfet_01v8_lvt_1-00_0-15_nf2_0 vss m1_3156_3760# vss sky130_fd_sc_hs__inv_1_0/Y
+ bias_20u m1_3156_3760# sky130_fd_pr__nfet_01v8_lvt_1-00_0-15_nf2
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_0[0|0] m3_535_2996# vss m3_535_2996# vss
+ vss m3_535_2996# out_p m3_535_2996# m3_535_2996# out_p vss m3_535_2996# m3_535_2996#
+ vss m3_535_2996# out_p vss m3_535_2996# vss m3_535_2996# out_p out_p sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_0[1|0] m3_535_2996# vss m3_535_2996# vss
+ vss m3_535_2996# out_p m3_535_2996# m3_535_2996# out_p vss m3_535_2996# m3_535_2996#
+ vss m3_535_2996# out_p vss m3_535_2996# vss m3_535_2996# out_p out_p sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_0[0|1] m3_535_2996# vss m3_535_2996# vss
+ vss m3_535_2996# out_p m3_535_2996# m3_535_2996# out_p vss m3_535_2996# m3_535_2996#
+ vss m3_535_2996# out_p vss m3_535_2996# vss m3_535_2996# out_p out_p sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_0[1|1] m3_535_2996# vss m3_535_2996# vss
+ vss m3_535_2996# out_p m3_535_2996# m3_535_2996# out_p vss m3_535_2996# m3_535_2996#
+ vss m3_535_2996# out_p vss m3_535_2996# vss m3_535_2996# out_p out_p sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_1[0|0] m4_3735_2549# vss m4_3735_2549#
+ vss vss m4_3735_2549# out_n m4_3735_2549# m4_3735_2549# out_n vss m4_3735_2549#
+ m4_3735_2549# vss m4_3735_2549# out_n vss m4_3735_2549# vss m4_3735_2549# out_n
+ out_n sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_1[1|0] m4_3735_2549# vss m4_3735_2549#
+ vss vss m4_3735_2549# out_n m4_3735_2549# m4_3735_2549# out_n vss m4_3735_2549#
+ m4_3735_2549# vss m4_3735_2549# out_n vss m4_3735_2549# vss m4_3735_2549# out_n
+ out_n sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_1[0|1] m4_3735_2549# vss m4_3735_2549#
+ vss vss m4_3735_2549# out_n m4_3735_2549# m4_3735_2549# out_n vss m4_3735_2549#
+ m4_3735_2549# vss m4_3735_2549# out_n vss m4_3735_2549# vss m4_3735_2549# out_n
+ out_n sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
Xsky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10_1[1|1] m4_3735_2549# vss m4_3735_2549#
+ vss vss m4_3735_2549# out_n m4_3735_2549# m4_3735_2549# out_n vss m4_3735_2549#
+ m4_3735_2549# vss m4_3735_2549# out_n vss m4_3735_2549# vss m4_3735_2549# out_n
+ out_n sky130_fd_pr__nfet_01v8_lvt_5-00_0-15_nf10
C0 sky130_fd_sc_hs__inv_1_0/Y vdd 0.15fF
C1 out_n m4_3735_2549# 7.77fF
C2 sky130_fd_sc_hs__inv_1_1/Y sky130_fd_sc_hs__inv_1_0/Y 6.22fF
C3 m1_3156_3760# m3_535_2996# 0.27fF
C4 m1_3156_3760# sky130_fd_sc_hs__inv_1_1/Y 0.11fF
C5 sky130_fd_sc_hs__inv_1_1/Y vdd 0.11fF
C6 m1_3156_3760# out_p 0.04fF
C7 sky130_fd_sc_hs__inv_1_0/Y m4_3735_2549# 0.16fF
C8 m1_3156_3760# m4_3735_2549# 0.15fF
C9 bias_20u sky130_fd_sc_hs__inv_1_0/Y 2.79fF
C10 sky130_fd_sc_hs__inv_1_0/Y en 0.02fF
C11 en vdd 0.02fF
C12 m3_535_2996# out_p 7.78fF
C13 m1_3156_3760# out_n 0.03fF
C14 m3_535_2996# m4_3735_2549# 0.19fF
C15 sky130_fd_sc_hs__inv_1_1/Y m4_3735_2549# 0.47fF
C16 bias_20u m3_535_2996# 0.09fF
C17 sky130_fd_sc_hs__inv_1_1/Y bias_20u 1.37fF
C18 sky130_fd_sc_hs__inv_1_1/Y en 0.22fF
C19 bias_20u m4_3735_2549# 0.09fF
C20 out_n vss 12.88fF
C21 out_p vss 12.57fF
C22 bias_20u vss 12.83fF
C23 in_n vss 0.22fF
C24 m4_3735_2549# vss 17.83fF
C25 in_p vss 0.01fF
C26 m3_535_2996# vss 13.26fF
C27 vdd vss 2.30fF
C28 en vss 0.50fF
C29 sky130_fd_sc_hs__inv_1_0/Y vss 2.99fF
C30 sky130_fd_sc_hs__inv_1_1/Y vss 2.49fF
C31 m1_3156_3760# vss 0.07fF
*.ends


"}
