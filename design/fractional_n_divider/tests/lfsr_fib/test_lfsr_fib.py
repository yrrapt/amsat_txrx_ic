import cocotb
from cocotb.triggers import Timer, RisingEdge, ClockCycles
from cocotb.clock import Clock
import cocotb_coverage
import random
import lfsr_fib_model
from test_lfsr_fib_coverage import *



# test constants
NUMBER_TESTS = 4096


@cocotb.test()
async def coverage(dut):
    """
        Test the output against the model with random input values
    """

    # create the model
    model = lfsr_fib_model.lfsr_fib_model()

    # create an object that views the DUT state
    status = LFSRFibStatus(dut)

    # start clock
    clock = Clock(dut.i_clk, 2)
    cocotb.fork(clock.start())

    # reset the DUT
    dut.i_reset = 1
    dut.i_in = 0
    dut.i_ce = 0
    await ClockCycles(dut.i_clk, 8)
    dut.i_reset = 0
    model.reset()
    await ClockCycles(dut.i_clk, 1)

    # loop through the tests
    for test in range(NUMBER_TESTS):

        # create some random data
        input_data = {  "in"    :   random.randint(0,1),
                        "ce"    :   random.randint(0,1)}

        dut._log.info("Test number %d, input value = %d, clock enable = %d" % (test+1, input_data["in"], input_data["ce"]))

        # update the data in the DUT
        status.update()
        output_data = await process_data(dut, status, input_data)

        # check the output matches the model
        model_data = model.update(input_data)
        assert(output_data == model_data), 'Model = %x, Simulation = %x' % (model_data, output_data)


    # print and export coverage report
    coverage_db.report_coverage(dut._log.info, bins=True)
    coverage_db.export_to_xml(filename="coverage_lfsr_fib.xml")
    coverage_db.export_to_yaml(filename="coverage_lfsr_fib.yml")