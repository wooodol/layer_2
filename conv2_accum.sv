`timescale 1ns / 1ps
module conv2_accum #(
   parameter WIDTH = 13,
   parameter HEIGHT = 17,
   parameter SIZE = WIDTH * HEIGHT,
   parameter filter_num = 64,
   parameter channel_num = 32
)(
   input [31:0] data_in [0 : filter_num - 1],
   input clk,
   input rst_n,
   input valid_in,
   output reg valid_out,
   output reg [31:0] data_out [0 : filter_num - 1 ]
    );
    


reg buf_state;
reg out_state;
reg out_valid;
reg [15:0] cnt;
reg [3:0] w_idx;
reg [4:0] h_idx;
reg [7:0] c_idx;
reg [31:0] buffer [0 : WIDTH * HEIGHT * filter_num - 1];
wire [31:0] buff_in [0 : filter_num - 1];
wire [31:0] A [0 : filter_num - 1];
wire [31:0] B [0 : filter_num - 1];



always @(posedge clk or negedge rst_n) begin
   if(valid_in == 1) begin
      buf_state <= 1;
   end
   
   if(out_valid == 0) begin
     valid_out <= 0;
     out_valid <= 1;
   end
   
/* reset */  
   if(!rst_n) begin
      valid_out <= 0;
      w_idx <= 0;
      h_idx <= 0;
      c_idx <= 0;
      buf_state <= 0;
      out_state <= 0;
      out_valid <= 1;
      for(cnt = 0;cnt < WIDTH * HEIGHT * filter_num; cnt = cnt +1) begin
         buffer[cnt] <= 0;
      end
 /* Accumulating buffer */     
   end else if (buf_state == 1) begin
         for (cnt = 0; cnt < filter_num ; cnt = cnt + 1) begin
            buffer [w_idx + (h_idx * WIDTH) + (cnt * SIZE)] <= buff_in[cnt];
         end
      if (w_idx == WIDTH - 1) begin
         w_idx <= 0;
            if (h_idx == HEIGHT - 1) begin
               if (c_idx == channel_num - 1) begin
                  buf_state <= 0;
                  out_state <= 1;
                  c_idx <= 0;
               end else begin
                 c_idx <= c_idx + 1;
               end
                 h_idx <= 0;
            end else begin
               h_idx <= h_idx + 1;
            end
      end else begin
         w_idx <= w_idx + 1;
      end

/* Data out */      
   end else if (out_state == 1) begin
      valid_out <= 1;
      for(cnt = 0;cnt < WIDTH * HEIGHT; cnt = cnt +1) begin
         data_out[cnt] <=  buffer [w_idx + (h_idx * WIDTH) + (cnt * SIZE)];
      end
      if (w_idx == WIDTH - 1) begin
         w_idx <= 0;
            if (h_idx == HEIGHT - 1) begin
               h_idx <= 0;
               out_state <= 0;
               out_valid <= 0;
            end else begin
               h_idx <= h_idx + 1;
            end
      end else begin
         w_idx <= w_idx + 1;
      end // (w_idx == WIDTH -1) end
   end  // (!rst_n) else end 
end // always end

genvar j;
generate
   for(j = 0; j < filter_num ; j = j + 1) begin : adder_input
      assign A[j] = (data_in[j]==32'h80000000)? 32'h00000000 : data_in[j];
      assign B[j] = (buffer[w_idx + (h_idx * WIDTH) + (j * SIZE)]==32'h80000000)? 32'h00000000 : buffer[w_idx + (h_idx * WIDTH) + (j * SIZE)] ;
   end
endgenerate

genvar i;
generate 
   for (i = 0; i < filter_num ; i = i + 1) begin : adders
      fadder fadder_i (
         .clk(clk),
         .A(A[i]),
         .B(B[i]),
         .result(buff_in[i])
         );
   end
endgenerate
      
      
endmodule