"""
    A model of the MASH mdulator.
"""

class mash_mod_model():

    def __init__(self, modulus_width, order):
        """
            Instatiate the model object
        """

        # store the modulator parameters
        self.modulus_width = modulus_width
        self.order = order

        # create internal state variables
        self.accum_delay = [0.0]*order
        self.accum_out = [0.0]*order
        self.accum_carry = [0.0]*order
        self.sum_delay = [0.0]*(order-1)

        # calculate the delay in processing 
        # self.delay = 4*(self.order-1)+1
        self.delay = 4*(self.order-1)
        self.delay_line = [0.0] * self.delay


    def reset(self):
        """
            Reset the internal state of the modulator
        """

        # reset internal state variables
        self.accum_delay = [0.0]*self.order
        self.accum_out = [0.0]*self.order
        self.accum_carry = [0.0]*self.order
        self.sum_delay = [0.0]*(self.order-1)
        self.delay_line = [0] * self.delay


    def update(self, input_data):
        """
            Update the state of the modulator with new data
        """

        # convert fractional number to unsigned integer
        input_data_int = int(input_data * 2**self.modulus_width)

        # loop through the different stages in the modulator
        for i in range(self.order):

            # calculate accumulator outputs
            if i == 0:
                self.accum_out[i] = input_data_int + self.accum_delay[i]
            else:
                self.accum_out[i] = self.accum_out[i-1] + self.accum_delay[i]

            # treat as fixed point numbers
            self.accum_carry[i] = int(self.accum_out[i]/(2**self.modulus_width))
            self.accum_out[i] = int((self.accum_out[i])%(2**self.modulus_width))
            self.accum_delay[i] = self.accum_out[i]

        # tally up carries
        mash_output = self.accum_carry[-1]
        for i in range(self.order-2, -1, -1):
            temp_mash_output = mash_output
            mash_output += self.accum_carry[i] - self.sum_delay[i]
            self.sum_delay[i] = temp_mash_output

        # ensure the output wraps around
        if mash_output == 4:
            mash_output = -4

        # delay to track pipelining
        output_data = self.delay_line[-1]
        self.delay_line = [mash_output] + self.delay_line[:-1]

        return output_data