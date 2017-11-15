`timescale 1ns / 1ps
`define clk_period 20
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 2017/01/18 16:40:21
// Design Name: 
// Module Name: fft_tb
//////////////////////////////////////////////////////////////////////////////////

module tb_fft_2();
 
     reg clk;//50mhz
     reg rst;//复位
     reg [31:0]s_axis_data_tdata;//fft 输入的处理数据,低16位为实部信号，高16位虚部信号，本次matlab才生的信号都是失信号
     reg[31:0] data[511:0]; ////数组，将FPGA读取的信号数据寄存在数组中 
     
     wire s_axis_config_tready;//fft core 准备好接收配置信号
     wire s_axis_data_tready;//fft core 准备好接收处理数据信号
     wire [31:0] xk_re;//FFT处理后输出实部信号
     wire [31:0] xk_im;//FFT处理后输出虚部信号
     wire m_axis_data_tvalid;
     //例化fft ip 
	  FFT_Control_2          FFT_Control_2_inst0(
       .clk(clk),
       .rst(rst),
       .s_axis_config_tready(s_axis_config_tready),
       .s_axis_data_tdata(s_axis_data_tdata),
       .m_axis_data_tvalid(m_axis_data_tvalid),
       .xk_re(xk_re),
       .xk_im(xk_im),
       .s_axis_data_tready(s_axis_data_tready)
       );        
       initial clk = 1;
       always #(`clk_period/2)clk = ~clk;//产生50MHZ的系统时钟
       integer i;
        initial begin
          // Initialize Inputs
             rst=0;;//复位
             s_axis_data_tdata=0;//输入初始化为0
             #100;
              rst=1;//恢复
                 $readmemb("E:/Workspace/Vivado_16.4/2017_11_5_FFT/TestBeach/sin_data.txt",data);   //从matlab生成文件中读取数据
                      for(i=0;i<512;i=i+1)
                          begin
                          s_axis_data_tdata[15:0]=data[i];//将数组的数据赋值给s_axis_data_tdata作为输入，作为实部信号，没有虚部信号
                         #(`clk_period); //将输入数据以采样频率50MHZ输入
                           end    
                        #80000;
                      $stop;          
                  end
                 //定义一个文件名，将处理后的实部信号发存放在此文件中
                integer fft_file;
              
                    initial begin
                          fft_file=$fopen("fft_file.txt");
                            if(fft_file == 0)begin 
                                      $display ("can not open the file!");
                                      $stop;
                             end
                    end
                  
                      wire signed  [31:0] fft_dataout;
                    assign fft_dataout = xk_re;    //将输出的实部信号赋值给fft_dataout寄存器  
                     
                      always @(posedge clk ) 
                         if(m_axis_data_tvalid==1'b1)    // m_axis_data_tvalid有效时 输出    
                            $fdisplay(fft_file,"%d",fft_dataout);    
              
                //定义一个文件名，将处理后的虚部信号发存放在此文件中
				integer fft_im_file;
              
                    initial begin
                          fft_im_file=$fopen("fft_im_file.txt");
                            if(fft_im_file == 0)begin 
                                      $display ("can not open the file!");
                                      $stop;
                             end
                    end
                  
                      wire signed  [31:0] fft_im_dataout;
                    assign fft_im_dataout = xk_im; //将输出的虚部信号赋值给fft_im_dataout寄存器     
                     
                      always @(posedge clk ) 
                         if(m_axis_data_tvalid==1'b1)        // m_axis_data_tvalid有效时 输出    
                            $fdisplay(fft_im_file,"%d",fft_im_dataout);      

endmodule