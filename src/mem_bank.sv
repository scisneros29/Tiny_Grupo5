`default_nettype none
`timescale 1ns/1ps

module reg_bank (
    input  wire       clk,
    input  wire       rst_n,
    input  wire [2:0] addr_w,     // dirección de escritura
    input  wire [2:0] addr_r,     // dirección de lectura
    input  wire [7:0] data_in,    // bus de entrada
    input  wire       we,         // write enable
    input  wire       re,         // read enable
    output reg  [7:0] data_out
);

    reg [7:0] mem [7:0];          // 8 registros de 8 bits

    integer i;

    // Escritura síncrona y reset de memoria
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                mem[i] <= 8'b0;
            end
        end else if (we) begin
            mem[addr_w] <= data_in;
        end
    end

    // Lectura síncrona
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            data_out <= 8'b0;
        end else if (re) begin
            data_out <= mem[addr_r];
        end
    end

endmodule
