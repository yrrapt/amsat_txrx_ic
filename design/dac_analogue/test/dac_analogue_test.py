import numpy as np
import yaml, os

from yaaade.spice.ngspice import NgSpiceInterface
import yaaade.tools.xschem as xschem

# import global settings
PROJECT_ROOT = os.environ.get('PROJECT_ROOT')
with open(PROJECT_ROOT+'/design/global_settings.yaml') as global_settings_file:
    global_settings = yaml.load(global_settings_file, Loader=yaml.FullLoader)
    pvt = global_settings['pvt']


def test_op():
    '''
        Test that devices stay within the desired operating regions
        over PVT
    '''

    # create the test utility object
    xschem.netlist_generation(PROJECT_ROOT+'/design/dac_analogue/test/dac_analogue_tb.sch', 'rundir')

    # create the spice interface
    spice_interface_obj = NgSpiceInterface(netlist_path='rundir/dac_analogue_tb.spice')
    # spice_interface_obj.config['simulator']['shared'] = True
    spice_interface_obj.config['simulator']['shared'] = False
    spice_interface_obj.config['simulator']['silent'] = True

    # append the simulation command
    spice_interface_obj.set_dc_sim( variable  = 'temp',
                                    start     = -40,
                                    stop      = 125,
                                    increment = 55)

    # prepopulate 
    results = np.zeros((len(pvt['corners']), len(pvt['vdd']), 3))

    # find all the devices
    devices = spice_interface_obj.find_all_mosfets()

    # insert the command to save the devices
    spice_interface_obj.insert_op_save(devices, ['vsat_marg'])

    exempt_list = [ 
                    '*.XMsteer_n', 
                    '*.XMsteer_p',
                    '*.XMdrive_comp_n',
                    '*.XMdrive_comp_p',
                    '*.XMdrive_n',
                    '*.XMdrive_p',
                    '*.XMload_n',
                    '*.XMload_p',
                    '*.XMdrive_currcap',
                    '*.XMdrive_currcap1',
                    '*.XMcurrp_a',
                    '*.XMcurrn_a',
                    '*XMen*',
                  ]

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