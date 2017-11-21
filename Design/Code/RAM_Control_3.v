module RAM_Control_3(
    input   clk,
	input	[13:0]	data_in,	//输入数据
    input   [9:0]   addra,      //端口地址
    input   [9:0]   addrb,
    input   data_tvalid,        //数据有效使能，拉高时写数据
    input   [15:0]  address

);

//----------input---------//
reg     wea;            //写端口使能
reg     web;
reg     [13:0]  dina;   //输入数据
reg     [13:0]  dinb;
//---------output---------//
wire    [13:0]  douta;  //输出a
wire    [13:0]  doutb;  //输出b
//------------------------//

always @(posedge clk) begin
    if(data_tvalid) begin
        wea <= 1;
        web <= 1;
    end
end

always @(posedge clk) begin
    if(wea) begin
        addra <= address;
    end
end


//-----------调用RAM-----------//
RAM           RAM_inst0(
    .clka     (clk),
    .ena      (1),
    .wea      (wea),
    .addra    (addra),
    .dina     (dina),
    .douta    (douta),
    .clkb     (clk),
    .enb      (1),
    .web      (web),
    .addrb    (addrb),
    .dinb     (dinb),
    .doutb    (doutb)
);
//----------------------------//






endmodule
