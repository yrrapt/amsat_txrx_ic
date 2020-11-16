import SpiceInterface
import TestUtilities


# create the test utility object
test_utilities_obj = TestUtilities.TestUtilities()
test_utilities_obj.netlist_generation('bandgap_opamp_test_op.sch', 'rundir')

# create the spice interface
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/bandgap_opamp_test_op.spice")
spice_interface_obj.config['simulator']['shared'] = True
spice_interface_obj.config['simulator']['silence'] = True

# loop through all corners
for corner in ['tt', 'sf', 'ff', 'ss', 'fs', 'll', 'hh', 'hl', 'lh']:

    # set corner
    spice_interface_obj.set_corner(corner)

    # loop through the supply voltages
    for vdd_i, vdd in enumerate([1.62, 1.8, 1.98]):

        # set the vdd voltage
        spice_interface_obj.set_parameters([['vdd', vdd], ['en', vdd], ['start_n', vdd]])

        # check all operating regions
        spice_interface_obj.check_op_region('temp-sweep', exempt_list=['xbmr.XMdiff_n3'])