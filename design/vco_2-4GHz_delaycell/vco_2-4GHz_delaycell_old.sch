v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 370 -300 410 -300 {lab=CTL}
N 80 -110 80 -80 {lab=OUTp}
N 290 -110 290 -80 {lab=OUTp}
N 340 -110 400 -50 {lab=OUTp}
N 340 -50 400 -110 {lab=OUTn}
N 290 -110 340 -110 {lab=OUTp}
N 330 -50 340 -50 {lab=OUTn}
N 450 -110 450 -80 {lab=OUTn}
N 400 -110 450 -110 {lab=OUTn}
N 400 -50 410 -50 {lab=OUTp}
N 660 -110 660 -80 {lab=OUTn}
N 660 -150 660 -110 {lab=OUTn}
N 640 -50 660 -50 {lab=GND}
N 660 -20 660 0 {lab=GND}
N 640 0 660 0 {lab=GND}
N 80 -20 80 0 {lab=GND}
N 80 -50 100 -50 {lab=GND}
N 100 -50 100 0 {lab=GND}
N 270 -50 290 -50 {lab=GND}
N 270 -50 270 0 {lab=GND}
N 290 -20 290 0 {lab=GND}
N 450 -20 450 0 {lab=GND}
N 450 -50 470 -50 {lab=GND}
N 470 -50 470 0 {lab=GND}
N 640 -50 640 0 {lab=GND}
N 270 -300 290 -300 {lab=VDD}
N 270 -400 270 -300 {lab=VDD}
N 290 -400 290 -330 {lab=VDD}
N 450 -300 470 -300 {lab=VDD}
N 470 -400 470 -300 {lab=VDD}
N 450 -400 450 -330 {lab=VDD}
N 290 -400 450 -400 {lab=VDD}
N 0 -50 40 -50 {lab=Pp}
N 700 -50 740 -50 {lab=Pn}
N 660 -150 740 -150 {lab=OUTn}
N 0 0 80 0 {lab=GND}
N 370 -300 370 -175 {lab=CTL}
N 0 -140 80 -140 {lab=OUTp}
N 0 -175 370 -175 {lab=CTL}
N 330 -300 370 -300 {lab=CTL}
N 80 -140 80 -110 {lab=OUTp}
N 80 0 100 0 {lab=GND}
N 150 -0 270 0 {lab=GND}
N 270 0 290 0 {lab=GND}
N 290 0 450 0 {lab=GND}
N 450 0 470 0 {lab=GND}
N 590 0 640 0 {lab=GND}
N 450 -400 470 -400 {lab=VDD}
N 80 -400 270 -400 {lab=VDD}
N 270 -400 290 -400 {lab=VDD}
N 60 -350 80 -350 {lab=VDD}
N 60 -400 60 -350 {lab=VDD}
N 80 -400 80 -380 {lab=VDD}
N 80 -200 80 -140 {lab=OUTp}
N 120 -350 150 -350 {lab=GND}
N 150 -350 150 -0 {lab=GND}
N 660 -350 680 -350 {lab=VDD}
N 680 -400 680 -350 {lab=VDD}
N 660 -400 660 -380 {lab=VDD}
N 660 -400 680 -400 {lab=VDD}
N 660 -200 660 -150 {lab=OUTn}
N 470 -400 660 -400 {lab=VDD}
N 590 -350 620 -350 {lab=GND}
N 590 -350 590 0 {lab=GND}
N 100 0 150 -0 {lab=GND}
N 470 0 590 0 {lab=GND}
N 0 -400 60 -400 {lab=VDD}
N 60 -400 80 -400 {lab=VDD}
N 660 -320 660 -300 {lab=OUTn}
N 80 -320 80 -300 {lab=OUTp}
N 80 -200 220 -200 { lab=OUTp}
N 220 -200 290 -200 { lab=OUTp}
N 450 -200 660 -200 { lab=OUTn}
N 290 -270 290 -200 { lab=OUTp}
N 450 -270 450 -200 { lab=OUTn}
N 80 -240 80 -200 { lab=OUTp}
N 660 -240 660 -200 { lab=OUTn}
N 450 -110 660 -110 { lab=OUTn}
N 80 -110 290 -110 { lab=OUTp}
N 80 -300 80 -240 { lab=OUTp}
N 660 -300 660 -240 { lab=OUTn}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 60 -50 0 0 {name=XMprimpos model=sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15 m=3}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 430 -50 0 0 {name=XMcrossneg model=sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 430 -300 0 0 {name=XMctlneg model=sky130_fd_pr__rf_pfet_01v8_lvt_aM04W5p00L0p35 m=2}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 310 -300 0 1 {name=XMctlpos model=sky130_fd_pr__rf_pfet_01v8_lvt_aM04W5p00L0p35 m=2}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 310 -50 0 1 {name=XMcrosspos model=sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 680 -50 0 1 {name=XMprimneg model=sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15 m=3}
C {ipin.sym} 0 -50 0 0 {name=p1 lab=Pp
}
C {ipin.sym} 740 -50 0 1 {name=p2 lab=Pn
}
C {opin.sym} 740 -150 0 0 {name=p5 lab=OUTn
}
C {opin.sym} 0 -140 0 1 {name=p6 lab=OUTp
}
C {iopin.sym} 0 -400 0 1 {name=p7 lab=VDD}
C {iopin.sym} 0 0 0 1 {name=p8 lab=GND
}
C {ipin.sym} 0 -175 0 0 {name=p9 lab=CTL}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 100 -350 0 1 {name=XMctlpos1 model=sky130_fd_pr__rf_pfet_01v8_aM02W5p00L0p25 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 640 -350 0 0 {name=XMctlneg1 model=sky130_fd_pr__rf_pfet_01v8_aM02W5p00L0p25 m=1}
