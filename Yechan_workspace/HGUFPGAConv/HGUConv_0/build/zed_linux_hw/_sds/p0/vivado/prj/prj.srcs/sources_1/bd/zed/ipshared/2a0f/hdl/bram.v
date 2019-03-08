`timescale 1ns / 1ps

module bram #(
        parameter C_DATA_WIDTH = 32,
        parameter C_DATA_DEPTH = 16,
        parameter C_ADDR_WIDTH = 4
    ) (
        input aclk,
        input [C_ADDR_WIDTH-1:0] aaddr,
        input [C_DATA_WIDTH-1:0] adin,
        output [C_DATA_WIDTH-1:0] adout,
        input [C_DATA_WIDTH/8-1:0] awe,
        input aen,
        input bclk,
        input [C_ADDR_WIDTH-1:0] baddr,
        input [C_DATA_WIDTH-1:0] bdin,
        output [C_DATA_WIDTH-1:0] bdout,
        input [C_DATA_WIDTH/8-1:0] bwe,
        input ben
    );

    `include "axis_infrastructure_v1_1_0.vh"    

    localparam NUM_BYTES = C_DATA_WIDTH/8;
    localparam ADD_INCR = 1 << f_clog2(NUM_BYTES);
    localparam BRAM_ADDR_WIDTH = f_clog2(C_DATA_DEPTH);
    
    wire [BRAM_ADDR_WIDTH-1:0] aaddr_i;
    wire [BRAM_ADDR_WIDTH-1:0] baddr_i;
    
    //truncate the address to word-based addressing
    assign aaddr_i = aaddr >> f_clog2(ADD_INCR);
    assign baddr_i = baddr >> f_clog2(ADD_INCR);
             
    xpm_memory_tdpram # (    
      // Common module parameters
      .MEMORY_SIZE        (C_DATA_DEPTH*C_DATA_WIDTH),  //positive integer
      .MEMORY_PRIMITIVE   ("auto"),                     //string; "auto", "distributed", "block" or "ultra";
      .CLOCKING_MODE      ("common_clock"),             //string; "common_clock", "independent_clock" 
      .MEMORY_INIT_FILE   ("none"),                     //string; "none" or "<filename>.mem" 
      .MEMORY_INIT_PARAM  (""    ),                     //string;
      .USE_MEM_INIT       (0),                          //integer; 0,1
      .WAKEUP_TIME        ("disable_sleep"),            //string; "disable_sleep" or "use_sleep_pin" 
      .MESSAGE_CONTROL    (0),                          //integer; 0,1
      .ECC_MODE           ("no_ecc"),                   //string; "no_ecc", "encode_only", "decode_only" or "both_encode_and_decode" 
      .AUTO_SLEEP_TIME    (0),                          //Do not Change    
      // Port A module parameters
      .WRITE_DATA_WIDTH_A (C_DATA_WIDTH),               //positive integer
      .READ_DATA_WIDTH_A  (C_DATA_WIDTH),               //positive integer
      .BYTE_WRITE_WIDTH_A (8),                          //integer; 8, 9, or WRITE_DATA_WIDTH_A value
      .ADDR_WIDTH_A       (BRAM_ADDR_WIDTH),            //positive integer
      .READ_RESET_VALUE_A ("0"),                        //string
      .READ_LATENCY_A     (1),                          //non-negative integer
      .WRITE_MODE_A       ("read_first"),               //string; "write_first", "read_first", "no_change"     
      // Port B module parameters
      .WRITE_DATA_WIDTH_B (C_DATA_WIDTH),               //positive integer
      .READ_DATA_WIDTH_B  (C_DATA_WIDTH),               //positive integer
      .BYTE_WRITE_WIDTH_B (8),                          //integer; 8, 9, or WRITE_DATA_WIDTH_B value
      .ADDR_WIDTH_B       (BRAM_ADDR_WIDTH),            //positive integer
      .READ_RESET_VALUE_B ("0"),                        //vector of READ_DATA_WIDTH_B bits
      .READ_LATENCY_B     (1),                          //non-negative integer
      .WRITE_MODE_B       ("read_first")                //string; "write_first", "read_first", "no_change"     
    ) xpm_memory_tdpram_inst (    
      // Common module ports
      .sleep          (1'b0),    
      // Port A module ports
      .clka           (aclk),
      .rsta           (1'b0),
      .ena            (aen),
      .regcea         (1'b1),
      .wea            (awe),
      .addra          (aaddr_i),
      .dina           (adin),
      .injectsbiterra (1'b0),
      .injectdbiterra (1'b0),
      .douta          (adout),
      .sbiterra       (),
      .dbiterra       (),    
      // Port B module ports
      .clkb           (bclk),
      .rstb           (1'b0),
      .enb            (ben),
      .regceb         (1'b1),
      .web            (bwe),
      .addrb          (baddr_i),
      .dinb           (bdin),
      .injectsbiterrb (1'b0),
      .injectdbiterrb (1'b0),
      .doutb          (bdout),
      .sbiterrb       (),
      .dbiterrb       ()    
    );
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
