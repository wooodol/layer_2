module threebythree #(
    parameter DATA_WIDTH = 32,
    parameter PAD_WIDTH = 7,
    parameter PAD_HEIGHT = 7
)(
    input logic clk,
    input logic rst_n,
    input logic valid_padding,
    input logic [DATA_WIDTH-1:0] padded0  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded1  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded2  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded3  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded4  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded5  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded6  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded7  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded8  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded9  [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded10 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded11 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded12 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded13 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded14 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded15 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded16 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded17 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded18 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded19 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded20 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded21 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded22 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded23 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded24 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded25 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded26 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded27 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded28 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded29 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded30 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    input logic [DATA_WIDTH-1:0] padded31 [0:PAD_HEIGHT-1][0:PAD_WIDTH-1],
    output logic [DATA_WIDTH-1:0] patch [0:2][0:2],
    output logic valid_patch,
    output logic valid_out

);

    // 내부 변수
    reg [10:0] i, j, delay;
    reg [10:0] row, col;
    reg patch0_done;
    reg patch1_start;
    reg patch1_done;
    reg patch2_start;
    reg patch2_done;
    reg patch3_start;
    reg patch3_done;
    reg patch4_start;
    reg patch4_done;
    reg patch5_start;
    reg patch5_done;
    reg patch6_start;
    reg patch6_done;
    reg patch7_start;
    reg patch7_done;
    reg patch8_start;
    reg patch8_done;
    reg patch9_start;
    reg patch9_done;
    reg patch10_start;
    reg patch10_done;
    reg patch11_start;
    reg patch11_done;
    reg patch12_start;
    reg patch12_done;
    reg patch13_start;
    reg patch13_done;
    reg patch14_start;
    reg patch14_done;
    reg patch15_start;
    reg patch15_done;
    reg patch16_start;
    reg patch16_done;
    reg patch17_start;
    reg patch17_done;
    reg patch18_start;
    reg patch18_done;
    reg patch19_start;
    reg patch19_done;
    reg patch20_start;
    reg patch20_done;
    reg patch21_start;
    reg patch21_done;
    reg patch22_start;
    reg patch22_done;
    reg patch23_start;
    reg patch23_done;
    reg patch24_start;
    reg patch24_done;
    reg patch25_start;
    reg patch25_done;
    reg patch26_start;
    reg patch26_done;
    reg patch27_start;
    reg patch27_done;
    reg patch28_start;
    reg patch28_done;
    reg patch29_start;
    reg patch29_done;
    reg patch30_start;
    reg patch30_done;
    reg patch31_start;
    reg patch31_done;   
    reg state;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= 0;
            patch0_done <= 0;
            patch1_start <= 0;
            patch1_done <= 0;
            patch2_start <= 0;
            patch2_done <= 0;
            patch3_start <= 0;
            patch3_done <= 0;
            patch4_start <= 0;
            patch4_done <= 0;
            patch5_start <= 0;
            patch5_done <= 0;
            patch6_start <= 0;
            patch6_done <= 0;
            patch7_start <= 0;
            patch7_done <= 0;
            patch8_start <= 0;
            patch8_done <= 0;
            patch9_start <= 0;
            patch9_done <= 0;
            patch10_start <= 0;
            patch10_done <= 0;
            patch11_start <= 0;
            patch11_done <= 0;
            patch12_start <= 0;
            patch12_done <= 0;
            patch13_start <= 0;
            patch13_done <= 0;
            patch14_start <= 0;
            patch14_done <= 0;
            patch15_start <= 0;
            patch15_done <= 0;
            patch16_start <= 0;
            patch16_done <= 0;
            patch17_start <= 0;
            patch17_done <= 0;
            patch18_start <= 0;
            patch18_done <= 0;
            patch19_start <= 0;
            patch19_done <= 0;
            patch20_start <= 0;
            patch20_done <= 0;
            patch21_start <= 0;
            patch21_done <= 0;
            patch22_start <= 0;
            patch22_done <= 0;
            patch23_start <= 0;
            patch23_done <= 0;
            patch24_start <= 0;
            patch24_done <= 0;
            patch25_start <= 0;
            patch25_done <= 0;
            patch26_start <= 0;
            patch26_done <= 0;
            patch27_start <= 0;
            patch27_done <= 0;
            patch28_start <= 0;
            patch28_done <= 0;
            patch29_start <= 0;
            patch29_done <= 0;
            patch30_start <= 0;
            patch30_done <= 0;
            patch31_start <= 0;
            patch31_done <= 0;
            valid_out <= 0;
            i<=0;
            j<=0;
            row <= 0;
            col <= 0;
            delay <= 0;
    ///////////patch0///////////////////////////////////////////////////        
        end
        else begin
        if(valid_padding)begin
            state <= 1;
        end
        if (state && !patch0_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded0[row+i][col+j];
                    end
                end
                col <= col + 1;
                valid_out <= 1;
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                     
                     if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch0_done <= 1;
                        patch1_start <= 1;
                    end
                   end
                end

            
 //////////////patch1////////////////////////////////////////////////
        end else if (patch1_start && !patch1_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded1[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch1_done <= 1;
                        patch2_start <= 1;
                    end
                    end 
                end

 ///////////patch2//////////////////////////////////////////////////////////
        end else if (patch2_start && !patch2_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded2[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch2_done <= 1;
                        patch3_start <= 1;
                    end
                    end 
                end

  ///////////patch3////////////////////////////////////////////////////////////////   
        end else if (patch3_start && !patch3_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded3[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch3_done <= 1;
                        patch4_start <= 1;
                    end
                    end 
                end
             
  ///////////patch4////////////////////////////////////////////////////////////////   
        end else if (patch4_start && !patch4_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded4[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch4_done <= 1;
                        patch5_start <= 1;
                    end
                    end 
                end
                         
  ///////////patch5////////////////////////////////////////////////////////////////   
        end else if (patch5_start && !patch5_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded5[row+i][col+j];
                    end
                end

               col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch5_done <= 1;
                        patch6_start <= 1;
                    end
                end
                end 
                    
  ///////////patch6////////////////////////////////////////////////////////////////   
        end else if (patch6_start && !patch6_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded6[row+i][col+j];
                    end
                end
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch6_done <= 1;
                        patch7_start <= 1;
                    end
                    end 
                end
         
  ///////////patch7////////////////////////////////////////////////////////////////   
        end else if (patch7_start && !patch7_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded7[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch7_done <= 1;
                        patch8_start <= 1;
                    end
                end
                end 
                     
  ///////////patch8////////////////////////////////////////////////////////////////   
        end else if (patch8_start && !patch8_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded8[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch8_done <= 1;
                        patch9_start <= 1;
                    end
                    end 
                end
                          
  ///////////patch9////////////////////////////////////////////////////////////////   
        end else if (patch9_start && !patch9_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded9[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch9_done <= 1;
                        patch10_start <= 1;
                    end
                end
                end 
                  
  ///////////patch10////////////////////////////////////////////////////////////////   
        end else if (patch10_start && !patch10_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded10[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch10_done <= 1;
                        patch11_start <= 1;
                    end
                end
end 
                      
  ///////////patch11////////////////////////////////////////////////////////////////   
        end else if (patch11_start && !patch11_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded11[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch11_done <= 1;
                        patch12_start <= 1;
                    end
                    end 
                end
                     
  ///////////patch12////////////////////////////////////////////////////////////////   
        end else if (patch12_start && !patch12_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded12[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch12_done <= 1;
                        patch13_start <= 1;
                    end
                end
                end 
              
  ///////////patch13////////////////////////////////////////////////////////////////   
        end else if (patch13_start && !patch13_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded13[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch13_done <= 1;
                        patch14_start <= 1;
                    end
                    end 
                end

  ///////////patch11////////////////////////////////////////////////////////////////   
        end else if (patch14_start && !patch14_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded14[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch14_done <= 1;
                        patch15_start <= 1;
                    end
                end
                end 
            
  ///////////patch15////////////////////////////////////////////////////////////////   
        end else if (patch15_start && !patch15_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded15[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch15_done <= 1;
                        patch16_start <= 1;
                    end
                end
                end 
            
  ///////////patch16////////////////////////////////////////////////////////////////   
        end else if (patch16_start && !patch16_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded16[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch16_done <= 1;
                        patch17_start <= 1;
                    end
                end
                end 
          
  ///////////patch17////////////////////////////////////////////////////////////////   
        end else if (patch17_start && !patch17_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded17[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch17_done <= 1;
                        patch18_start <= 1;
                    end
                end
                end 
       
  ///////////patch18////////////////////////////////////////////////////////////////   
        end else if (patch18_start && !patch18_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded18[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch18_done <= 1;
                        patch19_start <= 1;
                    end
                end
                end 
                                     
  ///////////patch19////////////////////////////////////////////////////////////////   
        end else if (patch19_start && !patch19_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded19[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                     if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch19_done <= 1;
                        patch20_start <= 1;
                    end
                end
                end 
      
  ///////////patch20///////////////////////////////////////////////////////////////   
        end else if (patch20_start && !patch20_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded20[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch20_done <= 1;
                        patch21_start <= 1;
                    end
                end
                end 
               
  ///////////patch21///////////////////////////////////////////////////////////////   
        end else if (patch21_start && !patch21_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded21[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch21_done <= 1;
                        patch22_start <= 1;
                    end
                end
                   
                   end    
  ///////////patch22///////////////////////////////////////////////////////////////   
        end else if (patch22_start && !patch22_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded22[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch22_done <= 1;
                        patch23_start <= 1;
                    end
                    end 
                end
                 
  ///////////patch23///////////////////////////////////////////////////////////////   
        end else if (patch23_start && !patch23_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded23[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch23_done <= 1;
                        patch24_start <= 1;
                    end
                    end 
                end
                 
  ///////////patch24///////////////////////////////////////////////////////////////   
        end else if (patch24_start && !patch24_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded24[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch24_done <= 1;
                        patch25_start <= 1;
                    end
                end
                end 
                          
  ///////////patch25///////////////////////////////////////////////////////////////   
        end else if (patch25_start && !patch25_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded25[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch25_done <= 1;
                        patch26_start <= 1;
                    end
                end
                end 

  ///////////patch26///////////////////////////////////////////////////////////////   
        end else if (patch26_start && !patch26_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded26[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch26_done <= 1;
                        patch27_start <= 1;
                    end
                    end 
                end
                   
  ///////////patch27///////////////////////////////////////////////////////////////   
        end else if (patch27_start && !patch27_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded27[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch27_done <= 1;
                        patch28_start <= 1;
                    end
                    end 
                end
                  
   ///////////patch28///////////////////////////////////////////////////////////////   
        end else if (patch28_start && !patch28_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded28[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch28_done <= 1;
                        patch29_start <= 1;
                    end
                    end 
                end
                  
   ///////////patch29///////////////////////////////////////////////////////////////   
        end else if (patch29_start && !patch29_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded29[row+i][col+j];
                    end
                end

                // 슬라이딩
               col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch29_done <= 1;
                        patch30_start <= 1;
                    end
                    end 
                end
               
  ///////////patch30///////////////////////////////////////////////////////////////   
        end else if (patch30_start && !patch30_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded30[row+i][col+j];
                    end
                end

                // 슬라이딩
                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch30_done <= 1;
                        patch31_start <= 1;
                    end
                    end 
                end
                       
  ///////////patch31///////////////////////////////////////////////////////////////   
        end else if (patch31_start && !patch31_done) begin
            if (row <= PAD_HEIGHT - 3 && col <= PAD_WIDTH - 3) begin
                // 3x3 패치 추출
                for (i = 0; i < 3; i = i + 1) begin
                    for (j = 0; j < 3; j = j + 1) begin
                        patch[i][j] <= padded31[row+i][col+j];
                    end
                end

                col <= col + 1;
                
                // 슬라이딩
                
                if(col == 12) begin
                    col <= 0;
                    row <= row + 1;
                    if(row == 16) begin
                        row <= 0;
                        col <= 0;
                        patch31_done <= 1;
                        
                    end
                    end 
                end

                                               
                                                            
        end
        if (patch31_done) begin
            state <= 0;
            valid_out <= 0;
        end
        
    end
end
endmodule