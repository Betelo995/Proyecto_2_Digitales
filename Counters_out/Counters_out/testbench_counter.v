`include "contador.v"
`include "contador_synth.v"
`include "counter_tb.v"
`include "cmos_cells.v"

module testbench_counter();

    /*Parameters*/
    parameter DATA_WIDTH = 8;
    parameter BUFFER_DEPTH = 8;

wire valid_cont, req, clk, idx, push, reset;
wire [DATA_WIDTH-1:0] data_in, data_cont;
wire [BUFFER_DEPTH-1:0] cont, data_ant;
wire valid_cont_synth;
wire [DATA_WIDTH-1:0] data_cont_synth;
wire [BUFFER_DEPTH-1:0] cont_synth, data_ant_synth;

    counter_tb tb(
        // Inputs
        .valid_cont(valid_con),
        .data_cont(data_cont),
        .cont(cont),
        .data_ant(data_ant),
        // Outputs
        .req(req),
        .clk(clk),
        .idx(idx),
        .push(push),
        .reset(reset),
        .data_in(data_in)  
    );

    contador counter(/*AUTOINST*/
      // Outputs
      .data_cont		(data_cont),
      .valid_cont		(valid_cont),
      .cont             (cont),
      .data_ant         (data_ant),
      // Inputs
	  .data_in	(data_in),
      .req      (req),
      .clk			(clk),
	  .idx			(idx),
	  .push			(push),
	  .reset			(reset));

    contador_synth counter_synth(/*AUTOINST*/
      // Outputs
      .data_cont		(data_cont_synth),
      .valid_cont		(valid_cont_synth),
      .cont             (cont_synth),
      .data_ant         (data_ant_synth),
      // Inputs
	  .data_in	(data_in),
      .req      (req),
      .clk			(clk),
	  .idx			(idx),
	  .push			(push),
	  .reset			(reset));

endmodule