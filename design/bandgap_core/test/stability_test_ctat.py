import os
import SpiceInterface

# read the generated netlist.
netlist_path = os.environ.get('HOME') + '/.xschem/simulations/bandgap_core_stability_ctat.spice'

# create the object
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path=netlist_path)

spice_interface_obj.limits['phase_margin'] = 52

for i in range(2**5):

    # set the calibration values
    parameters = []
    for n in range(5):
        if (i >> n) & 1 == 1:
            parameters.append(["ctl%d"%n, 1.8])
        else:
            parameters.append(["ctl%d"%n, 0.0])
    spice_interface_obj.set_parameters(parameters)

    # run the simulation
    spice_interface_obj.run_simulation()

    # plot the result
    if i < (2**5)-1:
        spice_interface_obj.plot_bode('v(ac)', linewidth=1, alpha=0.5, interactive=True, append=True)
    else:
        spice_interface_obj.plot_bode('v(ac)', linewidth=1, alpha=0.5, interactive=True)