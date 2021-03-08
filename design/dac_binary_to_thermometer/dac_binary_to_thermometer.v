// Copyright 2020 Thomas Parry
//
// SOME LICENSE
//
// Binary to thermometer encoder
//   A binary number to thermometer code.
//   

module dac_binary_to_thermometer
    # (
        parameter INPUT_WIDTH    = 8,
        parameter OUTPUT_WIDTH   = 2**INPUT_WIDTH
    ) (

        input [INPUT_WIDTH-1:0]         binput_binary,
        output reg [OUTPUT_WIDTH-1:0]   output_thermometer
    );

    // use a reversed thermometer to leverage the shift command
    wire [OUTPUT_WIDTH-1:0]   reversed_thermometer;
    assign reversed_thermometer = input_binary == 0 ? 0 : (2**OUTPUT_WIDTH)-1 << (OUTPUT_WIDTH-input_binary);

    // reverse the bit order of to create the output
    integer i;
    always @*
    for(i=0; i<OUTPUT_WIDTH; i=i+1) begin
        output_thermometer[i] = reversed_thermometer[OUTPUT_WIDTH-1-i];
    end

endmodule