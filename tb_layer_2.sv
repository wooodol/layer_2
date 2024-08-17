`timescale 1ns / 1ps

module tb();

reg [31:0] data0;   // 채널 0의 입력 데이터
reg [31:0] data1;   // 채널 1의 입력 데이터
reg [31:0] data2;   // 채널 2의 입력 데이터
reg [31:0] data3;   // 채널 3의 입력 데이터
reg [31:0] data4;   // 채널 4의 입력 데이터
reg [31:0] data5;   // 채널 5의 입력 데이터
reg [31:0] data6;   // 채널 6의 입력 데이터
reg [31:0] data7;   // 채널 7의 입력 데이터
reg [31:0] data8;   // 채널 8의 입력 데이터
reg [31:0] data9;   // 채널 9의 입력 데이터
reg [31:0] data10;  // 채널 10의 입력 데이터
reg [31:0] data11;  // 채널 11의 입력 데이터
reg [31:0] data12;  // 채널 12의 입력 데이터
reg [31:0] data13;  // 채널 13의 입력 데이터
reg [31:0] data14;  // 채널 14의 입력 데이터
reg [31:0] data15;  // 채널 15의 입력 데이터
reg [31:0] data16;  // 채널 16의 입력 데이터
reg [31:0] data17;  // 채널 17의 입력 데이터
reg [31:0] data18;  // 채널 18의 입력 데이터
reg [31:0] data19;  // 채널 19의 입력 데이터
reg [31:0] data20;  // 채널 20의 입력 데이터
reg [31:0] data21;  // 채널 21의 입력 데이터
reg [31:0] data22;  // 채널 22의 입력 데이터
reg [31:0] data23;  // 채널 23의 입력 데이터
reg [31:0] data24;  // 채널 24의 입력 데이터
reg [31:0] data25;  // 채널 25의 입력 데이터
reg [31:0] data26;  // 채널 26의 입력 데이터
reg [31:0] data27;  // 채널 27의 입력 데이터
reg [31:0] data28;  // 채널 28의 입력 데이터
reg [31:0] data29;  // 채널 29의 입력 데이터
reg [31:0] data30;  // 채널 30의 입력 데이터
reg [31:0] data31;  // 채널 31의 입력 데이터
reg clk;
reg rst_n;
reg valid_in;
reg [31:0] data_out_1;
reg [31:0] data_out_2;
reg [31:0] data_out_3;
reg [31:0] data_out_4;
reg [31:0] data_out_5;
reg [31:0] data_out_6;
reg [31:0] data_out_7;
reg [31:0] data_out_8;
reg [31:0] data_out_9;
reg [31:0] data_out_10;
reg [31:0] data_out_11;
reg [31:0] data_out_12;
reg [31:0] data_out_13;
reg [31:0] data_out_14;
reg [31:0] data_out_15;
reg [31:0] data_out_16;
reg [31:0] data_out_17;
reg [31:0] data_out_18;
reg [31:0] data_out_19;
reg [31:0] data_out_20;
reg [31:0] data_out_21;
reg [31:0] data_out_22;
reg [31:0] data_out_23;
reg [31:0] data_out_24;
reg [31:0] data_out_25;
reg [31:0] data_out_26;
reg [31:0] data_out_27;
reg [31:0] data_out_28;
reg [31:0] data_out_29;
reg [31:0] data_out_30;
reg [31:0] data_out_31;
reg [31:0] data_out_32;
reg [31:0] data_out_33;
reg [31:0] data_out_34;
reg [31:0] data_out_35;
reg [31:0] data_out_36;
reg [31:0] data_out_37;
reg [31:0] data_out_38;
reg [31:0] data_out_39;
reg [31:0] data_out_40;
reg [31:0] data_out_41;
reg [31:0] data_out_42;
reg [31:0] data_out_43;
reg [31:0] data_out_44;
reg [31:0] data_out_45;
reg [31:0] data_out_46;
reg [31:0] data_out_47;
reg [31:0] data_out_48;
reg [31:0] data_out_49;
reg [31:0] data_out_50;
reg [31:0] data_out_51;
reg [31:0] data_out_52;
reg [31:0] data_out_53;
reg [31:0] data_out_54;
reg [31:0] data_out_55;
reg [31:0] data_out_56;
reg [31:0] data_out_57;
reg [31:0] data_out_58;
reg [31:0] data_out_59;
reg [31:0] data_out_60;
reg [31:0] data_out_61;
reg [31:0] data_out_62;
reg [31:0] data_out_63;
reg [31:0] data_out_64;


reg valid_out_layer2;

layer_2 #(
.DATA_WIDTH(32)
)uut(
.valid_in(valid_in),
.data0(data0),
.data1(data1),
.data2(data2),
.data3(data3),
.data4(data4),
.data5(data5),
.data6(data6),
.data7(data7),
.data8(data8),
.data9(data9),
.data10(data10),
.data11(data11),
.data12(data12),
.data13(data13),
.data14(data14),
.data15(data15),
.data16(data16),
.data17(data17),
.data18(data18),
.data19(data19),
.data20(data20),
.data21(data21),
.data22(data22),
.data23(data23),
.data24(data24),
.data25(data25),
.data26(data26),
.data27(data27),
.data28(data28),
.data29(data29),
.data30(data30),
.data31(data31),
.clk(clk),
.rst_n(rst_n),
.valid_out_layer2(valid_out_layer2),
.data_out_1(data_out_1),
.data_out_2(data_out_2),
.data_out_3(data_out_3),
.data_out_4(data_out_4),
.data_out_5(data_out_5),
.data_out_6(data_out_6),
.data_out_7(data_out_7),
.data_out_8(data_out_8),
.data_out_9(data_out_9),
.data_out_10(data_out_10),
.data_out_11(data_out_11),
.data_out_12(data_out_12),
.data_out_13(data_out_13),
.data_out_14(data_out_14),
.data_out_15(data_out_15),
.data_out_16(data_out_16),
.data_out_17(data_out_17),
.data_out_18(data_out_18),
.data_out_19(data_out_19),
.data_out_20(data_out_20),
.data_out_21(data_out_21),
.data_out_22(data_out_22),
.data_out_23(data_out_23),
.data_out_24(data_out_24),
.data_out_25(data_out_25),
.data_out_26(data_out_26),
.data_out_27(data_out_27),
.data_out_28(data_out_28),
.data_out_29(data_out_29),
.data_out_30(data_out_30),
.data_out_31(data_out_31),
.data_out_32(data_out_32),
.data_out_33(data_out_33),
.data_out_34(data_out_34),
.data_out_35(data_out_35),
.data_out_36(data_out_36),
.data_out_37(data_out_37),
.data_out_38(data_out_38),
.data_out_39(data_out_39),
.data_out_40(data_out_40),
.data_out_41(data_out_41),
.data_out_42(data_out_42),
.data_out_43(data_out_43),
.data_out_44(data_out_44),
.data_out_45(data_out_45),
.data_out_46(data_out_46),
.data_out_47(data_out_47),
.data_out_48(data_out_48),
.data_out_49(data_out_49),
.data_out_50(data_out_50),
.data_out_51(data_out_51),
.data_out_52(data_out_52),
.data_out_53(data_out_53),
.data_out_54(data_out_54),
.data_out_55(data_out_55),
.data_out_56(data_out_56),
.data_out_57(data_out_57),
.data_out_58(data_out_58),
.data_out_59(data_out_59),
.data_out_60(data_out_60),
.data_out_61(data_out_61),
.data_out_62(data_out_62),
.data_out_63(data_out_63),
.data_out_64(data_out_64)

);

integer delay, i,k;

initial begin
valid_in = 0;
    clk = 0;
    i = 0;
    delay = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    k = 1;
end

always @(posedge clk) begin
    if(k) begin
        data0 <= $urandom;
data1 <= $urandom;
data2 <= $urandom;
data3 <= $urandom;
data4 <= $urandom;
data5 <= $urandom;
data6 <= $urandom;
data7 <= $urandom;
data8 <= $urandom;
data9 <= $urandom;
data10 <= $urandom;
data11 <= $urandom;
data12 <= $urandom;
data13 <= $urandom;
data14 <= $urandom;
data15 <= $urandom;
data16 <= $urandom;
data17 <= $urandom;
data18 <= $urandom;
data19 <= $urandom;
data20 <= $urandom;
data21 <= $urandom;
data22 <= $urandom;
data23 <= $urandom;
data24 <= $urandom;
data25 <= $urandom;
data26 <= $urandom;
data27 <= $urandom;
data28 <= $urandom;
data29 <= $urandom;
data30 <= $urandom;
data31 <= $urandom;

        i <= i+1;
valid_in <= 1;
        end
    
        if(i == 220) begin
            delay <= 1;
            k <= 0;
            i <= 0;
        end
        if(delay)begin
valid_in <= 0;
        delay <= 0;
        end
        end
       
        

endmodule
