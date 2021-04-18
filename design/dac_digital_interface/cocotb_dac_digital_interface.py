import cocotb
from cocotb.triggers import Timer, RisingEdge, FallingEdge, ClockCycles, ReadOnly
from cocotb.clock import Clock
from cocotb.binary import BinaryValue
import cocotb_coverage
import random

# hardware constants
INPUT_WIDTH       = 10
THERMOMETER_WIDTH = 8


@cocotb.test()
async def coverage(dut):
    """
        Test the output against the model with random input values
    """

    # define default input values
    dut.randomise_en   <= 0
    dut.input_binary_i <= 0

    # start clock and reset
    clk_proc = cocotb.fork(Clock(dut.clk_i, 2).start())
    dut.rst_ni <= 0
    await ClockCycles(dut.clk_i, 2)
    dut.rst_ni <= 1

    # loop through the tests
    for n in range(2**INPUT_WIDTH):

        # generate random thermometer code
        dut.input_binary_i <= n

        # wait a cycle
        await FallingEdge(dut.clk_i)

        # read the output values and check it's correct
        value  = 4*dut.output_thermometer_o.value.binstr.count('1')
        value += dut.output_binary_o.value.integer
        assert value == n
