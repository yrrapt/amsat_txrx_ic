import yaml
import numpy as np
import matplotlib.pyplot as plt
import SpiceInterface


# create the object
spice_interface_obj = SpiceInterface.SpiceInterface()



# l = [0.15, 0.18, 0.25, 0.50, 1.00, 2.00, 4.00, 8.00]
# l = [0.15, 0.18, 0.25, 0.50, 1.00, 2.00, 4.00, 8.00]
# l = [0.15, 0.18, 0.25, 1.00, 2.00, 4.00, 8.00]
l = [0.15, 0.18, 0.25, 0.50, 1.00, 2.00, 4.00, 8.00]

gm_vec = []
id_vec = []
gds_vec = []
vgs_vec = []
vdsat_vec = []
thermal_vec = []
corner_vec = []

# file = 'results/sky130_fd_pr__pfet_01v8.hdf5'
file = 'results/sky130_fd_pr__pfet_01v8_lvt.hdf5'
# file = 'results/sky130_fd_pr__nfet_01v8_lvt.hdf5'


for l_i in l:

    gm_vec.append( spice_interface_obj.query_mos_op(file, 'gm', {'vbs':0, 'vds':1.8, 'l':l_i}) )
    id_vec.append( spice_interface_obj.query_mos_op(file, 'id', {'vbs':0, 'vds':1.8, 'l':l_i}) )
    gds_vec.append( spice_interface_obj.query_mos_op(file, 'gds', {'vbs':0, 'vds':1.8, 'l':l_i}) )
    vgs_vec.append( spice_interface_obj.query_mos_op(file, 'vgs', {'vbs':0, 'vds':1.8, 'l':l_i}) )
    vdsat_vec.append( spice_interface_obj.query_mos_op(file, 'vdsat', {'vbs':0, 'vds':1.8, 'l':l_i}) )
    thermal_vec.append( spice_interface_obj.query_mos_op(file, 'noise_thermal', {'vbs':0, 'vds':1.8, 'l':l_i}) )
    corner_vec.append( spice_interface_obj.query_mos_op(file, 'noise_corner', {'vbs':0, 'vds':1.8, 'l':l_i}) )

# plt.plot([gm_vec[i]/id_vec[i] for i in range(len(gm_vec))], [gm_vec[i]/gds_vec[i] for i in range(len(gm_vec))])
for i in range(len(l)):
    # plt.semilogx([id_vec[i][_]/l[i] for _ in range(len(id_vec[i]))], [gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))])
    # plt.semilogx([id_vec[i][_]/l for _ in range(len(id_vec[i]))], [gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))])
    # plt.loglog([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], [id_vec[i][_]/l[i] for _ in range(len(gm_vec[i]))])
    plt.loglog([id_vec[i][_]/l[i] for _ in range(len(gm_vec[i]))], [gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))])
plt.legend(l)
plt.grid()
plt.title('gm/Id vs Id/l')
plt.show()

for i in range(len(l)):
    plt.semilogx([20*np.log10(gm_vec[i][_]/id_vec[i][_]) for _ in range(len(gm_vec[i]))], [20*np.log10(gm_vec[i][_]/gds_vec[i][_]) for _ in range(len(gm_vec[i]))])
plt.legend(l)
plt.grid()
plt.title('self-gain vs gm/Id')
plt.show()

# plt.semilogx(id_vec, gm_vec)
# plt.show()

for i in range(len(l)):
    plt.loglog([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], gm_vec[i])
plt.legend(l)
plt.grid()
plt.title('gm vs gm/Id')
plt.show()


for i in range(len(l)):
    plt.loglog([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], [1/_ for _ in gds_vec[i]])
plt.legend(l)
plt.grid()
plt.title('gout vs gm/Id')
plt.show()


# plt.semilogx(id_vec, vgs_vec)
# plt.show()

for i in range(len(l)):
    plt.semilogx([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], vgs_vec[i])
plt.legend(l)
plt.grid()
plt.title('Vgs vs gm/Id')
plt.show()

for i in range(len(l)):
    plt.semilogx([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], vdsat_vec[i])
plt.legend(l)
plt.grid()
plt.title('Vdsat vs gm/Id')
plt.show()

for i in range(len(l)):
    plt.semilogx([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], [20*np.log10(_) for _ in thermal_vec[i]])
plt.legend(l)
plt.grid()
plt.title('Thermal Noise vs gm/Id')
plt.show()

for i in range(len(l)):
    plt.loglog([gm_vec[i][_]/id_vec[i][_] for _ in range(len(gm_vec[i]))], corner_vec[i])
plt.legend(l)
plt.grid()
plt.title('Noise Corner vs gm/Id')
plt.show()