import SpiceInterface
import TestUtilities


# create the test utility object
test_utilities_obj = TestUtilities.TestUtilities()
test_utilities_obj.netlist_generation('bandgap_opamp_test_op.sch', 'rundir')

# create the spice interface
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/bandgap_opamp_test_op.spice")
spice_interface_obj.config['simulator']['shared'] = True

# add the op save parameters
devices = ['xptatop.XMmpdiff', 'xptatop.XMmpr', 'xptatop.XMmnr', 'xptatop.XMmnb', 
            'xptatop.XMmpa', 'xptatop.XMcpdiff', 'xptatop.XMmna', 
            'xptatop.XMcpa', 'xptatop.XMcasba', 'xptatop.XMcasn', 
            'xptatop.XMcasp', 'xptatop.XMloadmp', 'xptatop.XMloadmn', 'xptatop.XMloadcn', 
            'xptatop.XMloadcp', 'xptatop.XMmfn', 'xptatop.XMmfp', 'xptatop.XMdiffn', 
            'xptatop.XMdiffp',
            'xctatop.XMmpdiff', 'xctatop.XMmpr', 'xctatop.XMmnr', 'xctatop.XMmnb', 
            'xctatop.XMmpa', 'xctatop.XMcpdiff', 'xctatop.XMmna', 
            'xctatop.XMcpa', 'xctatop.XMcasba', 'xctatop.XMcasn', 
            'xctatop.XMcasp', 'xctatop.XMloadmp', 'xctatop.XMloadmn', 'xctatop.XMloadcn', 
            'xctatop.XMloadcp', 'xctatop.XMmfn', 'xctatop.XMmfp', 'xctatop.XMdiffn', 
            'xctatop.XMdiffp',
            'x5.XMcurr', 'x5.XMcas', 'x6.XMcurr', 'x6.XMcas', 'x7.XMcurr', 'x7.XMcas',
            'XMcurr', 'XMcurr1', 'XM1', 'XM3' ]
# devices = ['x5.XMcas']
spice_interface_obj.insert_op_save(devices, ['vsat_marg'])

# run the simulation
spice_interface_obj.run_simulation()

# analyse the results
spice_interface_obj.plot_op_save(devices, ['vsat_marg'], 'temp-sweep')