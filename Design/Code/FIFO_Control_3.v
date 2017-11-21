/////////////////////////////////////////////////////
//  1.单片机发送指令，等待接收数据
//  2.检测到valid上升沿，FIFO开始缓存数据
//  3.检测到存满后开始发送
/////////////////////////////////////////////////////
module FIFO_Control(
    input   clk,                //系统时钟
    input   wr_clk,             //写数据时钟
    input   rd_clk,             //读数据时钟
    input   data_valid,         //FFT数据准备完毕
    input   tx_dong_sig,        //一帧数据发送结束标志
    input   rx_ready,           //单片机准备接收数据
    input   [13:0]  data_re,    //FFT数据

    output  reg tx_ready = 0,   //UART使能
);

parameter   state_0 = 3'b001;
parameter   state_1 = 3'b010;
parameter   state_2 = 3'b100;

reg     [3:0]   current_state = 3'b001;
reg     [3:0]   next_state = 3'b001;

reg     wr_en = 0;
reg     rd_en = 0;
wire    full;

reg     data_valid_pose = 0;    //检测信号上升沿
reg     data_valid_r0 = 0;
reg     data_valid_r1 = 0;

//---------------检测data_valid信号上升沿-----------------//
always @(posedge clk) begin
    data_valid_r0 <= data_valid;
    data_valid_r1 <= data_valid_r0;
end
assign  data_valid_pose = data_valid_r0 & ~data_valid_r1;

//-------------------------------------------------------//
always @(posedge clk) begin
    current_state <= next_state;
end
//-------------------------------------------------//
always @(posedge clk) begin
    case (current_state)
        state_0:
            begin
                if((rx_ready == 1) && (data_valid))    begin
                    next_state <= state_1;
                end
                else    begin
                    next_state <= state_0;
                end
            end 
        state_1: 
            begin
                if((full == 1) && (rx_ready == 0))    begin
                    next_state <= state_2;
                end
                else    begin
                    next_state <= state_1;
                end
            end
        state_2:
            begin
                if((empty == 1) && (tx_ready == 0))    begin
                    next_state <= state_0;
                end
                else    begin
                    next_state <= state_2;
                end
            end 
      default: ;
    endcase
end
//------------------------------------------------//
always @(posedge clk) begin
    case (next_state)
        state_0:    
            begin   
                wr_en <= 0;
                rd_en <= 0;
                tx_ready <= 0;
            end
        state_1:
            begin
                wr_en <= 1;
                rd_en <= 0;
                tx_ready <= 0;
            end
        state_2:
            begin
                wr_en <= 0;
                rd_en <= 1;
                tx_ready <= 1;
            end
        default: ;
    endcase
end
//-----------------------------------------------//





endmodule
