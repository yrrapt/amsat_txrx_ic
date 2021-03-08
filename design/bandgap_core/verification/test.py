# main.py
import os
import time
import yaml

# import test framework
import openhtf as htf
from openhtf.plugs.user_input import UserInput
from spintop_openhtf import TestPlan
from openhtf.util import conf

import SpiceInterface
import TestUtilities

from criteria import get_criteria


# import test parameters
# from config import PVT
with open(r'config.yml') as file:
    config = yaml.load(file, Loader=yaml.FullLoader)



# create the test utility object
test_utilities_obj = TestUtilities.TestUtilities()
test_utilities_obj.netlist_generation(config['stability_ptat']['netlist'], "rundir")

# create the spice interface
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['stability_ptat']['netlist'].split('.')[0]+".spice")

# set corner
# spice_interface_obj.set_corner(current_corner)

# run the simulation
spice_interface_obj.run_simulation()

# save the response
node = 'v(ac)'
spice_interface_obj.plot_bode(node, display=False, title="PTAT Open Loop Response", save="outputs/stability_ptat.svg", invert=True)
