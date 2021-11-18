module contador #(parameter DATA_WIDTH = 8, parameter ADDRESS_WIDTH = 3, parameter BUFFER_DEPTH = 8)
(
    output reg valid_cont,
    output reg [BUFFER_DEPTH-1:0] data_cont,
    output reg [BUFFER_DEPTH-1:0] cont,
    output reg [DATA_WIDTH-1:0] data_ant,

    input req,
    input clk,
    input idx,
    input push,
    input reset,
    input [DATA_WIDTH-1:0] data_in);

always @(posedge clk) begin

    if (reset) begin
        cont <= 'h0;
        data_ant <= 'h0;
        data_cont <= 'h0;
        valid_cont <= 'h0;
    end

    else begin
        if (push) begin
            valid_cont <= 'h0;
            data_ant <= data_in;
            if (data_ant != data_in) cont <= cont + 'h1;

            if (req && idx) begin
            data_cont <= cont;
            valid_cont<= 'h1;
            end
        end 
        else begin
            //valid_cont <= 'h1;
            if (req && idx) begin
                valid_cont <= 'h1;
                data_cont <= cont;
                end
            end

        
    end
end

endmodule