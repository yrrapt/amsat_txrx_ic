import cocotb
from cocotb.triggers import RisingEdge, ReadOnly
from cocotb_coverage.coverage import *

# auxiliary relation function to define bins matching within a range
range_relation = lambda val_, bin_ : bin_[0] <= val_ <= bin_[1]

class MASHModStatus():
    """
    Object representing modulator status 
    """
    def __init__(self, dut):
        self.dut = dut
    
    # @cocotb.coroutine   
    def update(self):
        self.data_in = int(self.dut.data_in.value)
        self.data_out = int(self.dut.data_out)


#functional coverage - check if all FIFO states have been reached
#and check if read or write operation performed in every FIFO state 
MASHModCoverage = coverage_section (
    CoverPoint(
        name = "top.data_in",
        xf = lambda dut, status, input_data : status.data_in,
        rel = range_relation,
        bins = [(0,int(2**16*1/3)-1), (int(2**16*1/3),int(2**16*2/3)-1), (int(2**16*2/3),int(2**16-1))],
        bins_labels = ["low", "med", "high"]
    ),
    CoverPoint(
        name = "top.data_out",
        xf = lambda dut, status, input_data : status.data_out,
        rel = range_relation,
        bins = [(0,int(2**3*1/3)-1), (int(2**3*1/3),int(2**3*2/3)-1), (int(2**3*2/3),int(2**3-1))],
        bins_labels = ["low", "med", "high"]
    )
)


# procedure of processing data
# coverage sampled here - at each function call
@MASHModCoverage
async def process_data(dut, status, input_data):

    # provide new data and read old
    dut.data_in <= input_data
    await RisingEdge(dut.clk)
    output_data = int(dut.data_out)

    # convert to signed
    if output_data > 2**2:
        output_data -= 2**3

    return output_data