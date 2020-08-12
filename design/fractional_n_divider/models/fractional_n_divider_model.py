"""
    A model of the fractional N divider.
"""

import mash_mod_model

class fractional_n_divider_model():

    def __init__(self, integer_width, modulus_width, order, divide_value=1):
        """
            Instatiate the model object
        """

        # store the modulator parameters
        self.integer_width = integer_width
        self.modulus_width = modulus_width
        self.order = order
        self.divide_value = divide_value

        # create internal state variables
        self.count = 0
        self.mash_output = 0

        # create the mash model object
        self.mash_mod_obj = mash_mod_model.mash_mod_model(self.modulus_width, self.order)


    def reset(self):
        """
            Reset the internal state of the modulator
        """

        # reset internal state variables
        self.count = 0
        self.mash_output = 0
        self.mash_mod_obj.reset()


    def set_divide_value(self, divide_value):
        """
            Set a new divide value
        """

        # reset internal state variables
        self.divide_value = divide_value


    def update(self):
        """
            Update the state of the modulator with new data
        """

        # combine to find a new count target
        integer_component = int(self.divide_value)
        count_target = integer_component + self.mash_output

        # print('count_target', count_target, 'count', self.count)

        if self.count == count_target:

            # pull out the fractioanal component
            fractional_component = self.divide_value % 1

            # find out the next mash modulated value
            self.mash_output = self.mash_mod_obj.update(fractional_component)

            # reset and siganl a rising edge
            self.count = 0
            output_data = 1

        else:

            self.count += 1
            output_data = 0

        return output_data