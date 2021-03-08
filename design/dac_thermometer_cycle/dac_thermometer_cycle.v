// Copyright 2020 Thomas Parry
//
// SOME LICENSE
//
// Thermometer output cycling
//   Cycle the location of thermometer units.
//   

module dac_thermometer_cycle
    # (
        parameter THERMOMETER_WIDTH = 256,
        parameter INDEX_WIDTH       = 4
    ) (

        input [THERMOMETER_WIDTH-1:0]   input_thermometer,
        output [THERMOMETER_WIDTH-1:0]  output_thermometer,

        input [INDEX_WIDTH-1:0]         cycle_index
    );

    localparam SHIFT_INCREMENT = THERMOMETER_WIDTH/2**INDEX_WIDTH;

    // use a reversed thermometer to leverage the shift command
    assign output_thermometer = (input_thermometer << (SHIFT_INCREMENT*cycle_index)) | (input_thermometer >> (THERMOMETER_WIDTH-SHIFT_INCREMENT*cycle_index));

endmodule