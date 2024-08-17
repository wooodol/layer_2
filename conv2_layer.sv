`timescale 1ns / 1ps
module conv2_layer(
    input clk,
    input rst_n,
    input [31:0] data_in [0:2][0:2],
    input valid_in,
  output [31:0] conv2_out[0:63], // 31 <= filter_num
    output valid_out
    );

wire [31:0] buf_data [0:8] = {data_in[0][0], data_in[0][1], data_in[0][2],  
                       data_in[1][0], data_in[1][1], data_in[1][2],  
                       data_in[2][0], data_in[2][1], data_in[2][2]}; 
    
conv2_calc conv2_calc (
    .clk(clk),
    .rst_n(rst_n),
    .data_out(buf_data),//data_in
    .valid_in(valid_in),
  .conv2_out(conv2_out),
    .valid_conv2(valid_out)
    );
    
endmodule