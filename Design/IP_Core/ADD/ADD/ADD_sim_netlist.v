// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Tue Oct 17 19:45:55 2017
// Host        : DESKTOP-JC6NIF0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Workspace/Vivado_16.4/2017_10_17_FFT/Design/IP_Core/ADD/ADD/ADD_sim_netlist.v
// Design      : ADD
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADD,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module ADD
   (A,
    B,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [13:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [13:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [13:0]S;

  wire [13:0]A;
  wire [13:0]B;
  wire CLK;
  wire [13:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "14" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000" *) 
  (* c_b_width = "14" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "14" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ADD_c_addsub_v12_0_10 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "14" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000000000" *) 
(* C_B_WIDTH = "14" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "14" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module ADD_c_addsub_v12_0_10
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [13:0]A;
  input [13:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [13:0]S;

  wire \<const0> ;
  wire [13:0]A;
  wire [13:0]B;
  wire CLK;
  wire [13:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "0" *) 
  (* c_a_width = "14" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "0" *) 
  (* c_b_type = "0" *) 
  (* c_b_value = "00000000000000" *) 
  (* c_b_width = "14" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "14" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  ADD_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
aLmCh07kamflOuBaaM0+v7gF3ZQCN4uTPS49jGLZrm9CPd5dKgOoOsd31lVTa39JRx8k8u0RZFFV
nw3upaAZ/Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Aw2ILhM4six9UWZ51f4Gy1qRmB5epLhkXLiUel7/FHhV7ItYiMTQtS+L83Mc+nltIzBz41zx1hg+
tXO5AqTS9y6LHQ1ArWATw/2MxHpqqoQIEm/MMEqmD/Abq3WrBTKsP7RX5Dxj9tAlh7xY+e7JDk+a
sjJqfmxL57ISjzlKoaQ=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
0/1mLFI6+FTTZyqv+sYB352QRZ5wrgfyuO8Nkt+jQDUoTWGXOFvLM95e0B7u7pGyVXEuiRNaS/1C
9K5laxba09UTfWZfUB2hMm6rnfWn8YWcIaVNd02hszTUlzNTayWvVsa2FTdMCLRIiFK8u1RBHLVP
UcX9x/96nygRGOLoIfE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TwF12B0FENmte69HLik7RgUzysvY8+HuB8EGjVY6poUa8iBKzPda2TQoHnlJTqGe1+FzZYUJuhGB
clNU6Lk8Bkwu2Zvg4jDN7NVaR9NLeQFwNSRsk3xulCw6V567vcil0zGYyjbOnYYTHzq7HsSH/Bm0
xq4+RgccqurbpDb3jMTCnrT8FdAbNHrYUODBgqb2jIwhD7/OPqJ0SEE3ixLW7nbxBsRKHm9Kma6y
1hzP9cz3Q0EBN5F8DlAfJL6l/k/Fca4GPaKT+xXlCPkuH9S4142Gj3BthEYVN4LNQxtTwa2uY31y
sgCqBN1SJYOxVE7rwfYIV4u6ydorl0NL4b8SIA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Dd8zTWz32pUa1MkJJ89cKoEsw+888js7vmFz+G6UXbaPykBi5+zzNJq/ma/zLUevoDTleeS0vnkG
+JIO9/zchHNr4qeCqpsII+gVnZw6HhC58DuHvYGN1Y7TBoUJRH+MKXVyK2yMhoejeeHyO4lNN+gN
S1MgvOyCze3SyHsJ+SIEqHrYsnjDZhaMLEzXqyA22EZM4EzfOyYnjWMgZaxxaMYob5z9jzxpSYIp
TO40Bd6Pm8WauMjFHordqiQfK5Pjpzcdo5mK2zhDq99Ps7biiaBYj2fl31Z9/oKSUs3+8cqx2lgf
9kXg8/E4aiAcL+A6bP9qcYXM24+6CVH25++cBg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T1OzwxahBz+3DD3Rm3j/gjV9y0afSZCx2fO2ZTfZP7ske+MGwxAEj6thGu3zcWtqmD0GiLn0cY5l
S56WD0icxE6wHjkL4oa4WujMcCwuovMioF6lkvnUzL1+y6Wu503nnT0iCczMIQadO2UcfK1jYsxZ
JhFAghVKjOTgZLvrbU6a9oJbmXaFjPdoVXULO6RJRtupdQ2VPxYp8PFoTxnXXp50G4hGNkviUtRA
KTHBgrmSN0y7lDM3qlsTT4fhiGuveo50Ihz8U+fAZ+maBUixwOJLCGV+jx11R/FO3KUwnuLfoOnp
XIvpC/RD2PuDhUsd27pxO1aeLeOP2B+LsTouLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
pE4xsiK3/+xPKGFOi3WquKfyNBwEDzqMKQIxHC7KkTTssDlMgI3EYos8mMXM2qoSOhN6LBoo/RtC
9WdWlU0fHWG6+oQjckHBpzUPU0jCqDK6VH8ZkR2zkvXtSH4DYPfLAM61RXSwJ00crbGLCYLGqbk8
0rcW/1Euzm4LSyTKI9tfzAWUVmgd5XhhbXY1XzCdkbVaeRjtKUVT3iQ5os03xXsCR0WQQ5rK5Udg
FJL0fsSKN2GVwrW84c1h8LFjp5ybKa2u651uE9YZPQU4eVOE8NXDm8VbqTvweRQbrHTHyh8e/RdQ
NbblVU4G8ycrW4xcLaolbtbc6X954EBfZrgWJQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
J4DDVgsxeDM5XhqCzAH86QotVptd20UDAzv7AEEb9z1R1t9gbAYzt1mqTf/yo9RV21hBK2nLMHeu
ivLFaJLwFpkSrjnjNCa5zzkx+MM7welz8qUSdV68LLmzbv1Tu2DetmD3/6+Q3uBjv7TY6NH1eQtw
cBg21v2ggk3E9SiXMdAVFminO1nK5DUiZQ6NjXz7545UIvdn6NWYb8dsfr078fLZPoyCzCJhj8mt
VihJkKQQUtuXpNpMbAenqKUED3PTgqSq/oubZcFeFk/EmKTCNHNOayaDN2sh6/lU7uRphMcRO5+2
AFd9JwANMkhW9HS8YWnCIOwg6AFa2IE7B8qCWw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12016)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
