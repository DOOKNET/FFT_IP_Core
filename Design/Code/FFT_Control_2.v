`timescale 1ns / 1ps

module FFT_Control_2(
   input clk,//50mhz
   input rst,//复位
   output s_axis_config_tready,//fft core 准备好接收配置信号
   input [31:0]s_axis_data_tdata,//fft 输入的处理数据
   output [31:0] xk_re,//FFT处理后输出实部信号
   output [31:0] xk_im,//FFT处理后输出虚部信号
   output  m_axis_data_tvalid,//输出数据输出有效信号
   output s_axis_data_tready//fft core 准备好接收处理数据信号
    );
 
     reg [9:0]cnt; //计数器
     reg cnt_en;    //计数器使能信号                                            
     reg s_axis_config_tvalid;
     reg s_axis_data_tvalid;
     reg s_axis_data_tlast;
   /*
    当s_axis_config_tready为高电平，即fft  core 已经准备好接收配置数据，
    将s_axis_config_tvalid置为1，即配置数据有效信号置为高电平，表明master提供的配置数据有效
   */
    always@(posedge clk or negedge rst)
        if(!rst)
              s_axis_config_tvalid<=1'b0;
        else if(s_axis_config_tready==1'b1)
              s_axis_config_tvalid<=1'b1;
         else
              s_axis_config_tvalid<=1'b0;
 /*
     设置两级寄存器  同步捕捉  s_axis_data_tready信号的上升沿        
 */       
     reg  data_tready_r1,data_tready_r2;              
       always@(posedge clk or negedge rst)
                if(!rst)
                  data_tready_r1<=1'b0;
                else
                  data_tready_r1<= s_axis_data_tready;
         always@(posedge clk or negedge rst)
                   if(!rst)
                      data_tready_r2<=1'b0;
                     else
                      data_tready_r2<= data_tready_r1;   
 /*
     s_axis_data_tready有低电平变为高电平，表明fft core 准备好接收处理数据 
     s_axis_data_tvalid 置为1，即 表明master提供的处理数据有效 
    
   */                                   
     always@(posedge clk or negedge rst)
           if(!rst)
              s_axis_data_tvalid<=1'b0;
           else if({data_tready_r2,data_tready_r1}==2'b01)// s_axis_data_tready信号的上升沿      
              s_axis_data_tvalid<=1'b1;
            else
              s_axis_data_tvalid<= s_axis_data_tvalid;
 /*
      当检测到 s_axis_data_tready信号的上升沿   计数器使能               
 */                      
     always@(posedge clk or negedge rst)
            if(!rst) 
               cnt_en<=1'b0;
            else if({data_tready_r2,data_tready_r1}==2'b01)   
                cnt_en<=1'b1;
            else if(cnt==10'd512)
                  cnt_en<=1'b0;
  //当计数器使能信号有效，计数器计数                            
      always@(posedge clk or negedge rst)
           if(!rst)            
                  cnt<=10'd0;
           else if(cnt_en==1'b1)begin
                   if(cnt==10'd512)
                          cnt<=10'd0;
                       else 
                    cnt<=cnt+1'b1;
                      end
           else
                 cnt<=10'd0;   
 /*
      当输入数据流的最后一个样本时 将s_axis_data_tlast置高，以便于FFT core 产生后面的事件信号
 */                              
         always@(posedge clk or negedge rst)
                 if(!rst)      
                     s_axis_data_tlast<=1'b0;
                 else if(cnt==10'd510)
                        s_axis_data_tlast<=1'b1;
                  else    
                       s_axis_data_tlast<=1'b0;            
      
      wire[63 : 0]  m_axis_data_tdata;//fft ip核处理后的数据，其中高32位为虚部，低32位为实部信号
      wire    event_frame_started;//表明fft 开始处理一帧数据
     //一些事件信号，详细参看手册
      wire    event_tlast_unexpected ;    
      wire    event_tlast_missing;
      wire    event_data_in_channel_halt;
      wire    event_data_out_channel_halt;       
      wire [15:0] m_axis_data_tuser;
      wire event_status_channel_halt;     
  //fft 例化       
    FFT                     FFT_inst0(
      .aclk(clk),                                                // input wire aclk
      .s_axis_config_tdata(8'd1),                               // input wire [7 : 0] s_axis_config_tdata
      .s_axis_config_tvalid(s_axis_config_tvalid),                // input wire s_axis_config_tvalid
      .s_axis_config_tready(s_axis_config_tready),                // output wire s_axis_config_tready
      .s_axis_data_tdata(s_axis_data_tdata),                      // input wire [31 : 0] s_axis_data_tdata
      .s_axis_data_tvalid(s_axis_data_tvalid),                    // input wire s_axis_data_tvalid
      .s_axis_data_tready(s_axis_data_tready),                    // output wire s_axis_data_tready
      .s_axis_data_tlast(s_axis_data_tlast),                                    // input wire s_axis_data_tlast
      .m_axis_data_tdata(m_axis_data_tdata),                      // output wire [63 : 0] m_axis_data_tdata
      .m_axis_data_tuser(m_axis_data_tuser),                      // output wire [15 : 0] m_axis_data_tuser
      .m_axis_data_tvalid(m_axis_data_tvalid),                    // output wire m_axis_data_tvalid
      .m_axis_data_tready(1'b1),                                     // input wire m_axis_data_tready
      .m_axis_data_tlast(m_axis_data_tlast),                      // output wire m_axis_data_tlast
      .event_frame_started(event_frame_started),                  // output wire event_frame_started
      .event_tlast_unexpected(event_tlast_unexpected),            // output wire event_tlast_unexpected
      .event_tlast_missing(event_tlast_missing),                  // output wire event_tlast_missing
      .event_status_channel_halt(event_status_channel_halt),      // output wire event_status_channel_halt
      .event_data_in_channel_halt(event_data_in_channel_halt),    // output wire event_data_in_channel_halt
      .event_data_out_channel_halt(event_data_out_channel_halt)  // output wire event_data_out_channel_halt
    );
    
        assign xk_re=m_axis_data_tdata[31:0];//低32位为实部信号
        assign xk_im=m_axis_data_tdata[63:32]; // 高32位为虚部，
endmodule