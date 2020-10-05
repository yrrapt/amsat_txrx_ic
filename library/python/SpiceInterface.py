import numpy as np
import os
import re
import h5py
import subprocess
from spyci import spyci

import matplotlib.pyplot as plt


class SpiceInterface():
    '''
        A library to interface to Spice simulators (NGSpice, Xyce, Spectre, TSpice etc...)

        Contains high level constructs to manipulate and run simulations without relying
        on simulator specfic netlist constructions.

        Will be developed into a library to allow for high programmatic control of electronic
        circuit simulation, design and verification. 
    '''

    def __init__(self, simulator='ngspice', verbose=True, netlist_path=None):
        '''
            Instantiate the object
        '''

        # store the setup information internally
        self.config = {}
        self.simulation = {}
        self.config['simulator'] = simulator
        self.config['verbose'] = verbose

        # if provided read in the base netlist
        if netlist_path:
            self.read_netlist_file(netlist_path)



    def read_netlist_file(self, netlist_path):
        '''
            Read in a netlist from file
        '''

        with open(netlist_path) as f:
            self.simulation['netlist'] = f.read()



    def set_parameters(self, parameters):
        '''
            Set parameters inside the netlist

            Parameters should be passed as an array with with sub-arrays with
            the first element parameter string and the second element a value.

            ie. [['vds', 1.8], ['vbs', 0.2], ['ids', 1e-6]]
        '''

        # keep a list of the of parameter values to print to terminal
        log_information = "New netlist parameter values: "

        # loop through each parameter updating the value
        for parameter in parameters:
            sub_string = ".param %s=%f" % (parameter[0], parameter[1])
            self.simulation['netlist'] = re.sub(r'\.param %s=.*' % parameter[0], sub_string, self.simulation['netlist'])

            # append to the log string
            log_information += '%s=%f  ' % (parameter[0], parameter[1])

        # update user
        if self.config['verbose']:
            print(log_information)



    def set_temp(self, temp):
        '''
            Set the simulation temperature
        '''

        # change the temperature in the netlist
        sub_string = ".param temp=%f" % temp
        self.simulation['netlist'] = re.sub(r'\.param temp=.*', sub_string, self.simulation['netlist'])
        sub_string = ".temp %f" % temp
        self.simulation['netlist'] = re.sub(r'\.temp .*', sub_string, self.simulation['netlist'])

        # update user
        if self.config['verbose']:
            log_information = "New temperature: %f" % temp
            print(log_information)



    def set_corner(self, corner):
        '''
            Set the simulation corner
        '''

        # change the temperature in the netlist
        sub_string = ".lib sky130_fd_pr/models/sky130.lib.spice %s" % corner
        self.simulation['netlist'] = re.sub(r'\.lib sky130_fd_pr/models/sky130.lib.spice .*', sub_string, self.simulation['netlist'])

        # update user
        if self.config['verbose']:
            log_information = "New corner: %s" % corner
            print(log_information)



    def run_simulation(self):
        '''
            Run simulation
        '''

        # select the simulation interface to use
        if self.config['simulator'] == 'ngspice':

            # write the temporary netlist
            with open('spiceinterface_temp.spice', 'w') as f:
                f.write(self.simulation['netlist'])

            # run ngspice
            bash_command = "ngspice -b -r spiceinterface_temp.raw -o spiceinterface_temp.out spiceinterface_temp.spice"
            process = subprocess.Popen(bash_command.split(), stdout=subprocess.PIPE)
            output, error = process.communicate()

            # check if error occured
            with open('spiceinterface_temp.spice') as f:
                sim_log = f.read()
                if 'fatal' in sim_log:
                    print(sim_log)

            # read in the results of the simulation
            self.simulation_data = spyci.load_raw("spiceinterface_temp.raw")

        else:
            assert False, 'The simulator (%s) is not currently supported' % self.config['simulator'] 



    def set_dc_sweep(self, parameter, start, end, number_steps):
        '''
            Set the values for a DC sweep
        '''

        # calculate the step size
        step_size = (end - start)/(number_steps-1)  

        # update the netlist
        sub_string = ".dc %s %0.12f %0.12f %0.12f" % (parameter, start, end, step_size)
        self.simulation['netlist'] = re.sub(r'\.dc .*', sub_string, self.simulation['netlist'])



    def get_signal(self, signal_name, factor=1.0):
        '''
            Return a signal from the simulation results
        '''

        # find where the node is in the data
        for data_i, data_var in enumerate(self.simulation_data['vars']):

            if data_var['name'] == signal_name:
                index = data_i

        # extract each data point and convert to real list
        data_real = []
        for n in range(len(self.simulation_data['values'])):

            data_real.append(factor*np.real(self.simulation_data['values'][n][index]))

        return data_real



    def measure_frequency(self, node, netlist=None, measure_after_factor=None, threshold=0.9, hysteresis=0.05):
        '''
            Measure the frequency from time domain signal
        '''

        # extract each data point and convert to real list
        data_real = self.get_signal('v('+node+')')
        analysis_time = self.get_signal('time')


        # trim the data
        if measure_after_factor:
            data_real = data_real[int(len(data_real)*measure_after_factor):]

        # define the high and low thresholds for calculating edges
        threshold_low = threshold - hysteresis
        threshold_high = threshold + hysteresis

        # find first rising edge
        for i in range(2,len(data_real)):
            if (float(data_real[i]) > threshold) and (float(data_real[i-1]) > threshold) and (float(data_real[i-2]) < threshold):
                first_index = i
                first_time = analysis_time[i]
                break

        # find second rising edge
        for i in range(first_index+3, len(data_real)):
            if (float(data_real[i]) > threshold) and (float(data_real[i-1]) > threshold) and (float(data_real[i-2]) < threshold):
                second_index = i
                second_time = analysis_time[i]
                break

        # find third rising edge
        for i in range(second_index+3, len(data_real)):
            if (float(data_real[i]) > threshold) and (float(data_real[i-1]) > threshold) and (float(data_real[i-2]) < threshold):
                third_index = i
                third_time = analysis_time[i]
                break

        return 1.0/(third_time-second_time)



    def measure_mos_op(self, device, w, l_list, polarity='nmos', vds=[0,1.8,11], vbs=[0,1.8,11], temp=27, corner='tt'):
        '''
            Measure the operating point of an MOS
        '''

        # load the characterisation bench
        self.read_netlist_file('mos_characterise.spice')

        # set the MOS name
        self.simulation['netlist'] = re.sub(r'(.*)mos(.*)', r'\1'+device+r'\2', self.simulation['netlist'])

        # set the temperature and corner
        self.set_temp(temp)
        self.set_corner(corner)

        # define the list of op parameters
        op_params = ["id", "vth", "vgs", "vds", "vbs", "gm", "gds", "gmbs", "vdsat", "cgg", "cgs", "cgd", "cgb", "cbs", "cdd"]
        save_string = ''
        for op_param in op_params:
            save_string += '@M.XM.m' + device + '[' + op_param + '] '
        self.simulation['netlist'] = re.sub(r'SAVE_TO_BE_POPULATED', save_string, self.simulation['netlist'])

        # create the sweep values
        vds_list = np.linspace(vds[0], vds[1], vds[2])
        vbs_list = np.linspace(vbs[0], vbs[1], vbs[2])

        # run an initial simulation to find out how many drain current sweep values are present
        self.run_simulation()
        num_id = len(self.simulation_data['values'])


        # prepopulate the reuslts dictionary
        op_values = {}
        for param in op_params:
            op_values[param] = np.zeros((len(l_list), len(vds_list), len(vbs_list), num_id))

        # loop through each parameter value
        for vbs_i, vbs in enumerate(vbs_list):
            for vds_i, vds in enumerate(vds_list):
                for l_i, l in enumerate(l_list):

                    # update user
                    if self.config['verbose']:
                        print('-'*150)
                        print('Beginning new OP setting')

                    # modify the netlist
                    parameters = [['vbs', vbs], ['vds', vds], ['l', l]]
                    netlist = self.set_parameters(parameters)

                    # run the simulation
                    try:
                        self.run_simulation()

                        # collect the op parameter values
                        for data_i, data_var in enumerate(self.simulation_data['vars']):

                            # try and extract the op parameter - this will fail if the variable is something else
                            try:
                                op_param = data_var['name'].split('[')[1].split(']')[0]

                                # extract each data point and convert to real list
                                data_real = []
                                for n in range(len(self.simulation_data['values'])):
                                    data_real.append(np.real(self.simulation_data['values'][n][data_i]))

                                # save the sweep data to the dictionary
                                op_values[op_param][l_i][vds_i][vbs_i] = data_real

                            except IndexError:
                                pass
                    
                    # simulation failed - most likely to MOS being in a weird region
                    # just ignore this and move on. the point will be filled with zeros
                    except:
                        pass


        # save the data to file
        hdf_file = h5py.File('results/' + device + '.hdf5', 'w')
        for key, values in op_values.items():
            hdf_file.create_dataset(key, data=values)

        # save the indexing information
        indexing_group = hdf_file.create_group('indexing')
        indexing = [['vbs', vbs_list], ['vds', vds_list], ['l', l_list]]
        for index in indexing:
            indexing_group.create_dataset(index[0], data=index[1])



    def sweep_parameter(self, parameter, start, end, number_steps, signals, sweeptype='singlestep'):
        '''
            Sweep the temperature and provide the resulting signals
        '''

        # start/stop the simulator for each sweep step
        # this is slower but more flexible
        if sweeptype == 'singlestep':

            # create temperature list
            parameter_list = np.linspace(start, end, number_steps)

            # create a results dictionary
            results = {}
            results[parameter] = parameter_list

            # create arrays for the signals
            for signal in signals:
                results[signal] = []

            # loop through the temperatures
            for parameter_value in parameter_list:

                # update the netlist
                if parameter == 'temp':
                    self.set_temp(parameter_value)
                else:
                    self.set_parameters([[parameter, float(parameter_value)]])

                # run the simulation
                self.run_simulation()

                # grab the results
                for signal in signals:

                    temp_signal = self.get_signal(signal)

                    # if a single point is returned we don't want unnecessary list depth
                    if len(temp_signal) == 1:
                        results[signal] = temp_signal[0]
                    else:
                        results[signal] = temp_signal

        # edit the DC sweep commad
        elif sweeptype == 'dcsweep':

            # edit the netlist DC sweep command
            self.set_dc_sweep(parameter, start, end, number_steps)

            # run the simulation
            self.run_simulation()

            # create a results dictionary
            results = {}
            for signal in signals:

                if signal == 'temp':
                    results[signal] = np.linspace(start, end, number_steps)
                else:
                    results[signal] = self.get_signal(signal)

        return results