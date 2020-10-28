#!/usr/bin/env python3

import os, sys
import SpiceInterface

print(sys.argv[1])


# create the object
spice_interface_obj = SpiceInterface.SpiceInterface()

# read in the results
spice_interface_obj.read_results(sys.argv[1])

# plot the results
spice_interface_obj.plot_bode('v(ac)', linewidth=1, alpha=1)