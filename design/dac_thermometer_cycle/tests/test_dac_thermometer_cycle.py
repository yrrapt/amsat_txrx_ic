import cocotb
from cocotb.triggers import Timer, RisingEdge, ClockCycles
from cocotb.clock import Clock
from cocotb.binary import BinaryValue
import cocotb_coverage
import random


# hardware constants
THERMOMETER_WIDTH   = 256
INDEX_WIDTH         = 4
SHIFT_INCREMENT     = int(THERMOMETER_WIDTH / 2**INDEX_WIDTH)


@cocotb.test()
async def coverage(dut):
    """
        Test the output against the model with random input values
    """

    # loop through the tests
    for n in range(int(THERMOMETER_WIDTH/SHIFT_INCREMENT)):

        # generate random thermometer code
        input_thermometer = [random.randint(0,1) for _ in range(THERMOMETER_WIDTH)]

        # present the input data
        binary_input_str = ''
        for _ in input_thermometer:
            binary_input_str += str(_)

        # assign the input values
        dut.input_thermometer <= BinaryValue(binary_input_str)
        dut.cycle_index = n
        await Timer(1)

        # cycle the input
        expected_thermometer = binary_input_str[n*SHIFT_INCREMENT:THERMOMETER_WIDTH] + binary_input_str[0:n*SHIFT_INCREMENT]

        # check the simulated and expected value match
        assert str(dut.output_thermometer.value) == expected_thermometer, "expecting: %s, simulated: %s" % (expected_thermometer, str(dut.output_thermometer.value))