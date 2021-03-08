import os
import SpiceInterface
import TestUtilities

circuit = 'bandgap_core_stability_ptat.sch'

# create the test utility object
test_utilities_obj = TestUtilities.TestUtilities()
test_utilities_obj.netlist_generation(circuit, "rundir")

# create the spice interface
spice_interface_obj = SpiceInterface.SpiceInterface(netlist_path="rundir/"+circuit.split('.')[0]+".spice")


spice_interface_obj.limits['phase_margin'] = 52

# loop through all corners
for corner in ['tt', 'sf', 'ff', 'ss', 'fs', 'll', 'hh', 'hl', 'lh']:

    # set corner
    spice_interface_obj.set_corner(corner)

    for temperature in [-40, 27, 125]:

        # set temperaure
        spice_interface_obj.set_temperature(temperature)

        # loop through the supply voltages
        for vdd_i, vdd in enumerate([1.62, 1.8, 1.98]):

            # set the vdd voltage
            spice_interface_obj.set_parameters([['vdd', vdd]])

            # run the simulation
            spice_interface_obj.run_simulation()

            # run the simulation
            spice_interface_obj.run_simulation()

            # plot the result
            spice_interface_obj.plot_bode('v(ac)', linewidth=1, alpha=0.5, interactive=True, invert=True, append=True)

            # if i < (2**5)-1:
            #     spice_interface_obj.plot_bode('v(ac)', linewidth=1, alpha=0.5, interactive=True, invert=True, append=True)
            # else:
            #     spice_interface_obj.plot_bode('v(ac)', linewidth=1, alpha=0.5, interactive=True, invert=True)