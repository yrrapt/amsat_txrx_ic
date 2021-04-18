import numpy as np
import matplotlib.pyplot as plt


# calculate the bit widths
INPUT_WIDTH       = 10
THERMOMETER_WIDTH = 8
BINARY_WIDTH      = INPUT_WIDTH - THERMOMETER_WIDTH

# create the current elements
binary_elements_ideal     = [2**_ for _ in range(BINARY_WIDTH)]
segmented_elements_ideal  = [2**BINARY_WIDTH for _ in range(2**THERMOMETER_WIDTH)]

# add random mistmatch
#  the design has been made such that 3 sigma mismatch is less than 0.5 LSB
sigma = 0.5/3
binary_elements     = [_ + sigma*np.random.randn() for _ in binary_elements_ideal]
segmented_elements  = [_ + sigma*np.random.randn() for _ in segmented_elements_ideal]


def dac_digital_interface(input_binary, randomisation=False):

    # pull out the binary elements
    binary_values = []
    for i in range(BINARY_WIDTH):
        binary_values.append((input_binary >> i) & 1)

    # create thermometer code
    thermometer_portion  = input_binary >> 2
    segmented_values  = [1]*thermometer_portion
    segmented_values += [0]*(2**THERMOMETER_WIDTH - thermometer_portion)

    # create randomisation
    if randomisation:

        if randomisation == 4:
            random_value = np.random.randint(0,3)
            thermometer_length = 2**THERMOMETER_WIDTH

            if   random_value == 1:
                segmented_values = segmented_values[int(1*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(1*thermometer_length/4)]
            elif random_value == 2:
                segmented_values = segmented_values[int(2*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(2*thermometer_length/4)]
            elif random_value == 3:
                segmented_values = segmented_values[int(3*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(3*thermometer_length/4)]

        if randomisation == 8:
            random_value = np.random.randint(0,8)
            thermometer_length = 2**THERMOMETER_WIDTH

            if   random_value == 1:
                segmented_values = segmented_values[int(1*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(1*thermometer_length/4)]
            elif random_value == 2:
                segmented_values = segmented_values[int(2*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(2*thermometer_length/4)]
            elif random_value == 3:
                segmented_values = segmented_values[int(3*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(3*thermometer_length/4)]
            elif random_value == 4:
                segmented_values = segmented_values[int(4*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(4*thermometer_length/4)]
            elif random_value == 5:
                segmented_values = segmented_values[int(5*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(5*thermometer_length/4)]
            elif random_value == 6:
                segmented_values = segmented_values[int(6*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(6*thermometer_length/4)]
            elif random_value == 7:
                segmented_values = segmented_values[int(7*thermometer_length/4):int(4*thermometer_length/4)] + segmented_values[int(0*thermometer_length/4):int(7*thermometer_length/4)]


    return binary_values, segmented_values


# freq = 0.123
freq = 0.127
output_clean    = []
output_mismatch = []
output_random4  = []
output_random8  = []


############################################################################################
# Create an ideal output
for i in range(8192):

    # create input values and convert to DAC inputs
    value = int(0.75 * 2**(INPUT_WIDTH-1) * np.sin(2*np.pi*freq*i) + 2**(INPUT_WIDTH-1))
    binary_values, segmented_values = dac_digital_interface(value)

    # perform digital to analogue conversion
    output_value = 0
    for i in range(BINARY_WIDTH):
        output_value += binary_elements_ideal[i] * binary_values[i]
    
    for i in range(2**THERMOMETER_WIDTH):
        output_value += segmented_elements_ideal[i] * segmented_values[i]

    output_clean.append( output_value )


############################################################################################
# Create an output with mismatch
for i in range(8192):

    # create input values and convert to DAC inputs
    value = int(0.75 * 2**(INPUT_WIDTH-1) * np.sin(2*np.pi*freq*i) + 2**(INPUT_WIDTH-1))
    binary_values, segmented_values = dac_digital_interface(value)

    # perform digital to analogue conversion
    output_value = 0
    for i in range(BINARY_WIDTH):
        output_value += binary_elements[i] * binary_values[i]
    
    for i in range(2**THERMOMETER_WIDTH):
        output_value += segmented_elements[i] * segmented_values[i]

    output_mismatch.append( output_value )


############################################################################################
# Create an output with mismatch randomisation
for i in range(8192):

    # create input values and convert to DAC inputs
    value = int(0.75 * 2**(INPUT_WIDTH-1) * np.sin(2*np.pi*freq*i) + 2**(INPUT_WIDTH-1))
    binary_values, segmented_values = dac_digital_interface(value, randomisation=4)

    # perform digital to analogue conversion
    output_value = 0
    for i in range(BINARY_WIDTH):
        output_value += binary_elements[i] * binary_values[i]
    
    for i in range(2**THERMOMETER_WIDTH):
        output_value += segmented_elements[i] * segmented_values[i]

    output_random4.append( output_value )


############################################################################################
# Create an output with mismatch randomisation
for i in range(8192):

    # create input values and convert to DAC inputs
    value = int(0.75 * 2**(INPUT_WIDTH-1) * np.sin(2*np.pi*freq*i) + 2**(INPUT_WIDTH-1))
    binary_values, segmented_values = dac_digital_interface(value, randomisation=8)

    # perform digital to analogue conversion
    output_value = 0
    for i in range(BINARY_WIDTH):
        output_value += binary_elements[i] * binary_values[i]
    
    for i in range(2**THERMOMETER_WIDTH):
        output_value += segmented_elements[i] * segmented_values[i]

    output_random8.append( output_value )

############################################################################################
# Plot the outputs

# plt.plot(output_clean)
# plt.plot(output_mismatch)
# plt.plot(output_random)
# plt.legend(['Ideal', 'Mismatch', 'Randomised'])
# plt.show()

plt.magnitude_spectrum(output_clean,    scale='dB', alpha=0.5)
plt.magnitude_spectrum(output_mismatch, scale='dB', alpha=0.5)
plt.magnitude_spectrum(output_random4,  scale='dB', alpha=0.5)
plt.magnitude_spectrum(output_random8,  scale='dB', alpha=0.5)
plt.legend(['Ideal', 'Mismatch', 'Randomised4', 'Randomised8'])
plt.grid()
plt.show()