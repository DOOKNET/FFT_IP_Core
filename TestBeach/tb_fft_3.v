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
wire    [15:0]  m_axis_data_tuser;
//------------------------------//

//----------设置时钟信号----------//
initial     sclk = 0;
always      #5     sclk = ~sclk;   //100M
//-------------------------------//

//-----------其他部分-----------//
integer i;
initial begin
s_axis_data_tdata = 0;
#100
$readmemb("E:/Workspace/Vivado_16.4/2017_11_5_FFT/TestBeach/sin_data.txt",data);
    for (i=0;i<1024;i=i+1 ) begin
        s_axis_data_tdata[13:0] = data[i];
        #10;
    end
//#8000;
//$stop;
end

//------------------模拟串口发送部分------------------//
reg     rx_ready;
reg     rd_clk;



//--------例化-----------//
FFT_Control_3               FFT_Control_3_inst0(
    .clk                    (sclk),
    .s_axis_data_tdata      (s_axis_data_tdata),
    .s_axis_config_tready   (s_axis_config_tready),
    .s_axis_data_tready     (s_axis_data_tready),
    .data_out_re            (data_re),
    .data_out_im            (data_im),
    .m_axis_data_tvalid     (m_axis_data_tvalid),
    .m_axis_data_tuser      (m_axis_data_tuser)
);
//-------------------------//
FIFO_Control        FIFO_Control_inst1(
    .clk            (sclk),
    .wr_clk         (sclk),
    .rd_clk         (rd_clk),               //读数据速度
    .data_valid     (m_axis_data_tvalid),
    .tx_dong_sig    (tx_dong_sig),          //发送结束标志
    .rx_ready       (rx_ready),             //单片机接收准备
    .data_re        (data_re),
    .tx_ready       (tx_ready)              //FFT发送准备
);

endmodule 


/*
//--------------输出实部数据到外部文件------------//
integer fft_file;
initial begin
    fft_file = $fopen("fft_file.txt");
    if(fft_file == 0)   begin
        $display("can't open the file!");
//        $stop;
    end
end

wire    signed  [31:0]  fft_dataout;
assign  fft_dataout = data_re;
always @( m_axis_data_tuser) begin       //有改动
//    if(m_axis_data_tvalid == 1) begin
        $fdisplay(fft_file,"%d",fft_dataout);
            if(m_axis_data_tuser == 16'd1024)
                $stop;
//    end
end
//--------------输出虚部数据到外部文件------------//
integer fft_im_file;
initial begin
    fft_im_file = $fopen("fft_im_file.txt");
    if(fft_im_file == 0)    begin
        $display("can't open the file!");
//        $stop;
    end
end

wire    signed  [31:0]  fft_im_dataout;
assign  fft_im_dataout = data_im;
always @( m_axis_data_tuser) begin          //有改动
//    if(m_axis_data_tvalid == 1) begin
        $fdisplay(fft_im_file,"%d",fft_im_dataout);
            if(m_axis_data_tuser == 16'd1024)
                $stop;
//    end
end
//-----------------------------------------------//
*/

