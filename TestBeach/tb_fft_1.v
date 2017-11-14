`timescale 1ns/1ns

module tb_fft_1();
reg     SCLK;
//reg       [13:0]  data_out;
//------------------------------------//
//wire      [13:0]  data_out_re;
//wire      [13:0]  data_out_im;

//--------------时钟部分----------------//
initial     SCLK = 0;
always      #5     SCLK = ~SCLK;
//-------------------------------------//

//-------------------------------------//
//parameter num = 32'd512;
reg     signed  [13:0]  data_men[0:511];
initial begin
    $readmemb("E:/Workspace/Vivado_16.4/2017_11_5_FFT/TestBeach/sin_data.txt",data_men);
end
//always @(posedge SCLK) begin
//    data_out <= data_men[i];
//    i <= i + 8'd1;
//end
//------------------------------------//

//================FFT=================//
//-------input-----------//
reg     [23:0]  s_axis_config_tdata;
reg     s_axis_config_tvalid;
reg     signed  [31:0]  s_axis_data_tdata;
reg     s_axis_data_tvalid;
reg     s_axis_data_tlast;
reg     m_axis_data_tready;
//reg		m_axis_status_tready;
//-------output---------//
wire    s_axis_config_tready;
wire    s_axis_data_tready;
wire    [31:0]  m_axis_data_tdata;
wire	[15:0]	m_axis_data_tuser;
wire    m_axis_data_tvalid;
wire    m_axis_data_tlast;
//wire	[7:0]	m_axis_status_tdata;
//wire	m_axis_status_tvalid;
wire    event_frame_started;
wire    event_tlast_unexpected;
wire    event_tlast_missing;
//wire	event_fft_overflow;
wire    event_status_channel_halt;
wire    event_data_in_channel_halt;
wire    event_data_out_channel_halt;
//------------------------------//
FFT                                 FFT_inst0(
        .aclk                       (SCLK),
        .s_axis_config_tdata        (s_axis_config_tdata),
        .s_axis_config_tvalid       (s_axis_config_tvalid),
        .s_axis_config_tready       (s_axis_config_tready),
        .s_axis_data_tdata          (s_axis_data_tdata),
        .s_axis_data_tvalid         (s_axis_data_tvalid),
        .s_axis_data_tready         (s_axis_data_tready),
        .s_axis_data_tlast          (s_axis_data_tlast),
        .m_axis_data_tdata          (m_axis_data_tdata),
        .m_axis_data_tuser          (m_axis_data_tuser),
        .m_axis_data_tvalid         (m_axis_data_tvalid),
        .m_axis_data_tready         (m_axis_data_tready),
        .m_axis_data_tlast          (m_axis_data_tlast),
//        .m_axis_status_tdata        (m_axis_status_tdata),
//        .m_axis_status_tvalid       (m_axis_status_tvalid),
//        .m_axis_status_tready       (m_axis_status_tready),
        .event_frame_started        (event_frame_started),
        .event_tlast_unexpected     (event_tlast_unexpected),
        .event_tlast_missing        (event_tlast_missing),
//        .event_fft_overflow         (event_fft_overflow),
        .event_status_channel_halt  (event_status_channel_halt),
        .event_data_in_channel_halt (event_data_in_channel_halt),
        .event_data_out_channel_halt(event_data_out_channel_halt)
);
//===================================//
integer i = 0;

initial begin
    s_axis_config_tdata = 0;
    s_axis_config_tvalid = 0;
    s_axis_data_tdata = 0;
    s_axis_data_tvalid = 0;
    s_axis_data_tlast = 0;
    m_axis_data_tready = 0;

    #150;
    m_axis_data_tready = 1;
    s_axis_config_tvalid = 1;
    s_axis_config_tdata = 24'b1111_1111_1111_1111_1111_1111;

    s_axis_data_tdata = 32'd0;
    s_axis_data_tvalid = 0;

    begin
        for (i=0;i<512;i=i+1) begin
            #10
            s_axis_data_tvalid <= 1;
            s_axis_data_tdata <= {{18{data_men[i][13]}},data_men[i]};
        end
    end
    #10
    s_axis_data_tdata = 32'd0;
    s_axis_data_tvalid = 0;
    

    #5000
    $finish;


end


endmodule // 
