module fifo_cond #(parameter DATA_WIDTH = 8, parameter ADDRESS_WIDTH = 3, parameter BUFFER_DEPTH = 8)
(
  input clk,            // Reloj
  input en,            // Enable
  input reset,            // Reset
  input rd,             // Señal que indica lectura
  input wr,             // Señal que indica escritura
  input [DATA_WIDTH-1:0] data_in,       // Datos que se quieren escribir

  output reg outEmpty,
  output reg outFull,
  output reg errorEmpty,
  output reg errorFull,
  output reg [DATA_WIDTH-1:0] data_out
  );

  reg [ADDRESS_WIDTH-1:0] ptrWr;  // Puntero de la escritura
  reg [ADDRESS_WIDTH-1:0] ptrRd;  // Puntero de la lectura
  reg [ADDRESS_WIDTH-1:0] wr_counter; // Cantidad de valores escritos

  reg [DATA_WIDTH-1:0] buffer [BUFFER_DEPTH-1:0]; // Se crea la memoria

  always @ ( posedge clk ) begin
    if (reset) begin  // Todas las salidas a cero
      outEmpty <= 1;
      outFull <= 0;
      errorEmpty <= 0;
      errorFull <= 0;
      data_out <= 0;

      ptrWr <= 0;
      ptrRd <= 0;
      wr_counter <= 0;
    end

    else begin
    if (en) begin

      if (wr) begin
        buffer[ptrWr] <= data_in;
        ptrWr <= ptrWr + 1;           // Se corre el puntero
        if (!rd) begin             // Si no se lee el recién escrito
          if(outEmpty) begin          // *Líneas tentativas
            outEmpty <= 0;            // *
          end                         // *
          if (outFull) begin          // Si el buffer ya está lleno tire error
            errorFull <= 1;
          end
          else begin
            if (wr_counter == DATA_WIDTH-1) begin // Se llena el buffer
              outFull <= 1;
            end
          end
          wr_counter <= wr_counter + 1;
        end
      end // fin del write

      if (rd) begin
        data_out <= buffer[ptrRd]; // La salida es el primer elemento en el fifo
        ptrRd <= ptrRd + 1;

        if (!wr) begin
          if (outFull) begin
            outFull <= 0;
          end
          if (outEmpty) begin
            errorEmpty <= 1;
          end
          else begin
            if (wr_counter == 1) begin
              outEmpty <= 1;
            end
          end
          wr_counter <= wr_counter - 1;
          end
        end
      end
    end // fin del reset
  end // fin del always
endmodule //fifo_cond
