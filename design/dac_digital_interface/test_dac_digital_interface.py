from cocotb_test.simulator import run
def test_dac_digital_interface():
    run(
        verilog_sources=["dac_digital_interface.v"], # sources
        toplevel="dac_digital_interface",            # top level HDL
        module="cocotb_dac_digital_interface",       # name of cocotb test module
    )