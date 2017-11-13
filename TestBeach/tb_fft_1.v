`timescale 1ns/1ns

module tb_fft_1();
reg     SCLK;
reg       [13:0]  data_out;
//------------------------------------//
wire      [13:0]  data_out_re;
wire      [13:0]  data_out_im;

//--------------时钟部分----------------//
initial     SCLK = 0;
always      #10     SCLK = ~SCLK;
//-------------------------------------//

//-------------------------------------//
parameter num = 32'd1024;
reg   [7:0] i = 0;
reg       [13:0]  data_men[1:num];
initial begin
    $readmemb("E:/Workspace/Vivado_16.4/2017_11_5_FFT/TestBeach/sin_data.txt",data_men);
end
always @(posedge SCLK) begin
    data_out <= data_men[i];
    i <= i + 8'd1;
end
//------------------------------------//

//================FFT=================//
//-------input-----------//
reg     [15:0]  s_axis_config_tdata = 16'b00000001_00001001;		//FWD_INV=1;Padding=0;CP_LEN=1000000;Padding=000;NFFT=5'b01001 ;
reg     [31:0]  s_axis_data_tdata;
reg     s_axis_config_tvalid = 1;
reg     s_axis_data_tvalid = 1;
reg     s_axis_data_tlast = 0;
reg     m_axis_data_tready = 1;
reg		m_axis_status_tready = 1;
//-------output---------//
wire    [31:0]  m_axis_data_tdata;
wire    s_axis_config_tready;
wire    s_axis_data_tready;
wire    m_axis_data_tvalid;
wire    m_axis_data_tlast;
wire    event_frame_started;
wire    event_tlast_unexpected;
wire    event_tlast_missing;
wire    event_status_channel_halt;
wire    event_data_in_channel_halt;
wire    event_data_out_channel_halt;
wire	event_fft_overflow;
wire	[23:0]	m_axis_data_tuser;
wire	[7:0]	m_axis_status_tdata;
wire	m_axis_status_tvalid;
//-----------------------------------//
always @(posedge SCLK) begin
	s_axis_data_tdata <= {{18'd0},data_out};
end
//------------------------------//

FFT                                 FFT_inst0(
    .aclk                           (SCLK),
    .s_axis_config_tdata            (s_axis_config_tdata),
    .s_axis_config_tvalid           (s_axis_config_tvalid),
    .s_axis_config_tready           (s_axis_config_tready),
    .s_axis_data_tdata              (s_axis_data_tdata),
    .s_axis_data_tvalid             (s_axis_data_tvalid),
    .s_axis_data_tready             (s_axis_data_tready),
    .s_axis_data_tlast              (s_axis_data_tlast),
    .m_axis_data_tdata              (m_axis_data_tdata),
	.m_axis_data_tuser				(m_axis_data_tuser),
    .m_axis_data_tvalid             (m_axis_data_tvalid),
    .m_axis_data_tready             (m_axis_data_tready),
    .m_axis_data_tlast              (m_axis_data_tlast),
	.m_axis_status_tdata			(m_axis_status_tdata),
  	.m_axis_status_tvalid			(m_axis_status_tvalid),
  	.m_axis_status_tready			(m_axis_status_tready),
    .event_frame_started            (event_frame_started),
    .event_tlast_unexpected         (event_tlast_unexpected),
    .event_tlast_missing            (event_tlast_missing),
	.event_fft_overflow				(event_fft_overflow),
    .event_status_channel_halt      (event_status_channel_halt),
    .event_data_in_channel_halt     (event_data_in_channel_halt),
    .event_data_out_channel_halt    (event_data_out_channel_halt)
);
//--------------------------------------------//
assign	data_out_re = m_axis_data_tdata[13:0];
assign	data_out_im = m_axis_data_tdata[27:14];



//===================================//

endmodule // 
