import cocotb
from cocotb.triggers import Timer, RisingEdge, ClockCycles
from cocotb.clock import Clock
import cocotb_coverage
import random
import fractional_n_divider_model
from test_fractional_n_divider_coverage import *


# hardware constants
WIDTH_INTEGER = 10
WIDTH_MODULUS = 16
ORDER = 3


# test constants
NUMBER_TESTS = 64
NUMBER_SAMPLES = 2**16


@cocotb.test()
async def coverage(dut):
    """
        Test the output against the model with random input values
    """

    # create the model
    model = fractional_n_divider_model.fractional_n_divider_model(integer_width=WIDTH_INTEGER, modulus_width=WIDTH_MODULUS, order=ORDER)

    # create an object that views the DUT state
    status = FractionalNStatus(dut)

    # start clock
    clock = Clock(dut.input_frequency, 2)
    cocotb.fork(clock.start())    

    # loop through the tests
    for test in range(NUMBER_TESTS):

        # reset the DUT
        dut.rst = 1
        dut.divide_value = 0
        await ClockCycles(dut.input_frequency, 8)
        dut.rst = 0
        model.reset()

        # create some random data
        divide_value = random.random() * (2**WIDTH_INTEGER - 0.5*2**ORDER - 1)
        divide_value_fp = int(divide_value * 2**WIDTH_MODULUS)
        dut._log.info("Test number %d, input value = %f" % (test+1, divide_value))

        # change the divide value
        model.set_divide_value(divide_value)

        # update the divider value into the DUT
        status.update()
        output_data = await new_divider_value(dut, status, divide_value_fp)
        await RisingEdge(dut.input_frequency)

        # loop through some clock cycles calculating samples
        for sample in range(NUMBER_SAMPLES):

            # check the output matches the model
            model_data = model.update()
            output_data = int(dut.output_frequency)
            assert(output_data == model_data), 'Model = %x, Simulation = %x' % (model_data, output_data)

            await RisingEdge(dut.input_frequency)


    # print and export coverage report
    coverage_db.report_coverage(dut._log.info, bins=True)
    coverage_db.export_to_xml(filename="coverage_fractional_n_divider.xml")
    coverage_db.export_to_yaml(filename="coverage_fractional_n_divider.yml")