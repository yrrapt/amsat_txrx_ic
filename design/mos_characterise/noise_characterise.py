import yaml
import SpiceInterface

import matplotlib.pyplot as plt
import numpy as np


# create the object
spice_interface_obj = SpiceInterface.SpiceInterface()

# load the characterisation bench
spice_interface_obj.read_netlist_file('mos_noise_characterise.spice')
# spice_interface_obj.read_netlist_file('mos_characterise.spice')



spice_interface_obj.run_simulation(outputs=['noise1'])
# spice_interface_obj.run_simulation(outputs=['dc1'])


frequency = spice_interface_obj.get_signal('frequency', dataset='noise1')
onoise = spice_interface_obj.get_signal('onoise_spectrum', dataset='noise1')
length = len(frequency)

# create theoretical flicker noise
flicker_factor = 1.5
flicker = [float(onoise[0])]
for i in range(1, length):
    flicker.append( onoise[0]/(np.sqrt(frequency[i]**flicker_factor) ) )

# create theoretical thermal noise
thermal = [float(onoise[-1])]*length
derivative = [1.0]
for n in range(1,length):
    derivative.append(onoise[n-1]-onoise[n])

    if derivative[-1] > derivative[-2]:
        thermal = [float(onoise[n])]*length
        break

# find current corner frequency
for i in range(length):
    if flicker[i]-thermal[i] < 0:
        corner_index = i
        break

# adjust flicker factor
while flicker[int(corner_index*0.5)]-onoise[int(corner_index*0.5)] < 0:

    # decrement the flicker factor and retest
    flicker_factor -= 0.001
    flicker = [float(onoise[0])]
    for i in range(1, length):
        flicker.append( onoise[0]/(np.sqrt(frequency[i]**flicker_factor) ) )

# find the final corner frequency
for i in range(length):
    if flicker[i]-thermal[i] < 0:
        corner_index = i
        corner_frequency = frequency[corner_index]
        break

# print('corner_frequency', corner_frequency/1e6)
# print('flicker_factor', flicker_factor)



plt.loglog(frequency, onoise)
plt.loglog(frequency, flicker)
plt.loglog(frequency, thermal)
# plt.loglog(frequency[1:], derivative)
plt.show()

# plt.show()