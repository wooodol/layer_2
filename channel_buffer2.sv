`timescale 1ns / 1ps
module channel_buffer2#(parameter
IMAGE_WIDTH = 13,
IMAGE_HEIGHT = 17,
CHANNELS = 64,
DATA_BITS = 32

)(
    input clk,
    input rst_n,
    input valid_in,
    input [31:0] data_in[0:CHANNELS-1],
  
output reg [31:0] channel1 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel2 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel3 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel4 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel5 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel6 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel7 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel8 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel9 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel10 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel11 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel12 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel13 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel14 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel15 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel16 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel17 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel18 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel19 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel20 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel21 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel22 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel23 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel24 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel25 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel26 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel27 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel28 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel29 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel30 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel31 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel32 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel33 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel34 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel35 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel36 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel37 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel38 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel39 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel40 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel41 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel42 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel43 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel44 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel45 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel46 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel47 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel48 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel49 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel50 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel51 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel52 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel53 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel54 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel55 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel56 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel57 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel58 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel59 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel60 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel61 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel62 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel63 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],
output reg [31:0] channel64 [0:IMAGE_HEIGHT-1][0:IMAGE_WIDTH-1],


output reg valid_out,
// 첫 번째 배열
output reg [31:0] data_out_1 [0:1][0:1],
output reg [31:0] data_out_2 [0:1][0:1],
output reg [31:0] data_out_3 [0:1][0:1],
output reg [31:0] data_out_4 [0:1][0:1],
output reg [31:0] data_out_5 [0:1][0:1],
output reg [31:0] data_out_6 [0:1][0:1],
output reg [31:0] data_out_7 [0:1][0:1],
output reg [31:0] data_out_8 [0:1][0:1],
output reg [31:0] data_out_9 [0:1][0:1],
output reg [31:0] data_out_10 [0:1][0:1],
output reg [31:0] data_out_11 [0:1][0:1],
output reg [31:0] data_out_12 [0:1][0:1],
output reg [31:0] data_out_13 [0:1][0:1],
output reg [31:0] data_out_14 [0:1][0:1],
output reg [31:0] data_out_15 [0:1][0:1],
output reg [31:0] data_out_16 [0:1][0:1],
output reg [31:0] data_out_17 [0:1][0:1],
output reg [31:0] data_out_18 [0:1][0:1],
output reg [31:0] data_out_19 [0:1][0:1],
output reg [31:0] data_out_20 [0:1][0:1],
output reg [31:0] data_out_21 [0:1][0:1],
output reg [31:0] data_out_22 [0:1][0:1],
output reg [31:0] data_out_23 [0:1][0:1],
output reg [31:0] data_out_24 [0:1][0:1],
output reg [31:0] data_out_25 [0:1][0:1],
output reg [31:0] data_out_26 [0:1][0:1],
output reg [31:0] data_out_27 [0:1][0:1],
output reg [31:0] data_out_28 [0:1][0:1],
output reg [31:0] data_out_29 [0:1][0:1],
output reg [31:0] data_out_30 [0:1][0:1],
output reg [31:0] data_out_31 [0:1][0:1],
output reg [31:0] data_out_32 [0:1][0:1],
output reg [31:0] data_out_33 [0:1][0:1],
output reg [31:0] data_out_34 [0:1][0:1],
output reg [31:0] data_out_35 [0:1][0:1],
output reg [31:0] data_out_36 [0:1][0:1],
output reg [31:0] data_out_37 [0:1][0:1],
output reg [31:0] data_out_38 [0:1][0:1],
output reg [31:0] data_out_39 [0:1][0:1],
output reg [31:0] data_out_40 [0:1][0:1],
output reg [31:0] data_out_41 [0:1][0:1],
output reg [31:0] data_out_42 [0:1][0:1],
output reg [31:0] data_out_43 [0:1][0:1],
output reg [31:0] data_out_44 [0:1][0:1],
output reg [31:0] data_out_45 [0:1][0:1],
output reg [31:0] data_out_46 [0:1][0:1],
output reg [31:0] data_out_47 [0:1][0:1],
output reg [31:0] data_out_48 [0:1][0:1],
output reg [31:0] data_out_49 [0:1][0:1],
output reg [31:0] data_out_50 [0:1][0:1],
output reg [31:0] data_out_51 [0:1][0:1],
output reg [31:0] data_out_52 [0:1][0:1],
output reg [31:0] data_out_53 [0:1][0:1],
output reg [31:0] data_out_54 [0:1][0:1],
output reg [31:0] data_out_55 [0:1][0:1],
output reg [31:0] data_out_56 [0:1][0:1],
output reg [31:0] data_out_57 [0:1][0:1],
output reg [31:0] data_out_58 [0:1][0:1],
output reg [31:0] data_out_59 [0:1][0:1],
output reg [31:0] data_out_60 [0:1][0:1],
output reg [31:0] data_out_61 [0:1][0:1],
output reg [31:0] data_out_62 [0:1][0:1],
output reg [31:0] data_out_63 [0:1][0:1],
output reg [31:0] data_out_64 [0:1][0:1],

    
    // 첫 번째 신호 그룹
output reg[10:0] y,
output reg [10:0] m,
output reg[10:0] y_2,
output reg [10:0] m_2,
output reg[10:0] y_3,
output reg [10:0] m_3,
output reg[10:0] y_4,
output reg [10:0] m_4,
output reg[10:0] y_5,
output reg [10:0] m_5,
output reg[10:0] y_6,
output reg [10:0] m_6,
output reg[10:0] y_7,
output reg [10:0] m_7,
output reg[10:0] y_8,
output reg [10:0] m_8,
output reg[10:0] y_9,
output reg [10:0] m_9,
output reg[10:0] y_10,
output reg [10:0] m_10,
output reg[10:0] y_11,
output reg [10:0] m_11,
output reg[10:0] y_12,
output reg [10:0] m_12,
output reg[10:0] y_13,
output reg [10:0] m_13,
output reg[10:0] y_14,
output reg [10:0] m_14,
output reg[10:0] y_15,
output reg [10:0] m_15,
output reg[10:0] y_16,
output reg [10:0] m_16,
output reg[10:0] y_17,
output reg [10:0] m_17,
output reg[10:0] y_18,
output reg [10:0] m_18,
output reg[10:0] y_19,
output reg [10:0] m_19,
output reg[10:0] y_20,
output reg [10:0] m_20,
output reg[10:0] y_21,
output reg [10:0] m_21,
output reg[10:0] y_22,
output reg [10:0] m_22,
output reg[10:0] y_23,
output reg [10:0] m_23,
output reg[10:0] y_24,
output reg [10:0] m_24,
output reg[10:0] y_25,
output reg [10:0] m_25,
output reg[10:0] y_26,
output reg [10:0] m_26,
output reg[10:0] y_27,
output reg [10:0] m_27,
output reg[10:0] y_28,
output reg [10:0] m_28,
output reg[10:0] y_29,
output reg [10:0] m_29,
output reg[10:0] y_30,
output reg [10:0] m_30,
output reg[10:0] y_31,
output reg [10:0] m_31,
output reg[10:0] y_32,
output reg [10:0] m_32,
output reg[10:0] y_33,
output reg [10:0] m_33,
output reg[10:0] y_34,
output reg [10:0] m_34,
output reg[10:0] y_35,
output reg [10:0] m_35,
output reg[10:0] y_36,
output reg [10:0] m_36,
output reg[10:0] y_37,
output reg [10:0] m_37,
output reg[10:0] y_38,
output reg [10:0] m_38,
output reg[10:0] y_39,
output reg [10:0] m_39,
output reg[10:0] y_40,
output reg [10:0] m_40,
output reg[10:0] y_41,
output reg [10:0] m_41,
output reg[10:0] y_42,
output reg [10:0] m_42,
output reg[10:0] y_43,
output reg [10:0] m_43,
output reg[10:0] y_44,
output reg [10:0] m_44,
output reg[10:0] y_45,
output reg [10:0] m_45,
output reg[10:0] y_46,
output reg [10:0] m_46,
output reg[10:0] y_47,
output reg [10:0] m_47,
output reg[10:0] y_48,
output reg [10:0] m_48,
output reg[10:0] y_49,
output reg [10:0] m_49,
output reg[10:0] y_50,
output reg [10:0] m_50,
output reg[10:0] y_51,
output reg [10:0] m_51,
output reg[10:0] y_52,
output reg [10:0] m_52,
output reg[10:0] y_53,
output reg [10:0] m_53,
output reg[10:0] y_54,
output reg [10:0] m_54,
output reg[10:0] y_55,
output reg [10:0] m_55,
output reg[10:0] y_56,
output reg [10:0] m_56,
output reg[10:0] y_57,
output reg [10:0] m_57,
output reg[10:0] y_58,
output reg [10:0] m_58,
output reg[10:0] y_59,
output reg [10:0] m_59,
output reg[10:0] y_60,
output reg [10:0] m_60,
output reg[10:0] y_61,
output reg [10:0] m_61,
output reg[10:0] y_62,
output reg [10:0] m_62,
output reg[10:0] y_63,
output reg [10:0] m_63,
output reg[10:0] y_64,
output reg [10:0] m_64,

output reg state
   );


reg[10:0] i,j;
reg delay;

// reg[10:0] 및 reg 신호 선언
reg[10:0] k, t;
reg[10:0] k_2, t_2;
reg state_2;
reg[10:0] k_3, t_3;
reg state_3;
reg[10:0] k_4, t_4;
reg state_4;
reg[10:0] k_5, t_5;
reg state_5;
reg[10:0] k_6, t_6;
reg state_6;
reg[10:0] k_7, t_7;
reg state_7;
reg[10:0] k_8, t_8;
reg state_8;
reg[10:0] k_9, t_9;
reg state_9;
reg[10:0] k_10, t_10;
reg state_10;
reg[10:0] k_11, t_11;
reg state_11;
reg[10:0] k_12, t_12;
reg state_12;
reg[10:0] k_13, t_13;
reg state_13;
reg[10:0] k_14, t_14;
reg state_14;
reg[10:0] k_15, t_15;
reg state_15;
reg[10:0] k_16, t_16;
reg state_16;
reg[10:0] k_17, t_17;
reg state_17;
reg[10:0] k_18, t_18;
reg state_18;
reg[10:0] k_19, t_19;
reg state_19;
reg[10:0] k_20, t_20;
reg state_20;
reg[10:0] k_21, t_21;
reg state_21;
reg[10:0] k_22, t_22;
reg state_22;
reg[10:0] k_23, t_23;
reg state_23;
reg[10:0] k_24, t_24;
reg state_24;
reg[10:0] k_25, t_25;
reg state_25;
reg[10:0] k_26, t_26;
reg state_26;
reg[10:0] k_27, t_27;
reg state_27;
reg[10:0] k_28, t_28;
reg state_28;
reg[10:0] k_29, t_29;
reg state_29;
reg[10:0] k_30, t_30;
reg state_30;
reg[10:0] k_31, t_31;
reg state_31;
reg[10:0] k_32, t_32;
reg state_32;
reg[10:0] k_33, t_33;
reg state_33;
reg[10:0] k_34, t_34;
reg state_34;
reg[10:0] k_35, t_35;
reg state_35;
reg[10:0] k_36, t_36;
reg state_36;
reg[10:0] k_37, t_37;
reg state_37;
reg[10:0] k_38, t_38;
reg state_38;
reg[10:0] k_39, t_39;
reg state_39;
reg[10:0] k_40, t_40;
reg state_40;
reg[10:0] k_41, t_41;
reg state_41;
reg[10:0] k_42, t_42;
reg state_42;
reg[10:0] k_43, t_43;
reg state_43;
reg[10:0] k_44, t_44;
reg state_44;
reg[10:0] k_45, t_45;
reg state_45;
reg[10:0] k_46, t_46;
reg state_46;
reg[10:0] k_47, t_47;
reg state_47;
reg[10:0] k_48, t_48;
reg state_48;
reg[10:0] k_49, t_49;
reg state_49;
reg[10:0] k_50, t_50;
reg state_50;
reg[10:0] k_51, t_51;
reg state_51;
reg[10:0] k_52, t_52;
reg state_52;
reg[10:0] k_53, t_53;
reg state_53;
reg[10:0] k_54, t_54;
reg state_54;
reg[10:0] k_55, t_55;
reg state_55;
reg[10:0] k_56, t_56;
reg state_56;
reg[10:0] k_57, t_57;
reg state_57;
reg[10:0] k_58, t_58;
reg state_58;
reg[10:0] k_59, t_59;
reg state_59;
reg[10:0] k_60, t_60;
reg state_60;
reg[10:0] k_61, t_61;
reg state_61;
reg[10:0] k_62, t_62;
reg state_62;
reg[10:0] k_63, t_63;
reg state_63;
reg[10:0] k_64, t_64;
reg state_64;





always @(posedge clk or negedge rst_n) begin
    if(~rst_n)begin
        i <= 0;
        j <= 0;
        valid_out <= 0;
        
       
    k <= 0;
t <= 0;
m <= 0;
state <= 0;
y <= 0;

k_2 <= 0;
t_2 <= 0;
m_2 <= 0;
state_2 <= 0;
y_2 <= 0;

k_3 <= 0;
t_3 <= 0;
m_3 <= 0;
state_3 <= 0;
y_3 <= 0;

k_4 <= 0;
t_4 <= 0;
m_4 <= 0;
state_4 <= 0;
y_4 <= 0;

k_5 <= 0;
t_5 <= 0;
m_5 <= 0;
state_5 <= 0;
y_5 <= 0;

k_6 <= 0;
t_6 <= 0;
m_6 <= 0;
state_6 <= 0;
y_6 <= 0;

k_7 <= 0;
t_7 <= 0;
m_7 <= 0;
state_7 <= 0;
y_7 <= 0;

k_8 <= 0;
t_8 <= 0;
m_8 <= 0;
state_8 <= 0;
y_8 <= 0;

k_9 <= 0;
t_9 <= 0;
m_9 <= 0;
state_9 <= 0;
y_9 <= 0;

k_10 <= 0;
t_10 <= 0;
m_10 <= 0;
state_10 <= 0;
y_10 <= 0;

k_11 <= 0;
t_11 <= 0;
m_11 <= 0;
state_11 <= 0;
y_11 <= 0;

k_12 <= 0;
t_12 <= 0;
m_12 <= 0;
state_12 <= 0;
y_12 <= 0;

k_13 <= 0;
t_13 <= 0;
m_13 <= 0;
state_13 <= 0;
y_13 <= 0;

k_14 <= 0;
t_14 <= 0;
m_14 <= 0;
state_14 <= 0;
y_14 <= 0;

k_15 <= 0;
t_15 <= 0;
m_15 <= 0;
state_15 <= 0;
y_15 <= 0;

k_16 <= 0;
t_16 <= 0;
m_16 <= 0;
state_16 <= 0;
y_16 <= 0;

k_17 <= 0;
t_17 <= 0;
m_17 <= 0;
state_17 <= 0;
y_17 <= 0;

k_18 <= 0;
t_18 <= 0;
m_18 <= 0;
state_18 <= 0;
y_18 <= 0;

k_19 <= 0;
t_19 <= 0;
m_19 <= 0;
state_19 <= 0;
y_19 <= 0;

k_20 <= 0;
t_20 <= 0;
m_20 <= 0;
state_20 <= 0;
y_20 <= 0;

k_21 <= 0;
t_21 <= 0;
m_21 <= 0;
state_21 <= 0;
y_21 <= 0;

k_22 <= 0;
t_22 <= 0;
m_22 <= 0;
state_22 <= 0;
y_22 <= 0;

k_23 <= 0;
t_23 <= 0;
m_23 <= 0;
state_23 <= 0;
y_23 <= 0;

k_24 <= 0;
t_24 <= 0;
m_24 <= 0;
state_24 <= 0;
y_24 <= 0;

k_25 <= 0;
t_25 <= 0;
m_25 <= 0;
state_25 <= 0;
y_25 <= 0;

k_26 <= 0;
t_26 <= 0;
m_26 <= 0;
state_26 <= 0;
y_26 <= 0;

k_27 <= 0;
t_27 <= 0;
m_27 <= 0;
state_27 <= 0;
y_27 <= 0;

k_28 <= 0;
t_28 <= 0;
m_28 <= 0;
state_28 <= 0;
y_28 <= 0;

k_29 <= 0;
t_29 <= 0;
m_29 <= 0;
state_29 <= 0;
y_29 <= 0;

k_30 <= 0;
t_30 <= 0;
m_30 <= 0;
state_30 <= 0;
y_30 <= 0;

k_31 <= 0;
t_31 <= 0;
m_31 <= 0;
state_31 <= 0;
y_31 <= 0;

k_32 <= 0;
t_32 <= 0;
m_32 <= 0;
state_32 <= 0;
y_32 <= 0;

k_33 <= 0;
t_33 <= 0;
m_33 <= 0;
state_33 <= 0;
y_33 <= 0;

k_34 <= 0;
t_34 <= 0;
m_34 <= 0;
state_34 <= 0;
y_34 <= 0;

k_35 <= 0;
t_35 <= 0;
m_35 <= 0;
state_35 <= 0;
y_35 <= 0;

k_36 <= 0;
t_36 <= 0;
m_36 <= 0;
state_36 <= 0;
y_36 <= 0;

k_37 <= 0;
t_37 <= 0;
m_37 <= 0;
state_37 <= 0;
y_37 <= 0;

k_38 <= 0;
t_38 <= 0;
m_38 <= 0;
state_38 <= 0;
y_38 <= 0;

k_39 <= 0;
t_39 <= 0;
m_39 <= 0;
state_39 <= 0;
y_39 <= 0;

k_40 <= 0;
t_40 <= 0;
m_40 <= 0;
state_40 <= 0;
y_40 <= 0;

k_41 <= 0;
t_41 <= 0;
m_41 <= 0;
state_41 <= 0;
y_41 <= 0;

k_42 <= 0;
t_42 <= 0;
m_42 <= 0;
state_42 <= 0;
y_42 <= 0;

k_43 <= 0;
t_43 <= 0;
m_43 <= 0;
state_43 <= 0;
y_43 <= 0;

k_44 <= 0;
t_44 <= 0;
m_44 <= 0;
state_44 <= 0;
y_44 <= 0;

k_45 <= 0;
t_45 <= 0;
m_45 <= 0;
state_45 <= 0;
y_45 <= 0;

k_46 <= 0;
t_46 <= 0;
m_46 <= 0;
state_46 <= 0;
y_46 <= 0;

k_47 <= 0;
t_47 <= 0;
m_47 <= 0;
state_47 <= 0;
y_47 <= 0;

k_48 <= 0;
t_48 <= 0;
m_48 <= 0;
state_48 <= 0;
y_48 <= 0;

k_49 <= 0;
t_49 <= 0;
m_49 <= 0;
state_49 <= 0;
y_49 <= 0;

k_50 <= 0;
t_50 <= 0;
m_50 <= 0;
state_50 <= 0;
y_50 <= 0;

k_51 <= 0;
t_51 <= 0;
m_51 <= 0;
state_51 <= 0;
y_51 <= 0;

k_52 <= 0;
t_52 <= 0;
m_52 <= 0;
state_52 <= 0;
y_52 <= 0;

k_53 <= 0;
t_53 <= 0;
m_53 <= 0;
state_53 <= 0;
y_53 <= 0;

k_54 <= 0;
t_54 <= 0;
m_54 <= 0;
state_54 <= 0;
y_54 <= 0;

k_55 <= 0;
t_55 <= 0;
m_55 <= 0;
state_55 <= 0;
y_55 <= 0;

k_56 <= 0;
t_56 <= 0;
m_56 <= 0;
state_56 <= 0;
y_56 <= 0;

k_57 <= 0;
t_57 <= 0;
m_57 <= 0;
state_57 <= 0;
y_57 <= 0;

k_58 <= 0;
t_58 <= 0;
m_58 <= 0;
state_58 <= 0;
y_58 <= 0;

k_59 <= 0;
t_59 <= 0;
m_59 <= 0;
state_59 <= 0;
y_59 <= 0;

k_60 <= 0;
t_60 <= 0;
m_60 <= 0;
state_60 <= 0;
y_60 <= 0;

k_61 <= 0;
t_61 <= 0;
m_61 <= 0;
state_61 <= 0;
y_61 <= 0;

k_62 <= 0;
t_62 <= 0;
m_62 <= 0;
state_62 <= 0;
y_62 <= 0;

k_63 <= 0;
t_63 <= 0;
m_63 <= 0;
state_63 <= 0;
y_63 <= 0;

k_64 <= 0;
t_64 <= 0;
m_64 <= 0;
state_64 <= 0;
y_64 <= 0;


delay <= 0;
    end 
    else begin
// Channel 1
    if(state == 0) begin
        if(valid_in) begin
     
channel1[i][j] <= data_in[0];
channel2[i][j] <= data_in[1];
channel3[i][j] <= data_in[2];
channel4[i][j] <= data_in[3];
channel5[i][j] <= data_in[4];
channel6[i][j] <= data_in[5];
channel7[i][j] <= data_in[6];
channel8[i][j] <= data_in[7];
channel9[i][j] <= data_in[8];
channel10[i][j] <= data_in[9];
channel11[i][j] <= data_in[10];
channel12[i][j] <= data_in[11];
channel13[i][j] <= data_in[12];
channel14[i][j] <= data_in[13];
channel15[i][j] <= data_in[14];
channel16[i][j] <= data_in[15];
channel17[i][j] <= data_in[16];
channel18[i][j] <= data_in[17];
channel19[i][j] <= data_in[18];
channel20[i][j] <= data_in[19];
channel21[i][j] <= data_in[20];
channel22[i][j] <= data_in[21];
channel23[i][j] <= data_in[22];
channel24[i][j] <= data_in[23];
channel25[i][j] <= data_in[24];
channel26[i][j] <= data_in[25];
channel27[i][j] <= data_in[26];
channel28[i][j] <= data_in[27];
channel29[i][j] <= data_in[28];
channel30[i][j] <= data_in[29];
channel31[i][j] <= data_in[30];
channel32[i][j] <= data_in[31];
channel33[i][j] <= data_in[32];
channel34[i][j] <= data_in[33];
channel35[i][j] <= data_in[34];
channel36[i][j] <= data_in[35];
channel37[i][j] <= data_in[36];
channel38[i][j] <= data_in[37];
channel39[i][j] <= data_in[38];
channel40[i][j] <= data_in[39];
channel41[i][j] <= data_in[40];
channel42[i][j] <= data_in[41];
channel43[i][j] <= data_in[42];
channel44[i][j] <= data_in[43];
channel45[i][j] <= data_in[44];
channel46[i][j] <= data_in[45];
channel47[i][j] <= data_in[46];
channel48[i][j] <= data_in[47];
channel49[i][j] <= data_in[48];
channel50[i][j] <= data_in[49];
channel51[i][j] <= data_in[50];
channel52[i][j] <= data_in[51];
channel53[i][j] <= data_in[52];
channel54[i][j] <= data_in[53];
channel55[i][j] <= data_in[54];
channel56[i][j] <= data_in[55];
channel57[i][j] <= data_in[56];
channel58[i][j] <= data_in[57];
channel59[i][j] <= data_in[58];
channel60[i][j] <= data_in[59];
channel61[i][j] <= data_in[60];
channel62[i][j] <= data_in[61];
channel63[i][j] <= data_in[62];
channel64[i][j] <= data_in[63];

            j <= j + 1;  
               
            if(j == IMAGE_WIDTH-1) begin
                i <= i + 1;
                j <= 0;
                if (i == IMAGE_HEIGHT-1) begin
                    i <= 0;
                    j <= 0;
                    state <= 1;
                end
            end   
        end
    end    
 if(delay) begin
     valid_out <= 0;
 end
    
    // 1번째 채널
if(state == 1) begin
    data_out_1[0][0] <= channel1[k][t];
    data_out_1[0][1] <= channel1[k][t+1];
    data_out_1[1][0] <= channel1[k+1][t];
    data_out_1[1][1] <= channel1[k+1][t+1];
    t <= t + 2;
    m <= m + 1;
    valid_out <= 1;
    if(t == IMAGE_WIDTH-3) begin
        k <= k + 2;
        t <= 0;
        if(k == IMAGE_HEIGHT-3) begin
            k <= 0;
            t <= 0;
            m <= 0;
            state <= 0; 
            y <= 1;
            delay <= 1;
        end
    end
end

if(state == 1) begin
    data_out_2[0][0] <= channel2[k_2][t_2];
    data_out_2[0][1] <= channel2[k_2][t_2+1];
    data_out_2[1][0] <= channel2[k_2+1][t_2];
    data_out_2[1][1] <= channel2[k_2+1][t_2+1];
    t_2 <= t_2 + 2;
    m_2 <= m_2 + 1;
    if(t_2 == IMAGE_WIDTH-3) begin
        k_2 <= k_2 + 2;
        t_2 <= 0;
        if(k_2 == IMAGE_HEIGHT-3) begin
            k_2 <= 0;
            t_2 <= 0;
            m_2 <= 0;
            state_2 <= 0; 
            y_2 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_3[0][0] <= channel3[k_3][t_3];
    data_out_3[0][1] <= channel3[k_3][t_3+1];
    data_out_3[1][0] <= channel3[k_3+1][t_3];
    data_out_3[1][1] <= channel3[k_3+1][t_3+1];
    t_3 <= t_3 + 2;
    m_3 <= m_3 + 1;
    if(t_3 == IMAGE_WIDTH-3) begin
        k_3 <= k_3 + 2;
        t_3 <= 0;
        if(k_3 == IMAGE_HEIGHT-3) begin
            k_3 <= 0;
            t_3 <= 0;
            m_3 <= 0;
            state_3 <= 0; 
            y_3 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_4[0][0] <= channel4[k_4][t_4];
    data_out_4[0][1] <= channel4[k_4][t_4+1];
    data_out_4[1][0] <= channel4[k_4+1][t_4];
    data_out_4[1][1] <= channel4[k_4+1][t_4+1];
    t_4 <= t_4 + 2;
    m_4 <= m_4 + 1;
    if(t_4 == IMAGE_WIDTH-3) begin
        k_4 <= k_4 + 2;
        t_4 <= 0;
        if(k_4 == IMAGE_HEIGHT-3) begin
            k_4 <= 0;
            t_4 <= 0;
            m_4 <= 0;
            state_4 <= 0; 
            y_4 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_5[0][0] <= channel5[k_5][t_5];
    data_out_5[0][1] <= channel5[k_5][t_5+1];
    data_out_5[1][0] <= channel5[k_5+1][t_5];
    data_out_5[1][1] <= channel5[k_5+1][t_5+1];
    t_5 <= t_5 + 2;
    m_5 <= m_5 + 1;
    if(t_5 == IMAGE_WIDTH-3) begin
        k_5 <= k_5 + 2;
        t_5 <= 0;
        if(k_5 == IMAGE_HEIGHT-3) begin
            k_5 <= 0;
            t_5 <= 0;
            m_5 <= 0;
            state_5 <= 0; 
            y_5 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_6[0][0] <= channel6[k_6][t_6];
    data_out_6[0][1] <= channel6[k_6][t_6+1];
    data_out_6[1][0] <= channel6[k_6+1][t_6];
    data_out_6[1][1] <= channel6[k_6+1][t_6+1];
    t_6 <= t_6 + 2;
    m_6 <= m_6 + 1;
    if(t_6 == IMAGE_WIDTH-3) begin
        k_6 <= k_6 + 2;
        t_6 <= 0;
        if(k_6 == IMAGE_HEIGHT-3) begin
            k_6 <= 0;
            t_6 <= 0;
            m_6 <= 0;
            state_6 <= 0; 
            y_6 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_7[0][0] <= channel7[k_7][t_7];
    data_out_7[0][1] <= channel7[k_7][t_7+1];
    data_out_7[1][0] <= channel7[k_7+1][t_7];
    data_out_7[1][1] <= channel7[k_7+1][t_7+1];
    t_7 <= t_7 + 2;
    m_7 <= m_7 + 1;
    if(t_7 == IMAGE_WIDTH-3) begin
        k_7 <= k_7 + 2;
        t_7 <= 0;
        if(k_7 == IMAGE_HEIGHT-3) begin
            k_7 <= 0;
            t_7 <= 0;
            m_7 <= 0;
            state_7 <= 0; 
            y_7 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_8[0][0] <= channel8[k_8][t_8];
    data_out_8[0][1] <= channel8[k_8][t_8+1];
    data_out_8[1][0] <= channel8[k_8+1][t_8];
    data_out_8[1][1] <= channel8[k_8+1][t_8+1];
    t_8 <= t_8 + 2;
    m_8 <= m_8 + 1;
    if(t_8 == IMAGE_WIDTH-3) begin
        k_8 <= k_8 + 2;
        t_8 <= 0;
        if(k_8 == IMAGE_HEIGHT-3) begin
            k_8 <= 0;
            t_8 <= 0;
            m_8 <= 0;
            state_8 <= 0; 
            y_8 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_9[0][0] <= channel9[k_9][t_9];
    data_out_9[0][1] <= channel9[k_9][t_9+1];
    data_out_9[1][0] <= channel9[k_9+1][t_9];
    data_out_9[1][1] <= channel9[k_9+1][t_9+1];
    t_9 <= t_9 + 2;
    m_9 <= m_9 + 1;
    if(t_9 == IMAGE_WIDTH-3) begin
        k_9 <= k_9 + 2;
        t_9 <= 0;
        if(k_9 == IMAGE_HEIGHT-3) begin
            k_9 <= 0;
            t_9 <= 0;
            m_9 <= 0;
            state_9 <= 0; 
            y_9 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_10[0][0] <= channel10[k_10][t_10];
    data_out_10[0][1] <= channel10[k_10][t_10+1];
    data_out_10[1][0] <= channel10[k_10+1][t_10];
    data_out_10[1][1] <= channel10[k_10+1][t_10+1];
    t_10 <= t_10 + 2;
    m_10 <= m_10 + 1;
    if(t_10 == IMAGE_WIDTH-3) begin
        k_10 <= k_10 + 2;
        t_10 <= 0;
        if(k_10 == IMAGE_HEIGHT-3) begin
            k_10 <= 0;
            t_10 <= 0;
            m_10 <= 0;
            state_10 <= 0; 
            y_10 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_11[0][0] <= channel11[k_11][t_11];
    data_out_11[0][1] <= channel11[k_11][t_11+1];
    data_out_11[1][0] <= channel11[k_11+1][t_11];
    data_out_11[1][1] <= channel11[k_11+1][t_11+1];
    t_11 <= t_11 + 2;
    m_11 <= m_11 + 1;
    if(t_11 == IMAGE_WIDTH-3) begin
        k_11 <= k_11 + 2;
        t_11 <= 0;
        if(k_11 == IMAGE_HEIGHT-3) begin
            k_11 <= 0;
            t_11 <= 0;
            m_11 <= 0;
            state_11 <= 0; 
            y_11 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_12[0][0] <= channel12[k_12][t_12];
    data_out_12[0][1] <= channel12[k_12][t_12+1];
    data_out_12[1][0] <= channel12[k_12+1][t_12];
    data_out_12[1][1] <= channel12[k_12+1][t_12+1];
    t_12 <= t_12 + 2;
    m_12 <= m_12 + 1;
    if(t_12 == IMAGE_WIDTH-3) begin
        k_12 <= k_12 + 2;
        t_12 <= 0;
        if(k_12 == IMAGE_HEIGHT-3) begin
            k_12 <= 0;
            t_12 <= 0;
            m_12 <= 0;
            state_12 <= 0; 
            y_12 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_13[0][0] <= channel13[k_13][t_13];
    data_out_13[0][1] <= channel13[k_13][t_13+1];
    data_out_13[1][0] <= channel13[k_13+1][t_13];
    data_out_13[1][1] <= channel13[k_13+1][t_13+1];
    t_13 <= t_13 + 2;
    m_13 <= m_13 + 1;
    if(t_13 == IMAGE_WIDTH-3) begin
        k_13 <= k_13 + 2;
        t_13 <= 0;
        if(k_13 == IMAGE_HEIGHT-3) begin
            k_13 <= 0;
            t_13 <= 0;
            m_13 <= 0;
            state_13 <= 0; 
            y_13 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_14[0][0] <= channel14[k_14][t_14];
    data_out_14[0][1] <= channel14[k_14][t_14+1];
    data_out_14[1][0] <= channel14[k_14+1][t_14];
    data_out_14[1][1] <= channel14[k_14+1][t_14+1];
    t_14 <= t_14 + 2;
    m_14 <= m_14 + 1;
    if(t_14 == IMAGE_WIDTH-3) begin
        k_14 <= k_14 + 2;
        t_14 <= 0;
        if(k_14 == IMAGE_HEIGHT-3) begin
            k_14 <= 0;
            t_14 <= 0;
            m_14 <= 0;
            state_14 <= 0; 
            y_14 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_15[0][0] <= channel15[k_15][t_15];
    data_out_15[0][1] <= channel15[k_15][t_15+1];
    data_out_15[1][0] <= channel15[k_15+1][t_15];
    data_out_15[1][1] <= channel15[k_15+1][t_15+1];
    t_15 <= t_15 + 2;
    m_15 <= m_15 + 1;
    if(t_15 == IMAGE_WIDTH-3) begin
        k_15 <= k_15 + 2;
        t_15 <= 0;
        if(k_15 == IMAGE_HEIGHT-3) begin
            k_15 <= 0;
            t_15 <= 0;
            m_15 <= 0;
            state_15 <= 0; 
            y_15 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_16[0][0] <= channel16[k_16][t_16];
    data_out_16[0][1] <= channel16[k_16][t_16+1];
    data_out_16[1][0] <= channel16[k_16+1][t_16];
    data_out_16[1][1] <= channel16[k_16+1][t_16+1];
    t_16 <= t_16 + 2;
    m_16 <= m_16 + 1;
    if(t_16 == IMAGE_WIDTH-3) begin
        k_16 <= k_16 + 2;
        t_16 <= 0;
        if(k_16 == IMAGE_HEIGHT-3) begin
            k_16 <= 0;
            t_16 <= 0;
            m_16 <= 0;
            state_16 <= 0; 
            y_16 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_17[0][0] <= channel17[k_17][t_17];
    data_out_17[0][1] <= channel17[k_17][t_17+1];
    data_out_17[1][0] <= channel17[k_17+1][t_17];
    data_out_17[1][1] <= channel17[k_17+1][t_17+1];
    t_17 <= t_17 + 2;
    m_17 <= m_17 + 1;
    if(t_17 == IMAGE_WIDTH-3) begin
        k_17 <= k_17 + 2;
        t_17 <= 0;
        if(k_17 == IMAGE_HEIGHT-3) begin
            k_17 <= 0;
            t_17 <= 0;
            m_17 <= 0;
            state_17 <= 0; 
            y_17 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_18[0][0] <= channel18[k_18][t_18];
    data_out_18[0][1] <= channel18[k_18][t_18+1];
    data_out_18[1][0] <= channel18[k_18+1][t_18];
    data_out_18[1][1] <= channel18[k_18+1][t_18+1];
    t_18 <= t_18 + 2;
    m_18 <= m_18 + 1;
    if(t_18 == IMAGE_WIDTH-3) begin
        k_18 <= k_18 + 2;
        t_18 <= 0;
        if(k_18 == IMAGE_HEIGHT-3) begin
            k_18 <= 0;
            t_18 <= 0;
            m_18 <= 0;
            state_18 <= 0; 
            y_18 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_19[0][0] <= channel19[k_19][t_19];
    data_out_19[0][1] <= channel19[k_19][t_19+1];
    data_out_19[1][0] <= channel19[k_19+1][t_19];
    data_out_19[1][1] <= channel19[k_19+1][t_19+1];
    t_19 <= t_19 + 2;
    m_19 <= m_19 + 1;
    if(t_19 == IMAGE_WIDTH-3) begin
        k_19 <= k_19 + 2;
        t_19 <= 0;
        if(k_19 == IMAGE_HEIGHT-3) begin
            k_19 <= 0;
            t_19 <= 0;
            m_19 <= 0;
            state_19 <= 0; 
            y_19 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_20[0][0] <= channel20[k_20][t_20];
    data_out_20[0][1] <= channel20[k_20][t_20+1];
    data_out_20[1][0] <= channel20[k_20+1][t_20];
    data_out_20[1][1] <= channel20[k_20+1][t_20+1];
    t_20 <= t_20 + 2;
    m_20 <= m_20 + 1;
    if(t_20 == IMAGE_WIDTH-3) begin
        k_20 <= k_20 + 2;
        t_20 <= 0;
        if(k_20 == IMAGE_HEIGHT-3) begin
            k_20 <= 0;
            t_20 <= 0;
            m_20 <= 0;
            state_20 <= 0; 
            y_20 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_21[0][0] <= channel21[k_21][t_21];
    data_out_21[0][1] <= channel21[k_21][t_21+1];
    data_out_21[1][0] <= channel21[k_21+1][t_21];
    data_out_21[1][1] <= channel21[k_21+1][t_21+1];
    t_21 <= t_21 + 2;
    m_21 <= m_21 + 1;
    if(t_21 == IMAGE_WIDTH-3) begin
        k_21 <= k_21 + 2;
        t_21 <= 0;
        if(k_21 == IMAGE_HEIGHT-3) begin
            k_21 <= 0;
            t_21 <= 0;
            m_21 <= 0;
            state_21 <= 0; 
            y_21 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_22[0][0] <= channel22[k_22][t_22];
    data_out_22[0][1] <= channel22[k_22][t_22+1];
    data_out_22[1][0] <= channel22[k_22+1][t_22];
    data_out_22[1][1] <= channel22[k_22+1][t_22+1];
    t_22 <= t_22 + 2;
    m_22 <= m_22 + 1;
    if(t_22 == IMAGE_WIDTH-3) begin
        k_22 <= k_22 + 2;
        t_22 <= 0;
        if(k_22 == IMAGE_HEIGHT-3) begin
            k_22 <= 0;
            t_22 <= 0;
            m_22 <= 0;
            state_22 <= 0; 
            y_22 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_23[0][0] <= channel23[k_23][t_23];
    data_out_23[0][1] <= channel23[k_23][t_23+1];
    data_out_23[1][0] <= channel23[k_23+1][t_23];
    data_out_23[1][1] <= channel23[k_23+1][t_23+1];
    t_23 <= t_23 + 2;
    m_23 <= m_23 + 1;
    if(t_23 == IMAGE_WIDTH-3) begin
        k_23 <= k_23 + 2;
        t_23 <= 0;
        if(k_23 == IMAGE_HEIGHT-3) begin
            k_23 <= 0;
            t_23 <= 0;
            m_23 <= 0;
            state_23 <= 0; 
            y_23 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_24[0][0] <= channel24[k_24][t_24];
    data_out_24[0][1] <= channel24[k_24][t_24+1];
    data_out_24[1][0] <= channel24[k_24+1][t_24];
    data_out_24[1][1] <= channel24[k_24+1][t_24+1];
    t_24 <= t_24 + 2;
    m_24 <= m_24 + 1;
    if(t_24 == IMAGE_WIDTH-3) begin
        k_24 <= k_24 + 2;
        t_24 <= 0;
        if(k_24 == IMAGE_HEIGHT-3) begin
            k_24 <= 0;
            t_24 <= 0;
            m_24 <= 0;
            state_24 <= 0; 
            y_24 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_25[0][0] <= channel25[k_25][t_25];
    data_out_25[0][1] <= channel25[k_25][t_25+1];
    data_out_25[1][0] <= channel25[k_25+1][t_25];
    data_out_25[1][1] <= channel25[k_25+1][t_25+1];
    t_25 <= t_25 + 2;
    m_25 <= m_25 + 1;
    if(t_25 == IMAGE_WIDTH-3) begin
        k_25 <= k_25 + 2;
        t_25 <= 0;
        if(k_25 == IMAGE_HEIGHT-3) begin
            k_25 <= 0;
            t_25 <= 0;
            m_25 <= 0;
            state_25 <= 0; 
            y_25 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_26[0][0] <= channel26[k_26][t_26];
    data_out_26[0][1] <= channel26[k_26][t_26+1];
    data_out_26[1][0] <= channel26[k_26+1][t_26];
    data_out_26[1][1] <= channel26[k_26+1][t_26+1];
    t_26 <= t_26 + 2;
    m_26 <= m_26 + 1;
    if(t_26 == IMAGE_WIDTH-3) begin
        k_26 <= k_26 + 2;
        t_26 <= 0;
        if(k_26 == IMAGE_HEIGHT-3) begin
            k_26 <= 0;
            t_26 <= 0;
            m_26 <= 0;
            state_26 <= 0; 
            y_26 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_27[0][0] <= channel27[k_27][t_27];
    data_out_27[0][1] <= channel27[k_27][t_27+1];
    data_out_27[1][0] <= channel27[k_27+1][t_27];
    data_out_27[1][1] <= channel27[k_27+1][t_27+1];
    t_27 <= t_27 + 2;
    m_27 <= m_27 + 1;
    if(t_27 == IMAGE_WIDTH-3) begin
        k_27 <= k_27 + 2;
        t_27 <= 0;
        if(k_27 == IMAGE_HEIGHT-3) begin
            k_27 <= 0;
            t_27 <= 0;
            m_27 <= 0;
            state_27 <= 0; 
            y_27 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_28[0][0] <= channel28[k_28][t_28];
    data_out_28[0][1] <= channel28[k_28][t_28+1];
    data_out_28[1][0] <= channel28[k_28+1][t_28];
    data_out_28[1][1] <= channel28[k_28+1][t_28+1];
    t_28 <= t_28 + 2;
    m_28 <= m_28 + 1;
    if(t_28 == IMAGE_WIDTH-3) begin
        k_28 <= k_28 + 2;
        t_28 <= 0;
        if(k_28 == IMAGE_HEIGHT-3) begin
            k_28 <= 0;
            t_28 <= 0;
            m_28 <= 0;
            state_28 <= 0; 
            y_28 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_29[0][0] <= channel29[k_29][t_29];
    data_out_29[0][1] <= channel29[k_29][t_29+1];
    data_out_29[1][0] <= channel29[k_29+1][t_29];
    data_out_29[1][1] <= channel29[k_29+1][t_29+1];
    t_29 <= t_29 + 2;
    m_29 <= m_29 + 1;
    if(t_29 == IMAGE_WIDTH-3) begin
        k_29 <= k_29 + 2;
        t_29 <= 0;
        if(k_29 == IMAGE_HEIGHT-3) begin
            k_29 <= 0;
            t_29 <= 0;
            m_29 <= 0;
            state_29 <= 0; 
            y_29 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_30[0][0] <= channel30[k_30][t_30];
    data_out_30[0][1] <= channel30[k_30][t_30+1];
    data_out_30[1][0] <= channel30[k_30+1][t_30];
    data_out_30[1][1] <= channel30[k_30+1][t_30+1];
    t_30 <= t_30 + 2;
    m_30 <= m_30 + 1;
    if(t_30 == IMAGE_WIDTH-3) begin
        k_30 <= k_30 + 2;
        t_30 <= 0;
        if(k_30 == IMAGE_HEIGHT-3) begin
            k_30 <= 0;
            t_30 <= 0;
            m_30 <= 0;
            state_30 <= 0; 
            y_30 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_31[0][0] <= channel31[k_31][t_31];
    data_out_31[0][1] <= channel31[k_31][t_31+1];
    data_out_31[1][0] <= channel31[k_31+1][t_31];
    data_out_31[1][1] <= channel31[k_31+1][t_31+1];
    t_31 <= t_31 + 2;
    m_31 <= m_31 + 1;
    if(t_31 == IMAGE_WIDTH-3) begin
        k_31 <= k_31 + 2;
        t_31 <= 0;
        if(k_31 == IMAGE_HEIGHT-3) begin
            k_31 <= 0;
            t_31 <= 0;
            m_31 <= 0;
            state_31 <= 0; 
            y_31 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_32[0][0] <= channel32[k_32][t_32];
    data_out_32[0][1] <= channel32[k_32][t_32+1];
    data_out_32[1][0] <= channel32[k_32+1][t_32];
    data_out_32[1][1] <= channel32[k_32+1][t_32+1];
    t_32 <= t_32 + 2;
    m_32 <= m_32 + 1;
    if(t_32 == IMAGE_WIDTH-3) begin
        k_32 <= k_32 + 2;
        t_32 <= 0;
        if(k_32 == IMAGE_HEIGHT-3) begin
            k_32 <= 0;
            t_32 <= 0;
            m_32 <= 0;
            state_32 <= 0; 
            y_32 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_33[0][0] <= channel33[k_33][t_33];
    data_out_33[0][1] <= channel33[k_33][t_33+1];
    data_out_33[1][0] <= channel33[k_33+1][t_33];
    data_out_33[1][1] <= channel33[k_33+1][t_33+1];
    t_33 <= t_33 + 2;
    m_33 <= m_33 + 1;
    if(t_33 == IMAGE_WIDTH-3) begin
        k_33 <= k_33 + 2;
        t_33 <= 0;
        if(k_33 == IMAGE_HEIGHT-3) begin
            k_33 <= 0;
            t_33 <= 0;
            m_33 <= 0;
            state_33 <= 0; 
            y_33 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_34[0][0] <= channel34[k_34][t_34];
    data_out_34[0][1] <= channel34[k_34][t_34+1];
    data_out_34[1][0] <= channel34[k_34+1][t_34];
    data_out_34[1][1] <= channel34[k_34+1][t_34+1];
    t_34 <= t_34 + 2;
    m_34 <= m_34 + 1;
    if(t_34 == IMAGE_WIDTH-3) begin
        k_34 <= k_34 + 2;
        t_34 <= 0;
        if(k_34 == IMAGE_HEIGHT-3) begin
            k_34 <= 0;
            t_34 <= 0;
            m_34 <= 0;
            state_34 <= 0; 
            y_34 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_35[0][0] <= channel35[k_35][t_35];
    data_out_35[0][1] <= channel35[k_35][t_35+1];
    data_out_35[1][0] <= channel35[k_35+1][t_35];
    data_out_35[1][1] <= channel35[k_35+1][t_35+1];
    t_35 <= t_35 + 2;
    m_35 <= m_35 + 1;
    if(t_35 == IMAGE_WIDTH-3) begin
        k_35 <= k_35 + 2;
        t_35 <= 0;
        if(k_35 == IMAGE_HEIGHT-3) begin
            k_35 <= 0;
            t_35 <= 0;
            m_35 <= 0;
            state_35 <= 0; 
            y_35 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_36[0][0] <= channel36[k_36][t_36];
    data_out_36[0][1] <= channel36[k_36][t_36+1];
    data_out_36[1][0] <= channel36[k_36+1][t_36];
    data_out_36[1][1] <= channel36[k_36+1][t_36+1];
    t_36 <= t_36 + 2;
    m_36 <= m_36 + 1;
    if(t_36 == IMAGE_WIDTH-3) begin
        k_36 <= k_36 + 2;
        t_36 <= 0;
        if(k_36 == IMAGE_HEIGHT-3) begin
            k_36 <= 0;
            t_36 <= 0;
            m_36 <= 0;
            state_36 <= 0; 
            y_36 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_37[0][0] <= channel37[k_37][t_37];
    data_out_37[0][1] <= channel37[k_37][t_37+1];
    data_out_37[1][0] <= channel37[k_37+1][t_37];
    data_out_37[1][1] <= channel37[k_37+1][t_37+1];
    t_37 <= t_37 + 2;
    m_37 <= m_37 + 1;
    if(t_37 == IMAGE_WIDTH-3) begin
        k_37 <= k_37 + 2;
        t_37 <= 0;
        if(k_37 == IMAGE_HEIGHT-3) begin
            k_37 <= 0;
            t_37 <= 0;
            m_37 <= 0;
            state_37 <= 0; 
            y_37 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_38[0][0] <= channel38[k_38][t_38];
    data_out_38[0][1] <= channel38[k_38][t_38+1];
    data_out_38[1][0] <= channel38[k_38+1][t_38];
    data_out_38[1][1] <= channel38[k_38+1][t_38+1];
    t_38 <= t_38 + 2;
    m_38 <= m_38 + 1;
    if(t_38 == IMAGE_WIDTH-3) begin
        k_38 <= k_38 + 2;
        t_38 <= 0;
        if(k_38 == IMAGE_HEIGHT-3) begin
            k_38 <= 0;
            t_38 <= 0;
            m_38 <= 0;
            state_38 <= 0; 
            y_38 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_39[0][0] <= channel39[k_39][t_39];
    data_out_39[0][1] <= channel39[k_39][t_39+1];
    data_out_39[1][0] <= channel39[k_39+1][t_39];
    data_out_39[1][1] <= channel39[k_39+1][t_39+1];
    t_39 <= t_39 + 2;
    m_39 <= m_39 + 1;
    if(t_39 == IMAGE_WIDTH-3) begin
        k_39 <= k_39 + 2;
        t_39 <= 0;
        if(k_39 == IMAGE_HEIGHT-3) begin
            k_39 <= 0;
            t_39 <= 0;
            m_39 <= 0;
            state_39 <= 0; 
            y_39 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_40[0][0] <= channel40[k_40][t_40];
    data_out_40[0][1] <= channel40[k_40][t_40+1];
    data_out_40[1][0] <= channel40[k_40+1][t_40];
    data_out_40[1][1] <= channel40[k_40+1][t_40+1];
    t_40 <= t_40 + 2;
    m_40 <= m_40 + 1;
    if(t_40 == IMAGE_WIDTH-3) begin
        k_40 <= k_40 + 2;
        t_40 <= 0;
        if(k_40 == IMAGE_HEIGHT-3) begin
            k_40 <= 0;
            t_40 <= 0;
            m_40 <= 0;
            state_40 <= 0; 
            y_40 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_41[0][0] <= channel41[k_41][t_41];
    data_out_41[0][1] <= channel41[k_41][t_41+1];
    data_out_41[1][0] <= channel41[k_41+1][t_41];
    data_out_41[1][1] <= channel41[k_41+1][t_41+1];
    t_41 <= t_41 + 2;
    m_41 <= m_41 + 1;
    if(t_41 == IMAGE_WIDTH-3) begin
        k_41 <= k_41 + 2;
        t_41 <= 0;
        if(k_41 == IMAGE_HEIGHT-3) begin
            k_41 <= 0;
            t_41 <= 0;
            m_41 <= 0;
            state_41 <= 0; 
            y_41 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_42[0][0] <= channel42[k_42][t_42];
    data_out_42[0][1] <= channel42[k_42][t_42+1];
    data_out_42[1][0] <= channel42[k_42+1][t_42];
    data_out_42[1][1] <= channel42[k_42+1][t_42+1];
    t_42 <= t_42 + 2;
    m_42 <= m_42 + 1;
    if(t_42 == IMAGE_WIDTH-3) begin
        k_42 <= k_42 + 2;
        t_42 <= 0;
        if(k_42 == IMAGE_HEIGHT-3) begin
            k_42 <= 0;
            t_42 <= 0;
            m_42 <= 0;
            state_42 <= 0; 
            y_42 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_43[0][0] <= channel43[k_43][t_43];
    data_out_43[0][1] <= channel43[k_43][t_43+1];
    data_out_43[1][0] <= channel43[k_43+1][t_43];
    data_out_43[1][1] <= channel43[k_43+1][t_43+1];
    t_43 <= t_43 + 2;
    m_43 <= m_43 + 1;
    if(t_43 == IMAGE_WIDTH-3) begin
        k_43 <= k_43 + 2;
        t_43 <= 0;
        if(k_43 == IMAGE_HEIGHT-3) begin
            k_43 <= 0;
            t_43 <= 0;
            m_43 <= 0;
            state_43 <= 0; 
            y_43 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_44[0][0] <= channel44[k_44][t_44];
    data_out_44[0][1] <= channel44[k_44][t_44+1];
    data_out_44[1][0] <= channel44[k_44+1][t_44];
    data_out_44[1][1] <= channel44[k_44+1][t_44+1];
    t_44 <= t_44 + 2;
    m_44 <= m_44 + 1;
    if(t_44 == IMAGE_WIDTH-3) begin
        k_44 <= k_44 + 2;
        t_44 <= 0;
        if(k_44 == IMAGE_HEIGHT-3) begin
            k_44 <= 0;
            t_44 <= 0;
            m_44 <= 0;
            state_44 <= 0; 
            y_44 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_45[0][0] <= channel45[k_45][t_45];
    data_out_45[0][1] <= channel45[k_45][t_45+1];
    data_out_45[1][0] <= channel45[k_45+1][t_45];
    data_out_45[1][1] <= channel45[k_45+1][t_45+1];
    t_45 <= t_45 + 2;
    m_45 <= m_45 + 1;
    if(t_45 == IMAGE_WIDTH-3) begin
        k_45 <= k_45 + 2;
        t_45 <= 0;
        if(k_45 == IMAGE_HEIGHT-3) begin
            k_45 <= 0;
            t_45 <= 0;
            m_45 <= 0;
            state_45 <= 0; 
            y_45 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_46[0][0] <= channel46[k_46][t_46];
    data_out_46[0][1] <= channel46[k_46][t_46+1];
    data_out_46[1][0] <= channel46[k_46+1][t_46];
    data_out_46[1][1] <= channel46[k_46+1][t_46+1];
    t_46 <= t_46 + 2;
    m_46 <= m_46 + 1;
    if(t_46 == IMAGE_WIDTH-3) begin
        k_46 <= k_46 + 2;
        t_46 <= 0;
        if(k_46 == IMAGE_HEIGHT-3) begin
            k_46 <= 0;
            t_46 <= 0;
            m_46 <= 0;
            state_46 <= 0; 
            y_46 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_47[0][0] <= channel47[k_47][t_47];
    data_out_47[0][1] <= channel47[k_47][t_47+1];
    data_out_47[1][0] <= channel47[k_47+1][t_47];
    data_out_47[1][1] <= channel47[k_47+1][t_47+1];
    t_47 <= t_47 + 2;
    m_47 <= m_47 + 1;
    if(t_47 == IMAGE_WIDTH-3) begin
        k_47 <= k_47 + 2;
        t_47 <= 0;
        if(k_47 == IMAGE_HEIGHT-3) begin
            k_47 <= 0;
            t_47 <= 0;
            m_47 <= 0;
            state_47 <= 0; 
            y_47 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_48[0][0] <= channel48[k_48][t_48];
    data_out_48[0][1] <= channel48[k_48][t_48+1];
    data_out_48[1][0] <= channel48[k_48+1][t_48];
    data_out_48[1][1] <= channel48[k_48+1][t_48+1];
    t_48 <= t_48 + 2;
    m_48 <= m_48 + 1;
    if(t_48 == IMAGE_WIDTH-3) begin
        k_48 <= k_48 + 2;
        t_48 <= 0;
        if(k_48 == IMAGE_HEIGHT-3) begin
            k_48 <= 0;
            t_48 <= 0;
            m_48 <= 0;
            state_48 <= 0; 
            y_48 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_49[0][0] <= channel49[k_49][t_49];
    data_out_49[0][1] <= channel49[k_49][t_49+1];
    data_out_49[1][0] <= channel49[k_49+1][t_49];
    data_out_49[1][1] <= channel49[k_49+1][t_49+1];
    t_49 <= t_49 + 2;
    m_49 <= m_49 + 1;
    if(t_49 == IMAGE_WIDTH-3) begin
        k_49 <= k_49 + 2;
        t_49 <= 0;
        if(k_49 == IMAGE_HEIGHT-3) begin
            k_49 <= 0;
            t_49 <= 0;
            m_49 <= 0;
            state_49 <= 0; 
            y_49 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_50[0][0] <= channel50[k_50][t_50];
    data_out_50[0][1] <= channel50[k_50][t_50+1];
    data_out_50[1][0] <= channel50[k_50+1][t_50];
    data_out_50[1][1] <= channel50[k_50+1][t_50+1];
    t_50 <= t_50 + 2;
    m_50 <= m_50 + 1;
    if(t_50 == IMAGE_WIDTH-3) begin
        k_50 <= k_50 + 2;
        t_50 <= 0;
        if(k_50 == IMAGE_HEIGHT-3) begin
            k_50 <= 0;
            t_50 <= 0;
            m_50 <= 0;
            state_50 <= 0; 
            y_50 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_51[0][0] <= channel51[k_51][t_51];
    data_out_51[0][1] <= channel51[k_51][t_51+1];
    data_out_51[1][0] <= channel51[k_51+1][t_51];
    data_out_51[1][1] <= channel51[k_51+1][t_51+1];
    t_51 <= t_51 + 2;
    m_51 <= m_51 + 1;
    if(t_51 == IMAGE_WIDTH-3) begin
        k_51 <= k_51 + 2;
        t_51 <= 0;
        if(k_51 == IMAGE_HEIGHT-3) begin
            k_51 <= 0;
            t_51 <= 0;
            m_51 <= 0;
            state_51 <= 0; 
            y_51 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_52[0][0] <= channel52[k_52][t_52];
    data_out_52[0][1] <= channel52[k_52][t_52+1];
    data_out_52[1][0] <= channel52[k_52+1][t_52];
    data_out_52[1][1] <= channel52[k_52+1][t_52+1];
    t_52 <= t_52 + 2;
    m_52 <= m_52 + 1;
    if(t_52 == IMAGE_WIDTH-3) begin
        k_52 <= k_52 + 2;
        t_52 <= 0;
        if(k_52 == IMAGE_HEIGHT-3) begin
            k_52 <= 0;
            t_52 <= 0;
            m_52 <= 0;
            state_52 <= 0; 
            y_52 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_53[0][0] <= channel53[k_53][t_53];
    data_out_53[0][1] <= channel53[k_53][t_53+1];
    data_out_53[1][0] <= channel53[k_53+1][t_53];
    data_out_53[1][1] <= channel53[k_53+1][t_53+1];
    t_53 <= t_53 + 2;
    m_53 <= m_53 + 1;
    if(t_53 == IMAGE_WIDTH-3) begin
        k_53 <= k_53 + 2;
        t_53 <= 0;
        if(k_53 == IMAGE_HEIGHT-3) begin
            k_53 <= 0;
            t_53 <= 0;
            m_53 <= 0;
            state_53 <= 0; 
            y_53 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_54[0][0] <= channel54[k_54][t_54];
    data_out_54[0][1] <= channel54[k_54][t_54+1];
    data_out_54[1][0] <= channel54[k_54+1][t_54];
    data_out_54[1][1] <= channel54[k_54+1][t_54+1];
    t_54 <= t_54 + 2;
    m_54 <= m_54 + 1;
    if(t_54 == IMAGE_WIDTH-3) begin
        k_54 <= k_54 + 2;
        t_54 <= 0;
        if(k_54 == IMAGE_HEIGHT-3) begin
            k_54 <= 0;
            t_54 <= 0;
            m_54 <= 0;
            state_54 <= 0; 
            y_54 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_55[0][0] <= channel55[k_55][t_55];
    data_out_55[0][1] <= channel55[k_55][t_55+1];
    data_out_55[1][0] <= channel55[k_55+1][t_55];
    data_out_55[1][1] <= channel55[k_55+1][t_55+1];
    t_55 <= t_55 + 2;
    m_55 <= m_55 + 1;
    if(t_55 == IMAGE_WIDTH-3) begin
        k_55 <= k_55 + 2;
        t_55 <= 0;
        if(k_55 == IMAGE_HEIGHT-3) begin
            k_55 <= 0;
            t_55 <= 0;
            m_55 <= 0;
            state_55 <= 0; 
            y_55 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_56[0][0] <= channel56[k_56][t_56];
    data_out_56[0][1] <= channel56[k_56][t_56+1];
    data_out_56[1][0] <= channel56[k_56+1][t_56];
    data_out_56[1][1] <= channel56[k_56+1][t_56+1];
    t_56 <= t_56 + 2;
    m_56 <= m_56 + 1;
    if(t_56 == IMAGE_WIDTH-3) begin
        k_56 <= k_56 + 2;
        t_56 <= 0;
        if(k_56 == IMAGE_HEIGHT-3) begin
            k_56 <= 0;
            t_56 <= 0;
            m_56 <= 0;
            state_56 <= 0; 
            y_56 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_57[0][0] <= channel57[k_57][t_57];
    data_out_57[0][1] <= channel57[k_57][t_57+1];
    data_out_57[1][0] <= channel57[k_57+1][t_57];
    data_out_57[1][1] <= channel57[k_57+1][t_57+1];
    t_57 <= t_57 + 2;
    m_57 <= m_57 + 1;
    if(t_57 == IMAGE_WIDTH-3) begin
        k_57 <= k_57 + 2;
        t_57 <= 0;
        if(k_57 == IMAGE_HEIGHT-3) begin
            k_57 <= 0;
            t_57 <= 0;
            m_57 <= 0;
            state_57 <= 0; 
            y_57 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_58[0][0] <= channel58[k_58][t_58];
    data_out_58[0][1] <= channel58[k_58][t_58+1];
    data_out_58[1][0] <= channel58[k_58+1][t_58];
    data_out_58[1][1] <= channel58[k_58+1][t_58+1];
    t_58 <= t_58 + 2;
    m_58 <= m_58 + 1;
    if(t_58 == IMAGE_WIDTH-3) begin
        k_58 <= k_58 + 2;
        t_58 <= 0;
        if(k_58 == IMAGE_HEIGHT-3) begin
            k_58 <= 0;
            t_58 <= 0;
            m_58 <= 0;
            state_58 <= 0; 
            y_58 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_59[0][0] <= channel59[k_59][t_59];
    data_out_59[0][1] <= channel59[k_59][t_59+1];
    data_out_59[1][0] <= channel59[k_59+1][t_59];
    data_out_59[1][1] <= channel59[k_59+1][t_59+1];
    t_59 <= t_59 + 2;
    m_59 <= m_59 + 1;
    if(t_59 == IMAGE_WIDTH-3) begin
        k_59 <= k_59 + 2;
        t_59 <= 0;
        if(k_59 == IMAGE_HEIGHT-3) begin
            k_59 <= 0;
            t_59 <= 0;
            m_59 <= 0;
            state_59 <= 0; 
            y_59 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_60[0][0] <= channel60[k_60][t_60];
    data_out_60[0][1] <= channel60[k_60][t_60+1];
    data_out_60[1][0] <= channel60[k_60+1][t_60];
    data_out_60[1][1] <= channel60[k_60+1][t_60+1];
    t_60 <= t_60 + 2;
    m_60 <= m_60 + 1;
    if(t_60 == IMAGE_WIDTH-3) begin
        k_60 <= k_60 + 2;
        t_60 <= 0;
        if(k_60 == IMAGE_HEIGHT-3) begin
            k_60 <= 0;
            t_60 <= 0;
            m_60 <= 0;
            state_60 <= 0; 
            y_60 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_61[0][0] <= channel61[k_61][t_61];
    data_out_61[0][1] <= channel61[k_61][t_61+1];
    data_out_61[1][0] <= channel61[k_61+1][t_61];
    data_out_61[1][1] <= channel61[k_61+1][t_61+1];
    t_61 <= t_61 + 2;
    m_61 <= m_61 + 1;
    if(t_61 == IMAGE_WIDTH-3) begin
        k_61 <= k_61 + 2;
        t_61 <= 0;
        if(k_61 == IMAGE_HEIGHT-3) begin
            k_61 <= 0;
            t_61 <= 0;
            m_61 <= 0;
            state_61 <= 0; 
            y_61 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_62[0][0] <= channel62[k_62][t_62];
    data_out_62[0][1] <= channel62[k_62][t_62+1];
    data_out_62[1][0] <= channel62[k_62+1][t_62];
    data_out_62[1][1] <= channel62[k_62+1][t_62+1];
    t_62 <= t_62 + 2;
    m_62 <= m_62 + 1;
    if(t_62 == IMAGE_WIDTH-3) begin
        k_62 <= k_62 + 2;
        t_62 <= 0;
        if(k_62 == IMAGE_HEIGHT-3) begin
            k_62 <= 0;
            t_62 <= 0;
            m_62 <= 0;
            state_62 <= 0; 
            y_62 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_63[0][0] <= channel63[k_63][t_63];
    data_out_63[0][1] <= channel63[k_63][t_63+1];
    data_out_63[1][0] <= channel63[k_63+1][t_63];
    data_out_63[1][1] <= channel63[k_63+1][t_63+1];
    t_63 <= t_63 + 2;
    m_63 <= m_63 + 1;
    if(t_63 == IMAGE_WIDTH-3) begin
        k_63 <= k_63 + 2;
        t_63 <= 0;
        if(k_63 == IMAGE_HEIGHT-3) begin
            k_63 <= 0;
            t_63 <= 0;
            m_63 <= 0;
            state_63 <= 0; 
            y_63 <= 1;         
        end
    end
end

if(state == 1) begin
    data_out_64[0][0] <= channel64[k_64][t_64];
    data_out_64[0][1] <= channel64[k_64][t_64+1];
    data_out_64[1][0] <= channel64[k_64+1][t_64];
    data_out_64[1][1] <= channel64[k_64+1][t_64+1];
    t_64 <= t_64 + 2;
    m_64 <= m_64 + 1;
    if(t_64 == IMAGE_WIDTH-3) begin
        k_64 <= k_64 + 2;
        t_64 <= 0;
        if(k_64 == IMAGE_HEIGHT-3) begin
            k_64 <= 0;
            t_64 <= 0;
            m_64 <= 0;
            state_64 <= 0;
            y_64 <= 1;
        end
    end
end
  
  end  
end

endmodule        
    