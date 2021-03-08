import matplotlib.pyplot as plt
import numpy as np
import control

# low pass filter values
C1 = 29e-6
R1 = 44
C2 = 5.8e-6
#R2 = 2e3


# conponent gains
H_pfd = control.tf([-0.142], [1.0])
H_cp = control.tf([100e-6], [1.0])
# H_lpf = control.tf([C1*C2, C1*R1+C2*R2, 1.0], [C1*C2*(R1+R2), C1+C2, 0.0])
H_lpf = control.tf([C1*R1, 1.0], [C1*C2*R1, C1+C2, 0.0])
H_vco = control.tf([-146e6], [1.0, 0.0])
H_divider = control.tf([1.0], [32.0])

# form loop gain expression
H = H_pfd * H_cp * H_lpf * H_vco * H_divider

print(H)

# analyse the system
gm, pm, wg, wp = control.margin(H)
print("Phase margin: ", pm)

control.bode_plot(H)
plt.show()

# control.nyquist_plot(L)
# plt.show()

# rlist, klist = control.root_locus(L)

# print(rlist)
# print(klist)

# # for rlist_i in rlist:
# #     plt.plot(rlist_i)

# plt.plot(rlist[-1])
# plt.show()

# # T, Yout = control.step_response(L, T=np.linspace(0, 10000, 10000))
# T, Yout = control.impulse_response(L, T=np.linspace(0, 10000, 10000))
# plt.plot(T, Yout)
# plt.show()