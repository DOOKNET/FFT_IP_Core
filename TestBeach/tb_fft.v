`timescale 1ns/1ns

module tb_fft();
reg     SCLK;
reg     signed  [13:0]  data_out;
//------------------------------------//
wire    signed  [13:0]  data_out_re;
wire    signed  [13:0]  data_out_im;

//--------------时钟部分----------------//
initial     SCLK = 0;
always      #10     SCLK = ~SCLK;
//-------------------------------------//

//-------------------------------------//
parameter num = 32'd1024;
reg   [7:0] i = 0;
reg   signed    [13:0]  data_men[1:num];
//reg [13:0]  data_reg = 0;
initial begin
    $readmemb("E:/Workspace/Vivado_16.4/2017_11_5_FFT/TestBeach/sin_data.txt",data_men);
end
always @(posedge SCLK) begin
    data_out <= data_men[i];
    i <= i + 8'd1;
end
//------------------------------------//
/*
//-------------------------------------//
parameter num = 512;
integer   i = 0;
reg     [13:0]  stimulus[1:num];
initial begin
    $readmemh("E:/Workspace/Vivado_16.4/2017_11_8_TestBeach/TestBeach/sin_data.txt",stimulus);
    i = 0;
    repeat(num) begin
        i = i + 1;
        data_out = stimulus[i];
        #10;
    end
end
//-------------------------------------//
*/
//-------------调用fft-----------------//
FFT_Control         FFT_Control_inst0(
    .sclk           (SCLK),
    .data_in        (data_out),
    .data_out_re    (data_out_re),
    .data_out_im    (data_out_im)
);


endmodule // 
