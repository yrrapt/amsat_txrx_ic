import os, yaml
import numpy as np
import matplotlib.pyplot as plt

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
    xschem.netlist_generation(PROJECT_ROOT+'/design/dac_unit_cell/test/auto_dac_unit_cell_test.sch', 'rundir')

    # create the spice interface
    yaaade_obj = NgSpiceInterface(netlist_path='rundir/auto_dac_unit_cell_test.spice')
    # yaaade_obj.config['simulator']['shared'] = True
    yaaade_obj.config['simulator']['shared'] = False
    yaaade_obj.config['simulator']['silent'] = True

    # append the simulation command
    yaaade_obj.set_sim_command('.dc temp -40 125 55')

    # prepopulate 
    results = np.zeros((len(pvt['corners']), len(pvt['vdd']), 3))

    # find all the devices
    devices = yaaade_obj.find_all_mosfets()

    # insert the command to save the devices
    yaaade_obj.insert_op_save(devices, ['vsat_marg'])

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
                    'xbias.XMcap',
                    'xbias.XMen*',
                  ]

    # yaaade_obj.run_simulation()

    # loop through all corners
    for corner_i, corner in enumerate(pvt['corners']):

        # set corner
        yaaade_obj.set_corner(corner)

        # reload the circuit
        # yaaade_obj.restart_simulation()
        yaaade_obj.run_simulation()
        
        # loop through the supply voltages
        for vdd_i, vdd in enumerate(pvt['vdd']):

            # set the vdd voltage
            yaaade_obj.set_parameters([['vdd', vdd]])
            
            # check device operating regions
            op_pass = yaaade_obj.check_op_region('temp-sweep', exempt_list=exempt_list, skip_insertion=True, devices=devices)

            assert op_pass == True, 'Operating point check failed!'



def test_switching():
    '''
        Test that switches DAC 
    '''

    # create the test utility object
    xschem.netlist_generation(PROJECT_ROOT+'/design/dac_unit_cell/test/auto_dac_unit_cell_test.sch', 'rundir')

    # create the spice interface
    yaaade_obj = NgSpiceInterface(netlist_path='rundir/auto_dac_unit_cell_test.spice')
    # yaaade_obj.config['simulator']['shared'] = True
    yaaade_obj.config['simulator']['shared'] = False
    yaaade_obj.config['simulator']['silent'] = True

    # append the simulation command
    yaaade_obj.set_sim_command('.dc temp -40 125 55')

    # prepopulate 
    results = []

    # perform transient simulation
    yaaade_obj.set_sim_tran(stop       = 50e-9, 
                            step       = 1e-12,
                            start_save = 20e-9)

    # plt.ion()

    # loop through all corners
    for corner_i, corner in enumerate(pvt['corners']):

        # set corner
        yaaade_obj.set_corner(corner)

        # run the simulation 
        yaaade_obj.run_simulation()
        
        results.append(yaaade_obj.get_signal('i(vout_p)'))
        
        plt.plot(results[-1], 'b', alpha=0.5, linewidth=0.5)

    plt.show()


if __name__ == "__main__":
    # test_op()
    test_switching()