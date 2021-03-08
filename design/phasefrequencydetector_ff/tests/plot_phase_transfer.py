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
period = 100


delay = np.linspace(-period/2, period/2, number_points)
phase = []
voltage = []


for current_delay in delay:

    print("-"*200)
    print(current_delay)

    # manipulate the parameter
    sub_string = ".param delay=%fns" % current_delay
    netlist = re.sub(r'\.param delay=.*', sub_string, netlist)

    # print(netlist)

    ngspice.load_circuit(netlist)
    ngspice.run()


    plot = ngspice.plot(simulation=None, plot_name=ngspice.last_plot)
    analysis = plot.to_analysis()



    # trim to steady state
    analysis_time = analysis._time[10:]
    analysis_data_up = analysis._nodes['up'][10:]
    analysis_data_down = analysis._nodes['down'][10:]

    # find the average difference
    difference = []
    for i in range(len(analysis_data_up)):
        difference.append((analysis_data_up-analysis_data_down)/analysis._nodes['vdd'][10])

    control_value = np.mean(difference)
    print(control_value)

    phase.append(2*np.pi*current_delay/period)
    voltage.append(control_value)

# calculate a line of best fit
line_m, line_c = np.polyfit(phase, voltage, 1)
print(line_m, line_c)

plt.plot(phase, voltage)
plt.plot(phase, [line_m*_ + line_c for _ in phase], '--')
plt.legend(['Measured Transfer', 'Line of Best Fit (m=%.3f, c=%.3f)' % (line_m, line_c)])
plt.grid()
plt.title('PFD Phase Transfer Function')
plt.xlabel('Phase Difference (Radians)')
plt.ylabel('Ouput Voltage (Volts)')
plt.savefig('pfd_phase_transfer.png', bbox_inches='tight')
plt.show()

print(phase)
print(voltage)