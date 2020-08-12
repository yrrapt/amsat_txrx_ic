import cocotb
from cocotb.triggers import RisingEdge, ReadOnly
from cocotb_coverage.coverage import *

# auxiliary relation function to define bins matching within a range
range_relation = lambda val_, bin_ : bin_[0] <= val_ <= bin_[1]

class FractionalNStatus():
    """
    Object representing modulator status 
    """
    def __init__(self, dut):
        self.dut = dut
    
    # @cocotb.coroutine   
    def update(self):
        self.data_in = int(self.dut.data_in)


#functional coverage - check that the DUT is getting suitably interacted with 
FractionalNCoverage = coverage_section (
    CoverPoint(
        name = "top.data_in",
        xf = lambda dut, status, data_in : status.data_in,
        rel = range_relation,
        bins = [(0,int(2**10*1/3)-1), (int(2**10*1/3),int(2**10*2/3)-1), (int(2**10*2/3),int(2**10-1))],
        bins_labels = ["low", "med", "high"]
    )
)


# procedure of processing data
# coverage sampled here - at each function call
@FractionalNCoverage
async def new_divider_value(dut, status, data_in):

    # provide new data and read old
    dut.data_in <= data_in
    await RisingEdge(dut.input_frequency)