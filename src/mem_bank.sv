
module reg_bank (
    input clk,
    input rst_n,
    input [7:0] data_in,     // bus de entrada
    input we,                // write enable
    output reg [7:0] data_out
);

    reg [7:0] mem [7:0];     // 8 registros de 8 bits
    reg [2:0] wr_ptr;        // puntero interno de escritura

    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // reset: limpiar registros y reiniciar dirección automática
            for (i = 0; i < 8; i = i + 1) begin
                mem[i] <= 8'b0;
            end

            wr_ptr   <= 3'b000;
            data_out <= 8'b0;

        end else if (we) begin
            // escritura automática en la posición actual
            mem[wr_ptr] <= data_in;

            // mostrar el último dato almacenado
            data_out <= data_in;

            // avanzar automáticamente a la siguiente posición
            wr_ptr <= wr_ptr + 1'b1;
        end
    end

endmodule
