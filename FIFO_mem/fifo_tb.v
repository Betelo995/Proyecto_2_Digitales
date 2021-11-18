`timescale 1ns/ 100 ps

module fifo_tb #(parameter DATA_WIDTH = 8, parameter ADDRESS_WIDTH = 3, parameter BUFFER_DEPTH = 8)
(
    // Outputs
    output reg clk,                      // Reloj
    output reg en,                       // Enable
    output reg reset,                    // Reset
    output reg rd,                       // Señal que indica lectura
    output reg wr,                       // Señal que indica escritura
    output reg [DATA_WIDTH-1:0] data_in, // Datos que se quieren escribir
    // Inouts
    inout outEmpty,                      // Señal de full
    inout outFull,                       // Señal de empty
    inout errorEmpty,                    // Error de empty   
    inout errorFull,                     // Error de full
    inout [DATA_WIDTH-1:0] data_out      // Datos que se quieren leer
);


    /*PRUEBAS*/
    initial begin
        $dumpfile("fifo_mem.vcd");
        $dumpvars;    

        @(posedge clk);
        {en, rd, wr} <= 1'b0;
        reset <= 1'b1;
        data_in <= $random;
        @(posedge clk);
        reset <= 1'b0;
        en <= 1'b1;
        wr <= 1'b1;
        // Escrituras
        repeat (8) begin
            @(posedge clk);
            data_in <= $random;
        end
        @(posedge clk);
        wr <= 1'b0;
        rd <= 1'b1;
        // Lecturas
        repeat (8) begin
            @(posedge clk);
        end
        rd <= 1'b0;

        $finish;
    end

    /*RELOJ*/
    initial clk <= 0;
    always #1 clk <= ~clk;

endmodule