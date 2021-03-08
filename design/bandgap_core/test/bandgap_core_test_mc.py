import os
import SpiceInterface

# read the generated netlist.
netlist_path = os.environ.get('HOME') + '/.xschem/simulations/bandgap_core_test_mc.spice'

# create the object
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path=netlist_path)

# run the monte-carlo simulation
spice_interface_obj.monte_carlo(32, 'dc_sweep', ['i(viout)'])