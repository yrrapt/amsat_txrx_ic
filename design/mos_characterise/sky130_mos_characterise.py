import yaml
import SpiceInterface


# create the object
spice_interface_obj = SpiceInterface.SpiceInterface()

# read in the device simulation parameters
with open(r'devices.yaml') as file:
    devices = yaml.full_load(file)


# loop through each of the devices making the measurements
for device in devices:

    print('-'*150)
    print('EXTRACTING OPERATING POINTS FOR DEVICE: ', device)
    print('-'*150)
    spice_interface_obj.measure_mos_op( device, 
                                        devices[device]['w'], 
                                        devices[device]['l'], 
                                        vds=devices[device]['id'],
                                        vds=devices[device]['vds'],
                                        vbs=devices[device]['vbs'],
                                        vdd=devices[device]['vdd'])
