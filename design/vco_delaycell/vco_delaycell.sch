v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 370 -240 410 -240 {lab=CTL}
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
N 270 -240 290 -240 {lab=VDD}
N 270 -290 270 -240 {lab=VDD}
N 290 -290 290 -270 {lab=VDD}
N 450 -240 470 -240 {lab=VDD}
N 470 -290 470 -240 {lab=VDD}
N 450 -290 450 -270 {lab=VDD}
N 290 -290 450 -290 {lab=VDD}
N 0 -50 40 -50 {lab=Pp}
N 700 -50 740 -50 {lab=Pn}
N 660 -150 740 -150 {lab=OUTn}
N 0 0 80 0 {lab=GND}
N 370 -240 370 -175 {lab=CTL}
N 0 -140 80 -140 {lab=OUTp}
N 0 -175 370 -175 {lab=CTL}
N 330 -240 370 -240 {lab=CTL}
N 80 -140 80 -110 {lab=OUTp}
N 80 0 100 0 {lab=GND}
N 100 0 270 0 {lab=GND}
N 270 0 290 0 {lab=GND}
N 290 0 450 0 {lab=GND}
N 450 0 470 0 {lab=GND}
N 470 0 640 0 {lab=GND}
N 80 -110 290 -110 {lab=OUTp}
N 450 -110 660 -110 {lab=OUTn}
N 450 -290 470 -290 {lab=VDD}
N 0 -290 270 -290 {lab=VDD}
N 270 -290 290 -290 {lab=VDD}
N 60 -240 80 -240 {lab=VDD}
N 60 -290 60 -240 {lab=VDD}
N 80 -290 80 -270 {lab=VDD}
N 60 -290 80 -290 {lab=VDD}
N 80 -210 80 -140 {lab=OUTp}
N 120 -240 150 -240 {lab=GND}
N 150 -240 150 -0 {lab=GND}
N 80 -190 290 -190 {lab=OUTp}
N 290 -210 290 -190 {lab=OUTp}
N 660 -240 680 -240 {lab=VDD}
N 680 -290 680 -240 {lab=VDD}
N 660 -290 660 -270 {lab=VDD}
N 660 -290 680 -290 {lab=VDD}
N 450 -210 450 -190 {lab=OUTn}
N 450 -190 660 -190 {lab=OUTn}
N 660 -210 660 -190 {lab=OUTn}
N 660 -190 660 -150 {lab=OUTn}
N 470 -290 660 -290 {lab=VDD}
N 590 -240 620 -240 {lab=GND}
N 590 -240 590 0 {lab=GND}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 60 -50 0 0 {name=XMprimpos model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15 m=3
}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 430 -50 0 0 {name=XMcrossneg model=sky130_fd_pr__rf_nfet_01v8_bM02W1p65L0p15 m=1
}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 430 -240 0 0 {name=XMctlneg model=sky130_fd_pr__rf_pfet_01v8_aF02W5p00L0p15 m=2}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 310 -240 0 1 {name=XMctlpos model=sky130_fd_pr__rf_pfet_01v8_aF02W5p00L0p15 m=2
}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 310 -50 0 1 {name=XMcrosspos model=sky130_fd_pr__rf_nfet_01v8_bM02W1p65L0p15 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 680 -50 0 1 {name=XMprimneg model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15 m=3
}
C {ipin.sym} 0 -50 0 0 {name=p1 lab=Pp
}
C {ipin.sym} 740 -50 0 1 {name=p2 lab=Pn
}
C {opin.sym} 740 -150 0 0 {name=p5 lab=OUTn
}
C {opin.sym} 0 -140 0 1 {name=p6 lab=OUTp
}
C {iopin.sym} 0 -290 0 1 {name=p7 lab=VDD}
C {iopin.sym} 0 0 0 1 {name=p8 lab=GND
}
C {ipin.sym} 0 -175 0 0 {name=p9 lab=CTL}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 100 -240 0 1 {name=XMctlpos1 model=sky130_fd_pr__rf_pfet_01v8_aF02W0p84L0p15 m=1
}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_pfet.sym} 640 -240 0 0 {name=XMctlneg1 model=sky130_fd_pr__rf_pfet_01v8_aF02W0p84L0p15 m=1}
