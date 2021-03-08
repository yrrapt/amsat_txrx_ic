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
plan = TestPlan('bandgap_core')
print("Saving results to: %s" % plan.history_path)


@plan.testcase('stability_ctat')
@htf.measures(get_criteria('dc_gain'))
@htf.measures(get_criteria('phase_margin'))
@htf.measures(get_criteria('gain_margin'))
def stability_ctat(test):
    """Measure the stability margins of the CTAT control loop"""

    # create the test utility object
    test_utilities_obj = TestUtilities.TestUtilities()
    test_utilities_obj.netlist_generation(config['stability_ctat']['netlist'], "rundir")

    # create the spice interface
    spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['stability_ctat']['netlist'].split('.')[0]+".spice")

    # loop through all corners
    for corner in config['pvt']['corners']:

        # set corner
        spice_interface_obj.set_corner(corner)

        # run the simulation
        spice_interface_obj.run_simulation()
        
        # save the response
        node = 'v(ac)'
        spice_interface_obj.plot_bode(node, display=False, title="CTAT Open Loop Response", 
                                        linewidth=1, alpha=0.5, append=True)

        # get the signal and test DC gain
        signal = spice_interface_obj.get_signal(node, complex_out=True)
        test.measurements.dc_gain = 20*np.log10(abs(signal[0]))

        # get the phase and gain margin
        phase_margin, gain_margin, unity_bandwidth, inverted_frequency = spice_interface_obj.measure_phase_gain_margin(node)
        print(phase_margin)

        # test the margins
        test.measurements.phase_margin = phase_margin
        test.measurements.gain_margin = gain_margin

    # save the plot to file
    spice_interface_obj.fig.savefig("outputs/stability_ctat.svg")



@plan.testcase('stability_ptat')
@htf.measures(get_criteria('dc_gain'))
@htf.measures(get_criteria('phase_margin'))
@htf.measures(get_criteria('gain_margin'))
def stability_ptat(test):
    """Measure the stability margins of the PTAT control loop"""

    # create the test utility object
    test_utilities_obj = TestUtilities.TestUtilities()
    test_utilities_obj.netlist_generation(config['stability_ptat']['netlist'], "rundir")

    # create the spice interface
    spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['stability_ptat']['netlist'].split('.')[0]+".spice")

    # loop through all corners
    for corner in config['pvt']['corners']:

        # set corner
        spice_interface_obj.set_corner(corner)

        # run the simulation
        spice_interface_obj.run_simulation()

        # save the response
        node = 'v(ac)'
        spice_interface_obj.plot_bode(node, display=False, title="PTAT Open Loop Response", 
                                        linewidth=1, alpha=0.5, append=True, invert=True)
                                        # linewidth=1, alpha=0.5, append=True)

        # get the signal and test DC gain
        signal = spice_interface_obj.get_signal(node, complex_out=True)
        test.measurements.dc_gain = 20*np.log10(abs(signal[0]))

        # get the phase and gain margin
        # phase_margin, gain_margin, unity_bandwidth, inverted_frequency = spice_interface_obj.measure_phase_gain_margin(node)
        phase_margin, gain_margin, unity_bandwidth, inverted_frequency = spice_interface_obj.measure_phase_gain_margin(node, invert=True)
        print(phase_margin)

        # test the margins
        test.measurements.phase_margin = phase_margin
        test.measurements.gain_margin = gain_margin

    # save the plot to file
    spice_interface_obj.fig.savefig("outputs/stability_ptat.svg")



@plan.testcase('temperature_sweep')
@htf.measures(get_criteria('current_regulation_temp').with_dimensions(htf.units.NO_DIMENSION, htf.units.VOLT))
@htf.measures(get_criteria('current_regulation_process').with_dimensions(htf.units.NO_DIMENSION, htf.units.VOLT))
@htf.measures(htf.Measurement('current').with_dimensions(htf.units.NO_DIMENSION, htf.units.VOLT, htf.units.DEGREE_CELSIUS))
def temperature_sweep(test):
    """Measure the response over temperature"""

    # create the test utility object
    test_utilities_obj = TestUtilities.TestUtilities()
    test_utilities_obj.netlist_generation(config['temperature_sweep']['netlist'], "rundir")

    # create the spice interface
    spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['temperature_sweep']['netlist'].split('.')[0]+".spice")
    spice_interface_obj.config['simulator']['shared'] = True
    spice_interface_obj.config['simulator']['silent'] = True

    # append the simulation command
    spice_interface_obj.set_sim_command(config['temperature_sweep']['sim_command'])

    # prepopulate 
    results = np.zeros((len(config['pvt']['corners']), len(config['pvt']['vdd']), 101))

    # loop through all corners
    for corner_i, corner in enumerate(config['pvt']['corners']):

        # set corner
        spice_interface_obj.set_corner(corner)

        # reload the circuit
        spice_interface_obj.restart_simulation()
    
        # loop through the supply voltages
        for vdd_i, vdd in enumerate(config['pvt']['vdd']):

            # set the vdd voltage
            spice_interface_obj.set_parameters([['vdd', vdd], ['en', vdd], ['start_n', vdd]])

            # run the simulation
            spice_interface_obj.run_simulation(new_instance=False)

            # save the response
            node = 'i(viout)'
            sweepvar = 'temp-sweep'
            spice_interface_obj.plot_dc_sweep(sweepvar, node, display=False, title="Output Current Over Temperature", 
                                                linewidth=1, alpha=0.5, append=True)

            # get the output current
            output_current = spice_interface_obj.get_signal(node)
            temp = spice_interface_obj.get_signal(sweepvar)
            
            test_signal = spice_interface_obj.get_signal('i(v.xdut.vmeas3)')

            # print("   %0.1fC: %0.3f uA, %0.1fC: %0.3f uA, %0.1fC: %0.3f uA, " % (temp[0], output_current[0]*1e6, temp[40], output_current[40]*1e6, temp[-1], output_current[-1]*1e6))
            print("   %0.1fC: %0.3f uA, %0.1fC: %0.3f uA, %0.1fC: %0.3f uA, " % (temp[0], 2*test_signal[0]*1e6, temp[40], 2*test_signal[40]*1e6, temp[-1], 2*test_signal[-1]*1e6))

            # record the measurement
            for i, value in enumerate(output_current):
                dimensions = (corner, vdd, temp[i])
                test.measurements['current'][dimensions] = value

            # validate
            test.measurements.current_regulation_temp[(corner, vdd)] = output_current
            test.measurements.current_regulation_process[(corner, vdd)] = output_current

    # save the plot to file
    spice_interface_obj.fig.savefig("outputs/temperature_sweep.svg")



@plan.testcase('operating_point')
def operating_point(test):
    """Test the trimming control functionality"""
    
    # create the test utility object
    test_utilities_obj = TestUtilities.TestUtilities()
    test_utilities_obj.netlist_generation(config['temperature_sweep']['netlist'], "rundir")

    # create the spice interface
    spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['temperature_sweep']['netlist'].split('.')[0]+".spice")
    spice_interface_obj.config['simulator']['shared'] = True
    spice_interface_obj.config['simulator']['silent'] = True

    # append the simulation command
    spice_interface_obj.set_sim_command(config['operating_point']['sim_command'])

    # prepopulate 
    results = np.zeros((len(config['pvt']['corners']), len(config['pvt']['vdd']), 101))


    # find all the devices
    devices = spice_interface_obj.find_all_mosfets()

    # insert the command to save the devices
    spice_interface_obj.insert_op_save(devices, ['vsat_marg'])

    exempt_list = ['xdut.xbmr.XMdiff_n3', 
                    'xdut.XMcap_ptat', 'xdut.XMcap_ctat',
                    'xdut.xtrim_ptat.XMcurr_3','xdut.xtrim_ptat.XMcurr_2', 
                    'xdut.xtrim_ptat.XMcurr_1','xdut.xtrim_ptat.XMcurr_0',
                    'xdut.xtrim_ctat.XMcurr_3','xdut.xtrim_ctat.XMcurr_2', 
                    'xdut.xtrim_ctat.XMcurr_1','xdut.xtrim_ctat.XMcurr_0', 
                    ]

    # loop through all corners
    for corner_i, corner in enumerate(config['pvt']['corners']):

        # set corner
        spice_interface_obj.set_corner(corner)

        # reload the circuit
        spice_interface_obj.restart_simulation()
        
        # loop through the supply voltages
        for vdd_i, vdd in enumerate(config['pvt']['vdd']):

            # set the vdd voltage
            spice_interface_obj.set_parameters([['vdd', vdd], ['en', vdd], ['start_n', vdd]])
            
            # check device operating regions
            spice_interface_obj.check_op_region('temp-sweep', exempt_list=exempt_list, skip_insertion=True, devices=devices)



# @plan.testcase('startup')
# def startup(test):
#     """Test the startup capability"""
#     print('test2')
#     time.sleep(.2)

# @plan.testcase('psrr')
# def psrr(test):
#     """Measure the power supply rejection"""
#     print('test2')
#     time.sleep(.2)

# @plan.testcase('noise')
# def noise(test):
#     """Measure the generated noise"""
#     print('test2')
#     time.sleep(.2)

# @plan.testcase('en')
# def en(test):
#     """Test the enable functionality"""
  
#     htf.Measurement('current_regulation').outcome = measurements.Outcome.PASS

#     # create the test utility object
#     test_utilities_obj = TestUtilities.TestUtilities()
#     test_utilities_obj.netlist_generation(config['temperature_sweep']['netlist'], "rundir")

#     # create the spice interface
#     spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+config['temperature_sweep']['netlist'].split('.')[0]+".spice")
#     spice_interface_obj.config['simulator']['shared'] = True

#     # append the simulation command
#     spice_interface_obj.set_sim_command(config['temperature_sweep']['sim_command'])

#     # prepopulate 
#     results = np.zeros((len(config['pvt']['corners']), len(config['pvt']['vdd']), 101))

#     # loop through all corners
#     for corner_i, corner in enumerate(config['pvt']['corners']):

#         # set corner
#         spice_interface_obj.set_corner(corner)

#         # reload the circuit
#         spice_interface_obj.restart_simulation(silence=True)
    
#         # loop through the supply voltages
#         for vdd_i, vdd in enumerate(config['pvt']['vdd']):

#             # set the vdd voltage
#             spice_interface_obj.set_parameters([['vdd', vdd]])

#             # run the simulation
#             spice_interface_obj.run_simulation(new_instance=False, silence=True)
#             # spice_interface_obj.run_simulation(new_instance=True, silence=True)

#             # save the response
#             node = 'i(viout)'
#             sweepvar = 'temp-sweep'
#             spice_interface_obj.plot_dc_sweep(sweepvar, node, display=False, title="PTAT Open Loop Response", 
#                                                 linewidth=1, alpha=0.5, append=True)

#             # get the output current
#             output_current = spice_interface_obj.get_signal(node)
#             temp = spice_interface_obj.get_signal(sweepvar)

#             print("%0.1fC: %0.3f uA, %0.1fC: %0.3f uA, %0.1fC: %0.3f uA, " % (temp[0], output_current[0]*1e6, temp[40], output_current[40]*1e6, temp[-1], output_current[-1]*1e6))

#             # record the measurement
#             for i, value in enumerate(output_current):
#                 dimensions = (corner, vdd, temp[i])
#                 test.measurements['current'][dimensions] = value

#             # validate
#             test.measurements.current_regulation_temp = output_current
#             test.measurements.current_regulation_process = output_current


#             # results[corner_i][vdd_i][0] = temp
#             # results[corner_i][vdd_i][1] = output_current

#             # # test the margins
#             # for current_temp in output_current:
#             #     if current_temp < config['temperature_sweep']['limits'][0] and current_temp > config['temperature_sweep']['limits'][1]:
#             #         htf.Measurement('current_regulation').outcome = measurements.Outcome.FAIL

#     # test.measurements['current_regulation'][results] = 0

#     # save the plot to file
#     spice_interface_obj.fig.savefig("outputs/temperature_sweep.svg")






# @plan.testcase('ctl')
# def ctl(test):
#     """Test the trimming control functionality"""
#     print('test2')
#     time.sleep(.2)

if __name__ == '__main__':
    plan.no_trigger()
    plan.run_console(once=True)