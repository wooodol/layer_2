module zero_padding_second #(
    parameter DATA_WIDTH = 32,
    parameter WIDTH = 13,
    parameter HEIGHT = 17,
    parameter PAD_WIDTH = 15,
    parameter PAD_HEIGHT = 19
)(
    input logic clk,
    input logic rst_n,
    input logic valid_in,
    input logic [DATA_WIDTH-1:0] buffer0  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer1  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer2  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer3  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer4  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer5  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer6  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer7  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer8  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer9  [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer10 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer11 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer12 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer13 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer14 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer15 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer16 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer17 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer18 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer19 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer20 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer21 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer22 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer23 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer24 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer25 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer26 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer27 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer28 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer29 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer30 [0:HEIGHT-1][0:WIDTH-1],
    input logic [DATA_WIDTH-1:0] buffer31 [0:HEIGHT-1][0:WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded0  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded1  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded2  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded3  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded4  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded5  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded6  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded7  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded8  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded9  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded10 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded11 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded12 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded13 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded14 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded15 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded16 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded17 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded18 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded19 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded20 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded21 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded22 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded23 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded24 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded25 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded26 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded27 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded28 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded29 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded30 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] padded31 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic valid_padding // 패딩 완료 신호
);

    reg[10:0] i, j, delay;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            valid_padding <= 0;
            for (i = 0; i < PAD_HEIGHT; i = i + 1) begin
                for (j = 0; j < PAD_WIDTH; j = j + 1) begin
                    padded0[i][j] <= 0;
                    padded1[i][j] <= 0;
                    padded2[i][j] <= 0;
                    padded3[i][j] <= 0;
                    padded4[i][j] <= 0;
                    padded5[i][j] <= 0;
                    padded6[i][j] <= 0;
                    padded7[i][j] <= 0;
                    padded8[i][j] <= 0;
                    padded9[i][j] <= 0;
                    padded10[i][j] <= 0;
                    padded11[i][j] <= 0;
                    padded12[i][j] <= 0;
                    padded13[i][j] <= 0;
                    padded14[i][j] <= 0;
                    padded15[i][j] <= 0;
                    padded16[i][j] <= 0;
                    padded17[i][j] <= 0;
                    padded18[i][j] <= 0;
                    padded19[i][j] <= 0;
                    padded20[i][j] <= 0;
                    padded21[i][j] <= 0;
                    padded22[i][j] <= 0;
                    padded23[i][j] <= 0;
                    padded24[i][j] <= 0;
                    padded25[i][j] <= 0;
                    padded26[i][j] <= 0;
                    padded27[i][j] <= 0;
                    padded28[i][j] <= 0;
                    padded29[i][j] <= 0;
                    padded30[i][j] <= 0;
                    padded31[i][j] <= 0;
                end
            end
        end else if (valid_in) begin
            // 각 버퍼에서 데이터를 읽어와서 패딩된 버퍼에 저장
            for (i = 0; i < HEIGHT; i = i + 1) begin
                for (j = 0; j < WIDTH; j = j + 1) begin
                    padded0[i+1][j+1] <= buffer0[i][j]; 
                    padded1[i+1][j+1] <= buffer1[i][j];
                    padded2[i+1][j+1] <= buffer2[i][j];
                    padded3[i+1][j+1] <= buffer3[i][j];
                    padded4[i+1][j+1] <= buffer4[i][j];
                    padded5[i+1][j+1] <= buffer5[i][j];
                    padded6[i+1][j+1] <= buffer6[i][j];
                    padded7[i+1][j+1] <= buffer7[i][j];
                    padded8[i+1][j+1] <= buffer8[i][j];
                    padded9[i+1][j+1] <= buffer9[i][j];
                    padded10[i+1][j+1] <= buffer10[i][j];
                    padded11[i+1][j+1] <= buffer11[i][j];
                    padded12[i+1][j+1] <= buffer12[i][j];
                    padded13[i+1][j+1] <= buffer13[i][j];
                    padded14[i+1][j+1] <= buffer14[i][j];
                    padded15[i+1][j+1] <= buffer15[i][j];
                    padded16[i+1][j+1] <= buffer16[i][j];
                    padded17[i+1][j+1] <= buffer17[i][j];
                    padded18[i+1][j+1] <= buffer18[i][j];
                    padded19[i+1][j+1] <= buffer19[i][j];
                    padded20[i+1][j+1] <= buffer20[i][j];
                    padded21[i+1][j+1] <= buffer21[i][j];
                    padded22[i+1][j+1] <= buffer22[i][j];
                    padded23[i+1][j+1] <= buffer23[i][j];
                    padded24[i+1][j+1] <= buffer24[i][j];
                    padded25[i+1][j+1] <= buffer25[i][j];
                    padded26[i+1][j+1] <= buffer26[i][j];
                    padded27[i+1][j+1] <= buffer27[i][j];
                    padded28[i+1][j+1] <= buffer28[i][j];
                    padded29[i+1][j+1] <= buffer29[i][j];
                    padded30[i+1][j+1] <= buffer30[i][j];
                    padded31[i+1][j+1] <= buffer31[i][j];
                end
            end

            // 나머지 부분 제로로 채우기
            for (i = 0; i < PAD_HEIGHT; i = i + 1) begin
                for (j = 0; j < PAD_WIDTH; j = j + 1) begin
                    if (i < HEIGHT+2 && j < WIDTH+2) begin
                        // 이미 채워진 데이터
                        // padded0[i][j] ~ padded31[i][j] 값은 위에서 설정됨
                    end 
                    else begin
                        // 나머지 부분 제로로 설정
                        padded0[i][j] <= 0;
                        padded1[i][j] <= 0;
                        padded2[i][j] <= 0;
                        padded3[i][j] <= 0;
                        padded4[i][j] <= 0;
                        padded5[i][j] <= 0;
                        padded6[i][j] <= 0;
                        padded7[i][j] <= 0;
                        padded8[i][j] <= 0;
                        padded9[i][j] <= 0;
                        padded10[i][j] <= 0;
                        padded11[i][j] <= 0;
                        padded12[i][j] <= 0;
                        padded13[i][j] <= 0;
                        padded14[i][j] <= 0;
                        padded15[i][j] <= 0;
                        padded16[i][j] <= 0;
                        padded17[i][j] <= 0;
                        padded18[i][j] <= 0;
                        padded19[i][j] <= 0;
                        padded20[i][j] <= 0;
                        padded21[i][j] <= 0;
                        padded22[i][j] <= 0;
                        padded23[i][j] <= 0;
                        padded24[i][j] <= 0;
                        padded25[i][j] <= 0;
                        padded26[i][j] <= 0;
                        padded27[i][j] <= 0;
                        padded28[i][j] <= 0;
                        padded29[i][j] <= 0;
                        padded30[i][j] <= 0;
                        padded31[i][j] <= 0;
                    end
                end
            end

            // 패딩 완료 신호를 1로 설정
            valid_padding <= 1;
            delay <= 1;
        end
        if(delay)begin
            valid_padding <= 0;
            delay <= 0;
        end
    end

endmodule