

/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */



`default_nettype none

module tt_um_scisneros29_BCR (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uio_out = 0;
  assign uio_oe[7:0] = 0;
  

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, 1'b0};



reg_bank g5_regbank (
    .clk      (clk),
    .rst_n    (rst_n),
    .addr_w   (uio_in[2:0]),
    .addr_r   (uio_in[5:3]),
    .data_in  (ui_in),
    .we       (uio_in[6]),
    .re       (uio_in[7]),
    .data_out (uo_out)
);


endmodule


