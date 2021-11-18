`include "fifo_cond.v"
`include "fifo_synth.v"
`include "fifo_tb.v"
`include "cmos_cells.v"

module testbench_fifo();

  /*Parameters*/
  parameter DATA_WIDTH = 8;

// Wire and buses
wire outEmpty, outFull, errorEmpty, errorFull, clk, en, reset, rd, wr;
wire [DATA_WIDTH-1:0] data_out, data_in;
wire outEmpty_synth, outFull_synth, errorEmpty_synth, errorFull_synth;
wire [DATA_WIDTH-1:0] data_out_synth;

    fifo_tb tb(
            // Outputs
            .clk(clk),                      
            .en(en),                       
            .reset(reset),                    
            .rd(rd),                       
            .wr(wr),                       
            .data_in(data_in),
            // Inputs 
            .outEmpty(outEmpty),                      
            .outFull(outFull),                       
            .errorEmpty(errorEmpty),                       
            .errorFull(errorFull),                     
            .data_out(data_out)     
    );

    fifo_cond fifo(/*AUTOINST*/
			// Outputs
			.outEmpty	(outEmpty),
			.outFull	(outFull),
			.errorEmpty	(errorEmpty),
			.errorFull	(errorFull),
			.data_out	(data_out),
			// Inputs
			.clk		(clk),
			.en		(en),
			.reset		(reset),
			.rd		(rd),
			.wr		(wr),
			.data_in	(data_in));

    fifo_synth fifo_0_synth (/*AUTOINST*/
			// Outputs
			.outEmpty	(outEmpty_synth),
			.outFull	(outFull_synth),
			.errorEmpty	(errorEmpty_synth),
			.errorFull	(errorFull_synth),
			.data_out	(data_out_synth),
			// Inputs
			.clk		(clk),
			.en		(en),
			.reset		(reset),
			.rd		(rd),
			.wr		(wr),
			.data_in	(data_in));    

endmodule