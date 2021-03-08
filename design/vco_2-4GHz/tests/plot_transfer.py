import matplotlib.pyplot as plt
from pathlib import Path
import numpy as np
import os
import re
import h5py
import subprocess
from spyci import spyci

import SpiceInterface



# read the generated netlist.
netlist_path = os.environ.get('HOME') + '/.xschem/simulations/vco_2-4GHz_tb.spice'

# create the object
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path=netlist_path)

# only save the Ip node to avoid using lots of memory
# spice_interface_obj.simulation['netlist'] = re.sub(r'\*\*\*\* end user architecture code', r'.save v(ip)\n**** end user architecture code', spice_interface_obj.simulation['netlist'])



# define the sweeps
vctl_num = 32
vdd = [1.8]

corners = ['tt', 'sf', 'ff', 'ss', 'fs', 'll', 'hh', 'hl', 'lh']
temp = [-40, 27, 125]

# corners = ['tt']
# temp = [25]


vctl = np.linspace(0, vdd, vctl_num)
freq = []



hdf_file = h5py.File('vco_2-4GHz_corners.hdf5', 'w')

# prepopulate the data
values = np.zeros((len(vdd), len(corners), len(temp), vctl_num))

for vdd_i, current_vdd in enumerate(vdd):
    for corner_i, current_corner in enumerate(corners):

        # set corner
        spice_interface_obj.set_corner(current_corner)
        
        for temp_i, current_temp in enumerate(temp):

            # set temperature
            spice_interface_obj.set_temp(current_temp)

            for vctl_i, current_vctl in enumerate(vctl):

                # set the parameters for this simulation run
                parameters = [['vctl', current_vctl], ['vdd', current_vdd]]
                spice_interface_obj.set_parameters(parameters)

                try:

                    # run the simulation 
                    spice_interface_obj.run_simulation()

                    # add the calculated frequency to the array
                    values[vdd_i][corner_i][temp_i][vctl_i] = spice_interface_obj.measure_frequency(node='ip', measure_after_factor=0.5)

                    print('Frequency = %0.3f MHz' % (values[vdd_i][corner_i][temp_i][vctl_i]/1e6))

                except:

                    # enter a None data for failed simulation step
                    values[vdd_i][corner_i][temp_i][vctl_i] = None

# save the data to file
hdf_file.create_dataset('data', data=values)

# save the indexing information
indexing_group = hdf_file.create_group('indexing')
indexing = [['vdd', vdd], ['corner', corners], ['temp', temp], ['vctl', vctl]]

# save each of the index information
for index in indexing:
    if type(index[1][0]) == str:
        ascii_list = [_.encode("ascii", "ignore") for _ in index[1]]
        indexing_group.create_dataset(index[0], (len(ascii_list),1),'S10', ascii_list)
    else:   
        indexing_group.create_dataset(index[0], data=index[1])