import cocotb
from cocotb.triggers import Timer, RisingEdge, ClockCycles
from cocotb.clock import Clock
import cocotb_coverage
import random


# hardware constants
INPUT_WIDTH = 8
OUTPUT_WIDTH = 2**INPUT_WIDTH


@cocotb.test()
async def coverage(dut):
    """
        Test the output against the model with random input values
    """

    # loop through the tests
    for binary_input in range(OUTPUT_WIDTH):

        # present the input data
        dut.input_binary = binary_input
        await Timer(1)

        # check the output matches what's expected
        binstr = '0'*(OUTPUT_WIDTH-binary_input) + '1'*binary_input

        # form the expected number 
        expected = 0
        for i, bit in enumerate(binstr[::-1]):
            if bit == '1':
                expected += (1 << i)
        assert dut.output_thermometer == expected