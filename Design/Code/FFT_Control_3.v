module FFT_Control_3(
    input   clk,
    input   [31:0]  s_axis_data_tdata,  //输入处理的数据
    output  s_axis_config_tready,       //IP Core准备接收配置信号
    output  s_axis_data_tready,         //IP Core准备接收数据信号
    output  [31:0]  data_out_re,
    output  [31:0]  data_out_im,
    output  m_axis_data_tvalid,          //输出数据有效信号
    output  [15:0]  m_axis_data_tuser           //输出数据计数
);
//---------------输入信号-------------//
reg     [10:0]   cnt = 0;    //计数器
reg     cnt_en = 0;             //计数器使能信号
reg     s_axis_config_tdata = 8'd1;
reg     s_axis_config_tvalid = 0;
reg     s_axis_data_tvalid = 0;
reg     s_axis_data_tlast = 0;
reg     m_axis_data_tready = 1;
//---------------输出信号-------------//
wire    [63 : 0]  m_axis_data_tdata;    //fft ip核处理后的数据，其中高32位为虚部，低32位为实部信号
wire    event_frame_started;            //表明fft 开始处理一帧数据
wire    event_tlast_unexpected ;    
wire    event_tlast_missing;
wire    event_data_in_channel_halt;
wire    event_data_out_channel_halt;       
//wire    [15:0] m_axis_data_tuser;
wire    event_status_channel_halt;     

/*
    当s_axis_config_tready信号拉高（IP核已经准备好接收配置数据）时，
    将s_axis_config_tvalid拉高（表明master提供的配置数据有效）。
*/
//----------------设置配置信号-----------------//
always @(posedge clk) begin
    if(s_axis_config_tready == 1)   begin
        s_axis_config_tvalid <= 1;
    end
    else    begin
        s_axis_config_tvalid <= 0;
    end
end
/*
    当s_axis_data_tready信号拉高（IP核已经准备好接收处理数据）时，
    将s_axis_data_tvalid信号拉高（表明master提供的处理数据有效）。
*/
//------------捕捉s_axis_data_tready信号的上升沿------------//
wire    data_tready_pose;     //tready信号上升沿
reg     data_tready_r0 = 0;
reg     data_tready_r1 = 0;
always @(posedge clk) begin
    data_tready_r0 <= s_axis_data_tready;
    data_tready_r1 <= data_tready_r0;
end
assign  data_tready_pose = data_tready_r0 & ~data_tready_r1;
//--------------------设置tvalid信号------------------------//
always @(posedge clk) begin
    if(data_tready_pose == 1) begin   
        s_axis_data_tvalid <= 1;        //检测到上升沿，信号拉高，数据有效
    end
    else    begin
        s_axis_data_tvalid <= s_axis_data_tvalid;
    end
end
//---------------检测到上升沿，计数器开始工作----------------//
always @(posedge clk) begin
    if(data_tready_pose == 1)   begin
        cnt_en <= 1;
    end
    else if(cnt == 11'd1024) begin      /*需要改动*/
        cnt_en <= 0;
    end
end

always @(posedge clk) begin
    if(cnt_en == 1) begin
        cnt <= cnt + 1;
    end
    else    begin
        cnt <= 0;
    end
end
//----------------------设置tlast信号-----------------------//
always @(posedge clk) begin
    if(cnt == 11'd1024)  begin      /*需要改动*/
        s_axis_data_tlast <= 1;     //输入最后一个数据时，tlast信号产生一个脉冲
    end
    else    begin
        s_axis_data_tlast <= 0;
    end
end
//---------------------------------------------------------//
      
FFT                             FFT_inst0(
    .aclk                       (clk),                                              
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
    .event_frame_started        (event_frame_started),               
    .event_tlast_unexpected     (event_tlast_unexpected),         
    .event_tlast_missing        (event_tlast_missing),               
    .event_status_channel_halt  (event_status_channel_halt),   
    .event_data_in_channel_halt (event_data_in_channel_halt), 
    .event_data_out_channel_halt(event_data_out_channel_halt)
);  

assign data_out_re=m_axis_data_tdata[31:0];//低32位为实部信号
assign data_out_im=m_axis_data_tdata[63:32]; // 高32位为虚部，
endmodule 
  