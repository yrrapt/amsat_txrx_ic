import SpiceInterface
import TestUtilities


# create the test utility object
test_utilities_obj = TestUtilities.TestUtilities()
test_utilities_obj.netlist_generation('bandgap_opamp_test_op.sch', 'rundir')

# create the spice interface
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/bandgap_opamp_test_op.spice")
spice_interface_obj.config['simulator']['shared'] = True

# check all operating regions
spice_interface_obj.check_op_region('temp-sweep', exempt_list=['xbmr.XMdiff_n3'])