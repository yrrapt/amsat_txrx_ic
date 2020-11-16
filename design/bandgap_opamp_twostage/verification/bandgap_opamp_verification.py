# main.py
import os
import time
import yaml
import numpy as np

# import test framework
import openhtf as htf
from openhtf.plugs.user_input import UserInput
from spintop_openhtf import TestPlan
from openhtf.util import conf
from openhtf.core import measurements

import SpiceInterface
import TestUtilities

from criteria import get_criteria


# import test parameters
with open(r'config.yml') as file:
    config = yaml.load(file, Loader=yaml.FullLoader)


# This defines the name of the testbench.
plan = TestPlan('bandgap_opamp')
print("Saving results to: %s" % plan.history_path)


@plan.testcase('ac_response')
@htf.measures(get_criteria('dc_gain'))
@htf.measures(get_criteria('unity_bandwidth'))
def ac_response(test):
    """Measure the ac response of the opamp"""

    # create the test utility object
    test_utilities_obj = TestUtilities.TestUtilities()
    test_utilities_obj.netlist_generation(config['ac_response']['netlist'], "rundir")

    # create the spice interface
    spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['ac_response']['netlist'].split('.')[0]+".spice")

    # append the simulation command
    spice_interface_obj.set_sim_command(config['ac_response']['sim_command'])

    # loop through all corners
    for corner in config['pvt']['corners']:

        # set corner
        spice_interface_obj.set_corner(corner)

        for temperature in config['pvt']['temperatures']:

            # set temperaure
            spice_interface_obj.set_temperature(temperature)

            # run the simulation
            spice_interface_obj.run_simulation()
            
            # save the response
            node = 'v(ac)'
            spice_interface_obj.plot_ac(node, display=False, title="AC Response", 
                                            linewidth=1, alpha=0.5, append=True)

             # get the dc gain and gainbandwidth prodcut
            dc_gain, unity_bandwidth = spice_interface_obj.measure_gain_bandwidth(node)

            print("DC Gain: %0.1f dB, Unity Bandwidth: %0.3f MHz" % (dc_gain, unity_bandwidth/1e6))

            # test the margins
            test.measurements.dc_gain = dc_gain
            test.measurements.unity_bandwidth = unity_bandwidth

    # save the plot to file
    spice_interface_obj.fig.savefig("outputs/ac_response.svg")



if __name__ == '__main__':
    plan.no_trigger()
    plan.run_console(once=True)