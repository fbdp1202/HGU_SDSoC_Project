`timescale 1ns / 1ps

module axis2axis (
    //Control interface
    input ACC_CLK,
    input ARESETN,
    input CTRL_ALLOW,			//Start transfer
    output CTRL_READY,			//Data is ready on the input interface
    output CTRL_FINISHED,		//End of transfer
    //IN AXI Stream interface
    input IN_TLAST,
    input IN_TVALID,
    input [DATA_WIDTH-1:0] IN_TDATA,
    output IN_TREADY,
    //OUT AXI Stream interface
    output OUT_TLAST,
    output OUT_TVALID,
    output [DATA_WIDTH-1:0] OUT_TDATA,
    input OUT_TREADY
    );
    
parameter DATA_WIDTH=64;

    wire start;         //signal to start the transaction
    reg running;        //track if AXI transaction is in progress
    wire enable;        //enable the AXIS-FIFO interface
    reg finished;       //track if we saw TLAST after running
    
    assign start = CTRL_ALLOW & (~running);     //start if control says 'so' and we're not already running
    assign enable = running && (~finished);     //enable the interface if we're running, disables when done running immediately
        
    assign CTRL_FINISHED = finished;            //transaction is done
    assign CTRL_READY = 1;                      //always ready
    
    assign OUT_TDATA = IN_TDATA;                //pass through data
    assign OUT_TVALID = (enable)?IN_TVALID:0;   //control tvalid
    assign IN_TREADY = ((enable)?OUT_TREADY:0); //control tready
    
    //running tracker
    always @(posedge ACC_CLK) begin
        if(~ARESETN)
            running <= 0;
        else begin
            if(start)
                running <= 1;     
            if(running && finished)
                running <= 0;
        end
    end
    
    //finished tracker
    always @(posedge ACC_CLK) begin
        if(~ARESETN)
            finished <= 0;
        else begin
            if(start)   //if transaction starts, its not done
                finished <= 0;
                
            if(running && IN_TVALID && IN_TLAST && OUT_TREADY)    //transaction is done 
                finished <= 1;
        end
    end

endmodule


// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
