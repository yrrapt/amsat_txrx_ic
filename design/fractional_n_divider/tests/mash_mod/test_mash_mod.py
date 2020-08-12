import cocotb
from cocotb.triggers import Timer, RisingEdge, ClockCycles
from cocotb.clock import Clock
import cocotb_coverage
import random
import mash_mod_model
from test_mash_mod_coverage import *


# hardware constants
WIDTH_MODULUS = 16
ORDER = 3


# test constants
NUMBER_TESTS = 256
NUMBER_SAMPLES = 1024
DELAY = 4*(ORDER-1)+1



@cocotb.test()
async def coverage(dut):
    """
        Test the output against the model with random input values
    """

    # create the model
    model = mash_mod_model.mash_mod_model(modulus_width=WIDTH_MODULUS, order=ORDER)

    # create an object that views the DUT state
    status = MASHModStatus(dut)

    # start clock
    clock = Clock(dut.clk, 2)
    cocotb.fork(clock.start())    

    # loop through the tests
    for test in range(NUMBER_TESTS):

        # create some random data
        input_data = random.randint(0,2**WIDTH_MODULUS-1)
        input_data_frac = input_data / 2**WIDTH_MODULUS
        dut._log.info("Test number %d, input value = %f" % (test+1, input_data_frac))

        # reset the DUT
        dut.rst = 1
        dut.data_in = 0
        await ClockCycles(dut.clk, 8)
        dut.rst = 0
        model.reset()
        
        # update the data in the DUT
        status.update()
        output_data = await process_data(dut, status, input_data)


        # loop through some clock cycles calculating samples
        for sample in range(NUMBER_SAMPLES):

            # update the data in the DUT
            status.update()
            output_data = await process_data(dut, status, input_data)

            # check the output matches the model
            model_data = model.update(input_data_frac)
            assert(output_data == model_data), 'Model = %x, Simulation = %x' % (int(model_data), output_data)


    # print and export coverage report
    coverage_db.report_coverage(dut._log.info, bins=True)
    coverage_db.export_to_xml(filename="coverage_mash_mod.xml")
    coverage_db.export_to_yaml(filename="coverage_mash_mod.yml")