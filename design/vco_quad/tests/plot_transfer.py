import matplotlib.pyplot as plt
from pathlib import Path
import numpy as np
import os
import re

import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()

from PySpice.Spice.NgSpice.Shared import NgSpiceShared
from PySpice.Probe.Plot import plot
from PySpice.Unit import *

ngspice = NgSpiceShared.new_instance()


# read the generated netlist.
netlist_path = '/home/tom/.xschem/simulations/vco_quad_tb.spice'
with open(netlist_path) as f:
    netlist = f.read()


number_points = 64
vdd = 1.8


vctl = np.linspace(0, vdd, number_points)
freq = []


for current_vctl in vctl:

    print(current_vctl)

    # manipulate this line:
    #  .param vctl=0.9
    sub_string = ".param vctl=%f" % current_vctl
    netlist = re.sub(r'\.param vctl=.*', sub_string, netlist)

    # print(netlist)

    ngspice.load_circuit(netlist)
    ngspice.run()


    plot = ngspice.plot(simulation=None, plot_name=ngspice.last_plot)
    analysis = plot.to_analysis()



    # trim to steady state
    analysis_time = analysis._time[int(len(analysis._nodes['ip'])*0.5):]
    analysis_data = analysis._nodes['ip'][int(len(analysis._nodes['ip'])*0.5):]


    # plt.plot(analysis_time, analysis_data)
    # plt.show()


    # find first rising edge
    for i in range(2,len(analysis_data)):
        if (float(analysis_data[i]) > 0.9) and (float(analysis_data[i-1]) > 0.9) and (float(analysis_data[i-2]) < 0.9):
            first_index = i
            first_time = analysis_time[i]
            break

    # find second rising edge
    for i in range(first_index+3, len(analysis_data)):
        if (float(analysis_data[i]) > 0.9) and (float(analysis_data[i-1]) > 0.9) and (float(analysis_data[i-2]) < 0.9):
            second_index = i
            second_time = analysis_time[i]
            break

    # find third rising edge
    for i in range(second_index+3, len(analysis_data)):
        if (float(analysis_data[i]) > 0.9) and (float(analysis_data[i-1]) > 0.9) and (float(analysis_data[i-2]) < 0.9):
            third_index = i
            third_time = analysis_time[i]
            break


    freq.append(1/(third_time-second_time))


plt.plot(vctl, freq)
plt.show()

print(vctl)
print(freq)