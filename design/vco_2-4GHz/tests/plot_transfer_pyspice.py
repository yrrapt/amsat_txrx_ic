import matplotlib.pyplot as plt
from pathlib import Path
import numpy as np
import os
import re
import h5py

import PySpice.Logging.Logging as Logging
logger = Logging.setup_logging()

from PySpice.Spice.NgSpice.Shared import NgSpiceShared
from PySpice.Probe.Plot import plot
from PySpice.Unit import *




# read the generated netlist.
netlist_path = os.environ.get('HOME') + '/.xschem/simulations/vco_2-4GHz_tb.spice'
with open(netlist_path) as f:
    netlist = f.read()

# only saver the Ip node to avoid using lots of memory
# netlist += '.save v(ip)'



number_points = 32
vdd = [1.8]


corners = ['tt', 'sf', 'ff', 'ss', 'fs', 'll', 'hh', 'hl', 'lh']
temp = [-40, 27, 125]

# corners = ['ff', 'ss']
# temp = [-40, 125]


vctl = np.linspace(0, vdd, number_points)
freq = []


def set_parameters(netlist, vctl, corner, temp, vdd):

    print("NEW PARAMETER SET: vctl = %f, corner = %s, temp = %f, vdd = %f" % (vctl, corner, temp, vdd))

    # VCO control voltage 
    sub_string = ".param vctl=%f" % vctl
    netlist = re.sub(r'\.param vctl=.*', sub_string, netlist)

    # corner
    sub_string = ".lib sky130_fd_pr/models/sky130.lib.spice %s" % corner
    netlist = re.sub(r'\.lib sky130_fd_pr/models/sky130.lib.spice .*', sub_string, netlist)

    # temperature
    sub_string = ".param temp=%f" % temp
    netlist = re.sub(r'\.param temp=.*', sub_string, netlist)
    sub_string = ".temp %f" % temp
    netlist = re.sub(r'\.temp .*', sub_string, netlist)

    # supply voltage 
    sub_string = ".param vdd=%f" % vdd
    netlist = re.sub(r'\.param vdd=.*', sub_string, netlist)

    return netlist


hdf_file = h5py.File('vco_2-4GHz_corners.hdf5', 'w')

# prepopulate the data
values = np.zeros((len(vdd), len(corners), len(temp), number_points))

for vdd_i, current_vdd in enumerate(vdd):
    for corner_i, current_corner in enumerate(corners):
        for temp_i, current_temp in enumerate(temp):
            for vctl_i, current_vctl in enumerate(vctl):

                # set the parameters for this simulation run
                netlist = set_parameters(netlist, current_vctl, current_corner, current_temp, current_vdd)

                # run the simulation 
                try:
                    ngspice = NgSpiceShared.new_instance()
                    ngspice.load_circuit(netlist)
                    ngspice.run()

                    # get the results
                    plot = ngspice.plot(simulation=None, plot_name=ngspice.last_plot)
                    analysis = plot.to_analysis()

                    # trim to steady state
                    analysis_time = analysis._time[int(len(analysis._nodes['ip'])*0.5):]
                    analysis_data = analysis._nodes['ip'][int(len(analysis._nodes['ip'])*0.5):]

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

                    # add the calculated frequency to the array
                    values[vdd_i][corner_i][temp_i][vctl_i] = 1.0/(third_time-second_time)
                    ngspice.destroy()

                except:

                    # enter a None data for failed simulation step
                    values[vdd_i][corner_i][temp_i][vctl_i] = None


# save the data to file
hdf_file.create_dataset('data', data=values)

# save the indexing information
indexing_group = hdf_file.create_group('indexing')
indexing = [['vdd', vdd], ['corner', corners], ['temp', temp], ['vctl', vctl]]
for index in indexing:
    indexing_group.create_dataset(index[0], data=index[1])