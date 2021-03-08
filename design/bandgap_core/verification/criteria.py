import openhtf as htf
from openhtf.util.validators import *
import numpy as np

class RelativeVariation(object):
    """Validator to verify a relative variation within a list is below a certain value"""

    def __init__(self, allowed_variation=None):

        if allowed_variation is None:
            raise ValueError('Must specify allowed_variation')

        self._allowed_variation = allowed_variation


    def __call__(self, values):

        # loop through each dimension
        for value_ix in values:

            # only look at the data, not the dimension indexes
            value_i = value_ix[-1]

            # check each value to ensure it doesn't exceed the mean value
            mean = np.mean(value_i)
            for value in value_i:
                if abs(value - mean)/mean > self._allowed_variation:
                    print('Relative Variation Fail - %f' % (abs(value - mean)/mean))
                    print(value_ix[:-1])
                    return False

        # no violation has been found - test passes
        return True

relative_variation = RelativeVariation  # pylint: disable=invalid-name
register(relative_variation, name='relative_variation')


class AbsoluteVariation(object):
    """Validator to verify a relative variation within a list is below a certain value"""

    def __init__(self, expected_value=None, allowed_variation=None):

        if expected_value is None or allowed_variation is None:
            raise ValueError('Must specify expected value and allowed_variation')

        self._expected_value = expected_value
        self._allowed_variation = allowed_variation


    def __call__(self, values):

         # loop through each dimension
        for value_ix in values:

            # only look at the data, not the dimension indexes
            value_i = value_ix[-1]

            # check each value to ensure it doesn't exceed the mean value
            for value in value_i:
                if abs(value - self._expected_value)/self._expected_value > self._allowed_variation:
                    print('Absolute Variation Fail - %f' % ((value - self._expected_value)/self._expected_value))
                    print(value_ix[:-1])
                    return False

        # no violation has been found - test passes
        return True

absolute_variation = AbsoluteVariation  # pylint: disable=invalid-name
register(absolute_variation, name='absolute_variation')




def get_criteria(criterion):
    criteria_dict = {
        "dc_gain"                       :   htf.Measurement('dc_gain').in_range(minimum=50),
        "phase_margin"                  :   htf.Measurement('phase_margin').in_range(minimum=50),
        "gain_margin"                   :   htf.Measurement('gain_margin').in_range(minimum=20),
        # "current_regulation_temp"       :   htf.Measurement('current_regulation_temp').with_validator(validator_relative_variation),
        # "current_regulation_process"    :   htf.Measurement('current_regulation_process').with_validator(validator_absolute_variation)
        "current_regulation_temp"       :   htf.Measurement('current_regulation_temp').relative_variation(allowed_variation=0.01),
        "current_regulation_process"    :   htf.Measurement('current_regulation_process').absolute_variation(expected_value=5e-6, allowed_variation=0.22)
    }

    return criteria_dict[criterion]