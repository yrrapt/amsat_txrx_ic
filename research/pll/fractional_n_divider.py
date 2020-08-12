import matplotlib.pyplot as plt
import numpy as np
import random

import lfsr_fib_model
import fractional_n_divider_model


# hardware constants
WIDTH_INTEGER = 10
WIDTH_MODULUS = 16
ORDER = 3

# simulation parameters
F = 0.5
N = 16.0
 
length = 2**16

lfsr_model = lfsr_fib_model.lfsr_fib_model()
fractional_n_divider_model_no_dither = model = fractional_n_divider_model.fractional_n_divider_model(integer_width=WIDTH_INTEGER, modulus_width=WIDTH_MODULUS, order=ORDER)
fractional_n_divider_model_no_dither.set_divide_value(N + F)
fractional_n_divider_model_lfsr_dither = model = fractional_n_divider_model.fractional_n_divider_model(integer_width=WIDTH_INTEGER, modulus_width=WIDTH_MODULUS, order=ORDER)
fractional_n_divider_model_lfsr_dither.set_divide_value(N + F)
fractional_n_divider_model_random_dither = model = fractional_n_divider_model.fractional_n_divider_model(integer_width=WIDTH_INTEGER, modulus_width=WIDTH_MODULUS, order=ORDER)
fractional_n_divider_model_random_dither.set_divide_value(N + F)

no_dither = [0.0]*length
lfsr_dither = [0.0]*length
random_dither = [0.0]*length

for n in range(length):

    lfsr_config = {     "in"    :   1,
                        "ce"    :   1}
    no_dither[n] = fractional_n_divider_model_no_dither.update()
    lfsr_dither[n] = fractional_n_divider_model_lfsr_dither.update()
    random_dither[n] = fractional_n_divider_model_random_dither.update()

    if lfsr_dither[n] != lfsr_dither[n-1]:
        fractional_n_divider_model_lfsr_dither.set_divide_value(N + F + lfsr_model.update(lfsr_config)/2**WIDTH_MODULUS)

    if random_dither[n] != random_dither[n-1]:
        fractional_n_divider_model_random_dither.set_divide_value(N + F + random.randint(0,1)/2**WIDTH_MODULUS)

# find the average value
print(np.mean(no_dither))
print(np.mean(lfsr_dither))
print(np.mean(random_dither))

# plot the resulting sprectrum
plt.magnitude_spectrum(no_dither, Fs=10e6, scale='dB')
plt.magnitude_spectrum(lfsr_dither, Fs=10e6, scale='dB')
plt.magnitude_spectrum(random_dither, Fs=10e6, scale='dB')
plt.legend(['no dither', 'lfsr dither', 'random dither'])
plt.xscale('log')
plt.show()