module test_wave(
    input 	sclk,
    output  signed  [13:0]	data_out
);
//--------------------------------------------------------//
parameter   Freq_I = 32'd4294967;      //frequence_I = 500k
parameter   Freq_Q = 32'd12884902;       //frequence_Q = 1.5M
parameter   cnt_width =  8'd32;    
//--------------------------------------------------------//

//--------------------------------------------------------//
reg     [cnt_width-1:0]cnt_I = 0;
reg     [cnt_width-1:0]cnt_Q = 0;
wire    [9:0]   addr_I;
wire	[9:0]	addr_Q;
always @(posedge sclk) begin
	cnt_I <= cnt_I + Freq_I;
	cnt_Q <= cnt_Q + Freq_Q;
end

assign  addr_I = cnt_I[cnt_width-1:cnt_width-10];
assign  addr_Q = cnt_Q[cnt_width-1:cnt_width-10];
//--------------------------------------------------------//

//-----------------����ROM��--------------------//
wire		signed	[13:0]	cos_50;
wire    	signed	[13:0]	cos_150;

ROM				ROM_inst0(
	.clka		(sclk),
    .addra		(addr_I),
    .douta		(cos_50),
    .clkb		(sclk),
    .addrb		(addr_Q),
    .doutb		(cos_150)
);
//---------------------------------------------------------//
/*
//----------------���üӷ���------------------//
wire   		signed	[13:0]	data_add;
ADD			ADD_inst1(
  	.A		(cos_50),
  	.B		(cos_150),
  	.CLK	(sclk),
  	.S		(data_add)
);
*/

assign	data_out = {cos_150[13],cos_150[13:1]} + {cos_50[13],cos_50[13:1]};


endmodule
