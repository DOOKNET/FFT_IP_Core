// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Tue Oct 17 19:42:10 2017
// Host        : DESKTOP-JC6NIF0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ADD_sim_netlist.v
// Design      : ADD
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADD,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* c_latency = "2" *) 
  (* c_out_width = "14" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10 U0
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "2" *) 
(* C_OUT_WIDTH = "14" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10
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
  (* c_latency = "2" *) 
  (* c_out_width = "14" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
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
IRgJBCX3liSrTJjTXX5WehaPEOu46nqfBRKWO1NDmB93nmypdCK6+6cCdOVxwItbh5/K6OrzvkDn
wnt2W2qefoGIdwe+vEnPUSnOGKSAFVN8t57wfkGZQZeHkJHg6nPDulGwdyZvc2QSaeT1BR4srM21
LCFdRhe4FU3kBqW2fm4jWdhq8Vvj9qxro2t9KwMbx7a67COyD0UeIyBEwcvumv8IKnkZYeIcE2TK
mZ74CIP9ZhRQb3w+CPs1+Nim3JqMQmKk/UNZLZYLuBR3PJTfSwGGyrPHIl5xxC5EqhDDY/Qpy5Ys
je2Or5eJC44+zPH6t0iVy03HAn/2CUvbECqhZA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
DBdF1Cn91kMn5Rux7IuS0dg61/D7NSjM3XCNi+Fmy7/Gjj2lHfrz7FtV+D3d0vVffB7tysjxMt/5
WZVRBKsdjIDH4Jldn9Td+kUrp6wD9F6vq5sG5cZRnHeLHzVyAL+w1kgS4J4aZe7ngEKpM3LClAFR
KNK4qAV46G11v00E9vaOMdEYvuO/plC6iEfmbti8gYlvWj2Z6wukQX5GOOtt6nBKr/9lhKwAr2iA
XSclJV61aUcAwhqITsR74eFc0hDm5RwAXVd/1ks/gCTjyAPvBYDCawBtzfXd31tlJOqmCfuADmJd
06vu1A/8ufK0HGmEk4562fdCSNmOT5n4g6KhxQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22336)
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
