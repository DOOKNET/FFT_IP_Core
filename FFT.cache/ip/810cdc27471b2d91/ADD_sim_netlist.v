// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Tue Oct 17 19:45:54 2017
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
  (* c_latency = "1" *) 
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
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
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
  (* c_latency = "1" *) 
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
B0myHT5FNFyR02Lvck4ZI1F/tlP7CaE0+C6LTOBtRZMof/jTChWyRvRSgmfqujm121Trla2OtTrX
+EOOntW4Zlp7R5PnGspgfxqN/R75E4XaH9e7TBrgnPMcwlBDpvnugDAhoFoq4G/94mb/ClVMxtGC
6IsapsErkAFj3XmxBMg0ZSJJzBXZI9xWMyRVpG9BtQfb2mTZTGuYtctEHhwxBXDQ/foS+IC6UU6G
S0nVlw5QD6cJASBjsGR/xBDTFZbPAeklZTttYJ7K5KLl4GqM53dIJB9fd3WJYiPfhasgSzBntcJQ
4HCXMR+M/aL6nxvyBaOAZpVj0enP5q2PbaBOsw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
LkOdSOgqILDIocy+IcsskDY8mjkEmz3Z0Hi90n3ie0F6/ZlT+nmZRQ9Z/kXrHlITm0KbjokhxYDX
bN5WKJ11WejkvLw6ty7l0X3nmwBs/oA1bm9o5nRtwHiUbUqvnNDNSvLUyYUeorguwBvMKo59+PcM
9nyUth7SKYvSHtqFYkXyy/pc3/ee3x4uxwHypRkSoYx9GmyUzYjst1cVVZGiaPzf8ncbzEullrm7
QGWgKLLNXpR95X2vGWhvsZuotMSDFENvx9lkwpY6tbdMD5nA9QeLdHQRrgFxvsiewpVZiswUsqw1
pWtVfZUZJBK+tboe9FiIHvUmxmIG8v+u/Quxqg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12112)
`pragma protect data_block
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
lpW42Pl+/KexWH41SCrDosbOkWNTOT6ryfa3iQ==
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
