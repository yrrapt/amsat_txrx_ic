import openhtf as htf
from openhtf.util.validators import *
import numpy as np



def get_criteria(criterion):
    criteria_dict = {
        "dc_gain"               :   htf.Measurement('dc_gain').in_range(minimum=50),
        "unity_bandwidth"       :   htf.Measurement('unity_bandwidth').in_range(minimum=1e6)
    }

    return criteria_dict[criterion]