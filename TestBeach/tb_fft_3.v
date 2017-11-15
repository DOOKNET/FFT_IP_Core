`timescale  1ns/1ps

module tb_fft_3();

//------------------------------//
reg     sclk;
reg     [31:0]  s_axis_data_tdata;
reg     [31:0]  data[1023:0];

wire    s_axis_config_tready;
wire    s_axis_data_tready;
wire    [31:0]  data_re;
wire    [31:0]  data_im;
wire    m_axis_data_tvalid;
//------------------------------//

//----------设置时钟信号----------//
initial     sclk = 0;
always      #5     sclk = ~sclk;   //100M
//-------------------------------//

//-----------其他部分-----------//
integer i;
initial begin
s_axis_data_tdata = 0;
//s_axis_config_tvalid = 1;
//data[511:0] = 0;

#100
$readmemb("E:/Workspace/Vivado_16.4/2017_11_5_FFT/TestBeach/sin_data.txt",data);
    for (i=0;i<1024;i=i+1 ) begin
        s_axis_data_tdata[15:0] = data[i];
        #10;
    end
//#8000;
//$stop;
end


//--------------输出实部数据到外部文件------------//
integer fft_file;
initial begin
    fft_file = $fopen("fft_file.txt");
    if(fft_file == 0)   begin
        $display("can't open the file!");
        $stop;
    end
end

wire    signed  [31:0]  fft_dataout;
assign  fft_dataout = data_re;
always @(posedge sclk) begin
    if(m_axis_data_tvalid == 1)
        $fdisplay(fft_file,"%d",fft_dataout);
end
//--------------输出虚部数据到外部文件------------//
integer fft_im_file;
initial begin
    fft_im_file = $fopen("fft_im_file.txt");
    if(fft_im_file == 0)    begin
        $display("can't open the file!");
        $stop;
    end
end

wire    signed  [31:0]  fft_im_dataout;
assign  fft_im_dataout = data_im;
always @(posedge sclk) begin
    if(m_axis_data_tvalid == 1) 
        $fdisplay(fft_im_file,"%d",fft_im_dataout);
end
//-----------------------------------------------//

//--------例化-----------//
FFT_Control_3               FFT_Control_3_inst0(
    .clk                    (sclk),
    .s_axis_data_tdata      (s_axis_data_tdata),
    .s_axis_config_tready   (s_axis_config_tready),
    .s_axis_data_tready     (s_axis_data_tready),
    .data_out_re            (data_re),
    .data_out_im            (data_im),
    .m_axis_data_tvalid     (m_axis_data_tvalid)
);


endmodule 

