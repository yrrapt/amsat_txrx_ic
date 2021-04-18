import numpy as np

from yaaade.spice.ngspice import NgSpiceInterface
import yaaade.tools.xschem as xschem

# specify the PVT parameters
pvt = { 'corners'         : ['tt', 'sf', 'ff', 'ss', 'fs', 'll', 'hh', 'hl', 'lh'],
        'temperatures'    : [-40, 27, 125],
        'vdd'             : [1.62, 1.8, 1.98] }


def test_op():
    '''
        Test that devices stay within the desired operating regions
        over PVT
    '''

    # create the test utility object
    xschem.netlist_generation('design/dac_unit_cell/test/auto_dac_unit_cell_test.sch', 'rundir')

    # create the spice interface
    spice_interface_obj = NgSpiceInterface(netlist_path='rundir/auto_dac_unit_cell_test.spice')
    # spice_interface_obj.config['simulator']['shared'] = True
    spice_interface_obj.config['simulator']['shared'] = False
    spice_interface_obj.config['simulator']['silent'] = True

    # append the simulation command
    spice_interface_obj.set_sim_command('.dc temp -40 125 55')

    # prepopulate 
    results = np.zeros((len(pvt['corners']), len(pvt['vdd']), 3))

    # find all the devices
    devices = spice_interface_obj.find_all_mosfets()

    # insert the command to save the devices
    spice_interface_obj.insert_op_save(devices, ['vsat_marg'])

    exempt_list = [ 
                    'xunit_cell.XMsteer_n', 
                    'xunit_cell.XMsteer_p',
                    'xunit_cell.XMdrive_comp_n',
                    'xunit_cell.XMdrive_comp_p',
                    'xunit_cell.XMdrive_n',
                    'xunit_cell.XMdrive_p',
                    'xunit_cell.XMload_n',
                    'xunit_cell.XMload_p',
                    'xunit_cell.XMdrive_currcap',
                    'xunit_cell.XMdrive_currcap1',
                    'xbias.XMcurrp_a',
                    'xbias.XMcurrn_a',
                  ]

    # spice_interface_obj.run_simulation()

    # loop through all corners
    for corner_i, corner in enumerate(pvt['corners']):

        # set corner
        spice_interface_obj.set_corner(corner)

        # reload the circuit
        # spice_interface_obj.restart_simulation()
        spice_interface_obj.run_simulation()
        
        # loop through the supply voltages
        for vdd_i, vdd in enumerate(pvt['vdd']):

            # set the vdd voltage
            spice_interface_obj.set_parameters([['vdd', vdd]])
            
            # check device operating regions
            op_pass = spice_interface_obj.check_op_region('temp-sweep', exempt_list=exempt_list, skip_insertion=True, devices=devices)

            assert op_pass == True, 'Operating point check failed!'


if __name__ == "__main__":
    test_op()