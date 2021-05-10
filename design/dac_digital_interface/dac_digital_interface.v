module dac_digital_interface
    # (
        parameter INPUT_WIDTH       = 10,
        parameter THERMOMETER_WIDTH = 8
    ) (
        input                                       clk_i,
        input                                       rst_ni,

        input                                       en_i,
        input                                       randomise_en_i,
        input  [INPUT_WIDTH-1:0]                    input_binary_i,

        output [2**THERMOMETER_WIDTH-1:0]           output_thermometer_o,
        output [INPUT_WIDTH-THERMOMETER_WIDTH-1:0]  output_binary_o,
        output                                      en_o
    );

    localparam THERMOMETER_LENGTH = 2**THERMOMETER_WIDTH;
    localparam BINARY_WIDTH = INPUT_WIDTH - THERMOMETER_WIDTH;
    localparam RANDOM_WIDTH = 2;

    // thermometer encoding signals
    wire [THERMOMETER_WIDTH-1:0]    input_thermometer_slice;
    reg  [BINARY_WIDTH-1:0]         input_binary_slice_q;
    reg  [BINARY_WIDTH-1:0]         input_binary_slice;
    reg  [THERMOMETER_LENGTH-1:0]   reversed_thermometer;
    reg  [THERMOMETER_LENGTH-1:0]   thermometer_code;

    // dynamic switching signals
    reg  [14:0]                     lfsr_q;
    reg  [RANDOM_WIDTH-1:0]         remap_control;
    wire [RANDOM_WIDTH-1:0]         random_signal;
    reg  [THERMOMETER_LENGTH-1:0]   thermometer_randomised;

    // Simply pass the enable signal straight through
    assign en_o = en_i;

    //-------------------------------------------------------------------------------------------------------//
    // Create the thermometer coded outputs
    //-------------------------------------------------------------------------------------------------------//

    // pick off the binary LSBs and delay to match the pipelined thermometer coding
    always @(posedge clk_i) begin
        input_binary_slice_q <= input_binary_i[BINARY_WIDTH-1:0];
        input_binary_slice <= input_binary_slice_q;
    end
    
    // use a reversed thermometer to leverage the shift command.
    assign input_thermometer_slice = input_binary_i[INPUT_WIDTH-1:INPUT_WIDTH-THERMOMETER_WIDTH];
    always @(posedge clk_i) begin
        if (input_thermometer_slice == 0) begin
            reversed_thermometer <= 0;
        end else begin
            reversed_thermometer <= (2**THERMOMETER_LENGTH)-1 << (THERMOMETER_LENGTH-input_thermometer_slice);
        end
    end

    // reverse the bit order of to create the output
    integer i;
    always @*
    for(i=0; i<THERMOMETER_LENGTH; i=i+1) begin
        thermometer_code[i] = reversed_thermometer[THERMOMETER_LENGTH-1-i];
    end

    //-------------------------------------------------------------------------------------------------------//
    // Perform dynamic switching
    //-------------------------------------------------------------------------------------------------------//

    // create random signal
    always @(negedge rst_ni, posedge clk_i) begin
        if (!rst_ni) begin
            lfsr_q <= 15'h0;
        end else begin
            lfsr_q <= {lfsr_q[13:0], lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[4]};
        end
    end
    assign random_signal = lfsr_q[14:13];

    // enable the randomisation?
    always @(negedge rst_ni, posedge clk_i) begin
        if (!rst_ni) begin
            remap_control <= 2'b00;
        end else begin
            if (randomise_en_i) begin
                remap_control <= random_signal;
            end else begin
                remap_control <= 2'b00;
            end
        end
    end

    // map outputs
    always @(posedge clk_i) begin
        case(remap_control)
            0       : thermometer_randomised <=  thermometer_code;
            1       : thermometer_randomised <= {thermometer_code[3*THERMOMETER_LENGTH/4-1:0], thermometer_code[THERMOMETER_LENGTH-1:3*THERMOMETER_LENGTH/4]};
            2       : thermometer_randomised <= {thermometer_code[2*THERMOMETER_LENGTH/4-1:0], thermometer_code[THERMOMETER_LENGTH-1:2*THERMOMETER_LENGTH/4]};
            3       : thermometer_randomised <= {thermometer_code[1*THERMOMETER_LENGTH/4-1:0], thermometer_code[THERMOMETER_LENGTH-1:1*THERMOMETER_LENGTH/4]};
            default : thermometer_randomised <= 'X;
        endcase
    end


    //-------------------------------------------------------------------------------------------------------//
    // Map outputs
    //-------------------------------------------------------------------------------------------------------//

    assign output_thermometer_o = thermometer_randomised;
    assign output_binary_o      = input_binary_slice;

    // the "macro" to dump signals
    `ifdef COCOTB_SIM
    initial begin
        $dumpfile ("dac_digital_interface.vcd");
        $dumpvars (0, dac_digital_interface);
        #1;
    end
    `endif

endmodule
