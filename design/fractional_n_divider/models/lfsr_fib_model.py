"""
    A model of the LFSR quasi-random number generator.
"""

class lfsr_fib_model():

    def __init__(self, polynomial_length=8, initial_fill=1, taps=0x2D):
        """
            Instatiate the model object     
        """

        # store the modulator parameters
        self.polynomial_length = polynomial_length
        self.initial_fill = [int(digit) for digit in format(initial_fill, '#0'+str(polynomial_length+2)+'b')[2:]][::-1]
        self.taps = [int(digit) for digit in format(taps, '#0'+str(polynomial_length+2)+'b')[2:]][::-1]

        # create internal state variables
        self.reset()


    def reset(self):
        """
            Reset the internal state of the modulator
        """

        # reset internal state variables
        self.shift_register = self.initial_fill


    def update(self, input_data):
        """
            Update the state of the LFSR with new data
        """

        previous_out = self.shift_register[0]

        if input_data["ce"]:

            # XOR the selected tap points
            xored = self.shift_register[0] & self.taps[0]
            for i in range(1, self.polynomial_length-1):
                xored ^= self.shift_register[i] & self.taps[i]

            # update the shift register
            self.shift_register = self.shift_register[1:] + [xored ^ input_data["in"]]

        return previous_out