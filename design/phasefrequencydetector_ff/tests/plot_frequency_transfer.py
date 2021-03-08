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
netlist_path = '/home/tom/.xschem/simulations/phasefrequencydetector_ff_tb.spice'
with open(netlist_path) as f:
    netlist = f.read()


number_points = 64
period_nom = 100e-9


period = np.linspace(0.51*period_nom, 1.99*period_nom, number_points)
frequency = []
voltage = []


for current_period in period:

    print("-"*200)
    print(current_period)

    # manipulate the parameter
    sub_string = ".param period=%fns" % (current_period*1e9)
    netlist = re.sub(r'\.param period=.*', sub_string, netlist)

    # print(netlist)

    ngspice.load_circuit(netlist)
    ngspice.run()


    plot = ngspice.plot(simulation=None, plot_name=ngspice.last_plot)
    analysis = plot.to_analysis()



    # trim to steady state
    analysis_time = analysis._time[10:]
    analysis_data_up = analysis._nodes['up'][10:]
    analysis_data_down = analysis._nodes['down'][10:]

    # plt.plot(analysis_time, analysis._nodes['ref'][10:])
    # plt.plot(analysis_time, analysis._nodes['fb'][10:])
    # plt.show()

    # plt.plot(analysis_time, analysis_data_up)
    # plt.plot(analysis_time, analysis_data_down)
    # plt.show()

    # find the average difference
    difference = []
    for i in range(len(analysis_data_up)):
        difference.append((analysis_data_up-analysis_data_down)/analysis._nodes['vdd'][10])

    control_value = np.mean(difference)
    print(control_value)

    frequency.append(1.0/current_period)
    voltage.append(control_value)

# calculate a line of best fit
line_m, line_c = np.polyfit(frequency, voltage, 1)
print(line_m, line_c)

plt.plot([_/1e6 for _ in frequency], voltage)
plt.plot([_/1e6 for _ in frequency], [line_m*_ + line_c for _ in frequency], '--')
plt.legend(['Measured Transfer', 'Line of Best Fit (m=%.3f, c=%.3f)' % (line_m, line_c)])
plt.grid()
plt.title('PFD Frequency Transfer Function')
plt.xlabel('Frequency (MHz)')
plt.ylabel('Ouput Voltage (Volts)')
plt.savefig('pfd_frequency_transfer.png', bbox_inches='tight')
plt.show()

print(frequency)
print(voltage)