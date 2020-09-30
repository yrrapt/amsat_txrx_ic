import SpiceInterface


# create the object
spice_interface_obj = SpiceInterface.SpiceInterface()

# start OP parameter evaluation
device = 'sky130_fd_pr__nfet_01v8'
w = 1
l = [0.15, 0.18, 0.25, 0.50, 1.00, 2.00, 4.00, 8.00]

spice_interface_obj.measure_mos_op(device, w, l, vds=[0,1.8,11], vbs=[0,1.8,11])