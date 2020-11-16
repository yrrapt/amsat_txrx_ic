import SpiceInterface
import TestUtilities


# create the test utility object
test_utilities_obj = TestUtilities.TestUtilities()
test_utilities_obj.netlist_generation('bandgap_opamp_test_op.sch', 'rundir')

# create the spice interface
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/bandgap_opamp_test_op.spice")
spice_interface_obj.config['simulator']['shared'] = True

# add the op save parameters

devices = ['xbmr.XMcurr', 'xbmr.XMcurr1', 'xbmr.XM2', 'xbmr.XM3']

spice_interface_obj.insert_op_save(devices, ['vsat_marg'])

# run the simulation
spice_interface_obj.run_simulation()

# analyse the results
spice_interface_obj.plot_op_save(devices, ['vsat_marg'], 'temp-sweep')



['xbmr.XMcurr', 'xbmr.XMcurr1', 'xbmr.XM2', 'xbmr.XM3']