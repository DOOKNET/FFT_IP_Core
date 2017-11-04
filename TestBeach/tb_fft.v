`timescale 1ns/1ps

module tb_fft();
reg     SCLK;
wire    signed  [13:0]  data_re;
wire    signed  [13:0]  data_im;
//---------------例化测试模块-----------------//
//---------------------------------//
TOP             TOP_inst0(
    .sclk       (SCLK),
    .data_re    (data_re),
    .data_im    (data_im)
);
//------------------------------------------//


//--------------时钟部分----------------//
initial     SCLK = 0;
always      #10     SCLK = ~SCLK;



endmodule // 
