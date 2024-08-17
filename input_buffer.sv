module input_buffer #(
    parameter DATA_WIDTH = 32,  // 각 데이터의 폭 (부동소수점 32비트)
    parameter CHANNELS = 32 ,   // 채널 수 (32개로 설정)
    parameter WIDTH = 13,       // 너비 (13으로 설정)
    parameter HEIGHT = 17       // 높이 (17으로 설정)
)(
    input logic clk, 
    input valid_in,                     // 클럭 신호
    input logic rst_n,                    // 비동기 리셋 신호, active low
    input logic [DATA_WIDTH-1:0] data0,   // 채널 0의 입력 데이터
    input logic [DATA_WIDTH-1:0] data1,   // 채널 1의 입력 데이터
    input logic [DATA_WIDTH-1:0] data2,   // 채널 2의 입력 데이터
    input logic [DATA_WIDTH-1:0] data3,   // 채널 3의 입력 데이터
    input logic [DATA_WIDTH-1:0] data4,   // 채널 4의 입력 데이터
    input logic [DATA_WIDTH-1:0] data5,   // 채널 5의 입력 데이터
    input logic [DATA_WIDTH-1:0] data6,   // 채널 6의 입력 데이터
    input logic [DATA_WIDTH-1:0] data7,   // 채널 7의 입력 데이터
    input logic [DATA_WIDTH-1:0] data8,   // 채널 8의 입력 데이터
    input logic [DATA_WIDTH-1:0] data9,   // 채널 9의 입력 데이터
    input logic [DATA_WIDTH-1:0] data10,  // 채널 10의 입력 데이터
    input logic [DATA_WIDTH-1:0] data11,  // 채널 11의 입력 데이터
    input logic [DATA_WIDTH-1:0] data12,  // 채널 12의 입력 데이터
    input logic [DATA_WIDTH-1:0] data13,  // 채널 13의 입력 데이터
    input logic [DATA_WIDTH-1:0] data14,  // 채널 14의 입력 데이터
    input logic [DATA_WIDTH-1:0] data15,  // 채널 15의 입력 데이터
    input logic [DATA_WIDTH-1:0] data16,  // 채널 16의 입력 데이터
    input logic [DATA_WIDTH-1:0] data17,  // 채널 17의 입력 데이터
    input logic [DATA_WIDTH-1:0] data18,  // 채널 18의 입력 데이터
    input logic [DATA_WIDTH-1:0] data19,  // 채널 19의 입력 데이터
    input logic [DATA_WIDTH-1:0] data20,  // 채널 20의 입력 데이터
    input logic [DATA_WIDTH-1:0] data21,  // 채널 21의 입력 데이터
    input logic [DATA_WIDTH-1:0] data22,  // 채널 22의 입력 데이터
    input logic [DATA_WIDTH-1:0] data23,  // 채널 23의 입력 데이터
    input logic [DATA_WIDTH-1:0] data24,  // 채널 24의 입력 데이터
    input logic [DATA_WIDTH-1:0] data25,  // 채널 25의 입력 데이터
    input logic [DATA_WIDTH-1:0] data26,  // 채널 26의 입력 데이터
    input logic [DATA_WIDTH-1:0] data27,  // 채널 27의 입력 데이터
    input logic [DATA_WIDTH-1:0] data28,  // 채널 28의 입력 데이터
    input logic [DATA_WIDTH-1:0] data29,  // 채널 29의 입력 데이터
    input logic [DATA_WIDTH-1:0] data30,  // 채널 30의 입력 데이터
    input logic [DATA_WIDTH-1:0] data31,  // 채널 31의 입력 데이터
    output logic valid_out,                   // 버퍼가 꽉 찬 상태 신호
    output logic [DATA_WIDTH-1:0] buffer0 [0:HEIGHT-1][0:WIDTH-1], // 채널 0의 버퍼
    output logic [DATA_WIDTH-1:0] buffer1 [0:HEIGHT-1][0:WIDTH-1], // 채널 1의 버퍼
    output logic [DATA_WIDTH-1:0] buffer2 [0:HEIGHT-1][0:WIDTH-1], // 채널 2의 버퍼
    output logic [DATA_WIDTH-1:0] buffer3 [0:HEIGHT-1][0:WIDTH-1], // 채널 3의 버퍼
    output logic [DATA_WIDTH-1:0] buffer4 [0:HEIGHT-1][0:WIDTH-1], // 채널 4의 버퍼
    output logic [DATA_WIDTH-1:0] buffer5 [0:HEIGHT-1][0:WIDTH-1], // 채널 5의 버퍼
    output logic [DATA_WIDTH-1:0] buffer6 [0:HEIGHT-1][0:WIDTH-1], // 채널 6의 버퍼
    output logic [DATA_WIDTH-1:0] buffer7 [0:HEIGHT-1][0:WIDTH-1], // 채널 7의 버퍼
    output logic [DATA_WIDTH-1:0] buffer8 [0:HEIGHT-1][0:WIDTH-1], // 채널 8의 버퍼
    output logic [DATA_WIDTH-1:0] buffer9 [0:HEIGHT-1][0:WIDTH-1], // 채널 9의 버퍼
    output logic [DATA_WIDTH-1:0] buffer10 [0:HEIGHT-1][0:WIDTH-1], // 채널 10의 버퍼
    output logic [DATA_WIDTH-1:0] buffer11 [0:HEIGHT-1][0:WIDTH-1], // 채널 11의 버퍼
    output logic [DATA_WIDTH-1:0] buffer12 [0:HEIGHT-1][0:WIDTH-1], // 채널 12의 버퍼
    output logic [DATA_WIDTH-1:0] buffer13 [0:HEIGHT-1][0:WIDTH-1], // 채널 13의 버퍼
    output logic [DATA_WIDTH-1:0] buffer14 [0:HEIGHT-1][0:WIDTH-1], // 채널 14의 버퍼
    output logic [DATA_WIDTH-1:0] buffer15 [0:HEIGHT-1][0:WIDTH-1], // 채널 15의 버퍼
    output logic [DATA_WIDTH-1:0] buffer16 [0:HEIGHT-1][0:WIDTH-1], // 채널 16의 버퍼
    output logic [DATA_WIDTH-1:0] buffer17 [0:HEIGHT-1][0:WIDTH-1], // 채널 17의 버퍼
    output logic [DATA_WIDTH-1:0] buffer18 [0:HEIGHT-1][0:WIDTH-1], // 채널 18의 버퍼
    output logic [DATA_WIDTH-1:0] buffer19 [0:HEIGHT-1][0:WIDTH-1], // 채널 19의 버퍼
    output logic [DATA_WIDTH-1:0] buffer20 [0:HEIGHT-1][0:WIDTH-1], // 채널 20의 버퍼
    output logic [DATA_WIDTH-1:0] buffer21 [0:HEIGHT-1][0:WIDTH-1], // 채널 21의 버퍼
    output logic [DATA_WIDTH-1:0] buffer22 [0:HEIGHT-1][0:WIDTH-1], // 채널 22의 버퍼
    output logic [DATA_WIDTH-1:0] buffer23 [0:HEIGHT-1][0:WIDTH-1], // 채널 23의 버퍼
    output logic [DATA_WIDTH-1:0] buffer24 [0:HEIGHT-1][0:WIDTH-1], // 채널 24의 버퍼
    output logic [DATA_WIDTH-1:0] buffer25 [0:HEIGHT-1][0:WIDTH-1], // 채널 25의 버퍼
    output logic [DATA_WIDTH-1:0] buffer26 [0:HEIGHT-1][0:WIDTH-1], // 채널 26의 버퍼
    output logic [DATA_WIDTH-1:0] buffer27 [0:HEIGHT-1][0:WIDTH-1], // 채널 27의 버퍼
    output logic [DATA_WIDTH-1:0] buffer28 [0:HEIGHT-1][0:WIDTH-1], // 채널 28의 버퍼
    output logic [DATA_WIDTH-1:0] buffer29 [0:HEIGHT-1][0:WIDTH-1], // 채널 29의 버퍼
    output logic [DATA_WIDTH-1:0] buffer30 [0:HEIGHT-1][0:WIDTH-1], // 채널 30의 버퍼
    output logic [DATA_WIDTH-1:0] buffer31 [0:HEIGHT-1][0:WIDTH-1]  // 채널 31의 버퍼
);

    // 내부 인덱스 레지스터
    reg [10:0] row, col,delay;  // 높이에 맞게 인덱스 크기 설정

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // 리셋 시 인덱스 및 유효 신호 초기화
            row <= 0;
            col <= 0;
            valid_out <= 0;
        end
        else begin 
          if (valid_in) begin
            // 유효 신호가 0인 상태에서 데이터 저장
            buffer0[row][col] <= data0;
            buffer1[row][col] <= data1;
            buffer2[row][col] <= data2;
            buffer3[row][col] <= data3;
            buffer4[row][col] <= data4;
            buffer5[row][col] <= data5;
            buffer6[row][col] <= data6;
            buffer7[row][col] <= data7;
            buffer8[row][col] <= data8;
            buffer9[row][col] <= data9;
            buffer10[row][col] <= data10;
            buffer11[row][col] <= data11;
            buffer12[row][col] <= data12;
            buffer13[row][col] <= data13;
            buffer14[row][col] <= data14;
            buffer15[row][col] <= data15;
            buffer16[row][col] <= data16;
            buffer17[row][col] <= data17;
            buffer18[row][col] <= data18;
            buffer19[row][col] <= data19;
            buffer20[row][col] <= data20;
            buffer21[row][col] <= data21;
            buffer22[row][col] <= data22;
            buffer23[row][col] <= data23;
            buffer24[row][col] <= data24;
            buffer25[row][col] <= data25;
            buffer26[row][col] <= data26;
            buffer27[row][col] <= data27;
            buffer28[row][col] <= data28;
            buffer29[row][col] <= data29;
            buffer30[row][col] <= data30;
            buffer31[row][col] <= data31;

            // 인덱스 증가
            if (col < WIDTH - 1) begin
                col <= col + 1;
            end else begin
                col <= 0;
                if (row < HEIGHT - 1) begin
                    row <= row + 1;
                end else begin
                    row <= 000000;
                    col <= 000000;
                    valid_out <= 1;
                    delay <= 1;
                    
                     // 모든 데이터가 입력되면 유효 신호를 1로 설정
                end
            end
            
         end
         if(delay)begin
            valid_out <= 0;
            delay <= 0;
         end
   end
end

endmodule