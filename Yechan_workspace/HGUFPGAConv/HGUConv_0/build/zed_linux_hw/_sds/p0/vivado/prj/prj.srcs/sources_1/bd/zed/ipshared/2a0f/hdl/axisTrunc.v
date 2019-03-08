`timescale 1ns / 1ps

module axisTrunc #(
    parameter IN_WIDTH=32,
    parameter OUT_WIDTH=27
)(
    //IN AXI Stream interface
    input IN_TLAST,
    input IN_TVALID,
    input [IN_WIDTH-1:0] IN_TDATA,
    output IN_TREADY,
    //OUT AXI Stream interface
    output OUT_TLAST,
    output OUT_TVALID,
    output [OUT_WIDTH-1:0] OUT_TDATA,
    input OUT_TREADY
    );
    
   assign OUT_TVALID = IN_TVALID;
   assign OUT_TLAST = IN_TLAST;
   assign IN_TREADY = OUT_TREADY;

generate
    if(IN_WIDTH > OUT_WIDTH)
	assign OUT_TDATA = IN_TDATA[OUT_WIDTH-1:0];
    else
	assign OUT_TDATA = IN_TDATA;
endgenerate

endmodule


// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
