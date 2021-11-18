`timescale 1ns/ 100 ps

module counter_tb #(parameter DATA_WIDTH = 8, parameter ADDRESS_WIDTH = 3, parameter BUFFER_DEPTH = 8)
(
    input valid_cont,
    input [BUFFER_DEPTH-1:0] data_cont,
    input [BUFFER_DEPTH-1:0] cont,
    input [DATA_WIDTH-1:0] data_ant,

    output reg req,
    output reg clk,
    output reg idx,
    output reg push,
    output reg reset,
    output reg [DATA_WIDTH-1:0] data_in    
);


    /*PRUEBAS*/
    initial begin
        $dumpfile("counter.vcd");
        $dumpvars;    

        @(posedge clk);
        {req, idx, push} <= 1'b0;
        reset <= 1'b1;
        data_in <= $random;
        @(posedge clk);
        reset <= 1'b0;
        @(posedge clk);
        {req, idx, push} <= 1'b1;
        // Testing push
        repeat(3) begin
            @(posedge clk);
            data_in <= $random;  
        end
        @(posedge clk);
        push <= 1'b0;
        // Testing ~push
        repeat(3) begin
            @(posedge clk);
            data_in <= $random;  
        end

        $finish;
    end

    /*RELOJ*/
    initial clk <= 0;
    always #1 clk <= ~clk;

endmodule