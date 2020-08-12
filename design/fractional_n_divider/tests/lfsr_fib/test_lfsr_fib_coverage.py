import cocotb
from cocotb.triggers import RisingEdge, ReadOnly
from cocotb_coverage.coverage import *

# auxiliary relation function to define bins matching within a range
range_relation = lambda val_, bin_ : bin_[0] <= val_ <= bin_[1]

class LFSRFibStatus():
    """
    Object representing modulator status 
    """
    def __init__(self, dut):
        self.dut = dut
    
    # @cocotb.coroutine   
    def update(self):
        self.i_in = int(self.dut.i_in.value)
        self.i_ce = int(self.dut.i_ce.value)
        self.o_bit = int(self.dut.o_bit)


#functional coverage - check if all FIFO states have been reached
#and check if read or write operation performed in every FIFO state 
LFSRFibCoverage = coverage_section (
    CoverPoint(
        name = "top.i_in",
        xf = lambda dut, status, input_data : status.i_in,
        bins = [0, 1],
        bins_labels = ["low", "high"]
    ),
    CoverPoint(
        name = "top.i_ce",
        xf = lambda dut, status, input_data : status.i_ce,
        bins = [0, 1],
        bins_labels = ["low", "high"]
    ),
    CoverPoint(
        name = "top.o_bit",
        xf = lambda dut, status, input_data : status.o_bit,
        bins = [0, 1],
        bins_labels = ["low", "high"]
    )
)


# procedure of processing data
# coverage sampled here - at each function call
@LFSRFibCoverage
async def process_data(dut, status, input_data):

    # provide new data and read old
    dut.i_in <= input_data["in"]
    dut.i_ce <= input_data["ce"]
    await RisingEdge(dut.i_clk)
    output_data = int(dut.o_bit)

    return output_data