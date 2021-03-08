v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 520 -160 620 -160 {lab=in_n}
N 520 -180 620 -180 {lab=in_p}
N 720 -340 720 -230 {lab=vdd}
N -0 -340 720 -340 {lab=vdd}
N -0 -340 0 -250 {lab=vdd}
N 0 -190 0 -0 {lab=0}
N 460 0 720 0 {lab=0}
N 720 -110 720 0 {lab=0}
N 1030 -320 1030 -230 {lab=vdd_tb}
N 100 -320 100 -250 {lab=vdd_tb}
N 460 -320 1030 -320 {lab=vdd_tb}
N 460 -320 460 -210 {lab=vdd_tb}
N 100 -190 100 0 {lab=0}
N 460 -130 460 0 {lab=0}
N 1030 -110 1030 0 {lab=0}
N 720 0 1030 0 {lab=0}
N 280 -160 280 -100 {lab=src_n}
N 280 -160 390 -160 {lab=src_n}
N 140 -180 140 -100 {lab=src_p}
N 140 -180 390 -180 {lab=src_p}
N 140 -40 140 0 {lab=0}
N 280 -40 280 -0 {lab=0}
N 820 -180 930 -180 {lab=out_p}
N 820 -160 930 -160 {lab=out_n}
N 1340 -320 1340 -230 {lab=vdd_tb}
N 1340 -110 1340 0 {lab=0}
N 1030 -320 1340 -320 {lab=vdd_tb}
N 1130 -180 1240 -180 {lab=out2_p}
N 1130 -160 1240 -160 {lab=out2_n}
N 1030 -0 1340 -0 {lab=0}
N 0 -0 100 0 {lab=0}
N 280 -0 460 0 {lab=0}
N 100 -320 460 -320 {lab=vdd_tb}
N 100 0 140 0 {lab=0}
N 140 0 280 -0 {lab=0}
C {code.sym} 890 -490 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.param temp=125
.temp 125

.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_cM02W1p65L0p15.spice
.lib sky130_fd_pr/models/sky130.lib.spice ss

.tran 0.01n 10n uic
.param vdd=1.8
.param rise_fall_time=10e-12
.param frequency=10e9

.options savecurrents
"}
C {vsource.sym} 0 -220 0 0 {name=Vdd value=vdd}
C {lab_wire.sym} 0 0 0 1 {name=l5 sig_type=std_logic lab=0}
C {divider_cml/divider_cml.sym} 720 -170 0 0 {name=x1}
C {rf_bufferdiff/rf_bufferdiff.sym} 460 -170 0 0 {name=x2}
C {divider_cml/divider_cml.sym} 1030 -170 0 0 {name=x3}
C {vsource.sym} 100 -220 0 0 {name=Vdd_tb value=vdd}
C {vsource.sym} 140 -70 0 0 {name=Vin_p value="pulse(0 \{vdd\} 0 rise_fall_time rise_fall_time \{0.5/frequency\} \{1.0/frequency\} 0)"}
C {vsource.sym} 280 -70 0 0 {name=Vin_n value="pulse(\{vdd\} 0 0 rise_fall_time rise_fall_time \{0.5/frequency\} \{1.0/frequency\} 0)"}
C {lab_wire.sym} 0 -340 0 1 {name=l1 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 100 -320 0 1 {name=l2 sig_type=std_logic lab=vdd_tb}
C {lab_wire.sym} 520 -180 0 1 {name=l3 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 520 -160 0 1 {name=l4 sig_type=std_logic lab=in_n}
C {lab_wire.sym} 820 -180 0 1 {name=l6 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 820 -160 0 1 {name=l7 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 280 -180 0 1 {name=l8 sig_type=std_logic lab=src_p}
C {lab_wire.sym} 280 -160 0 1 {name=l9 sig_type=std_logic lab=src_n}
C {lab_wire.sym} 820 -180 0 1 {name=l10 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 820 -160 0 1 {name=l11 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 820 -180 0 1 {name=l12 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 820 -160 0 1 {name=l13 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 1130 -180 0 1 {name=l14 sig_type=std_logic lab=out2_p}
C {lab_wire.sym} 1130 -160 0 1 {name=l15 sig_type=std_logic lab=out2_n}
C {divider_cml/divider_cml.sym} 1340 -170 0 0 {name=x4}
C {lab_wire.sym} 1440 -180 0 1 {name=l22 sig_type=std_logic lab=out4_p}
C {lab_wire.sym} 1440 -160 0 1 {name=l23 sig_type=std_logic lab=out4_n}
