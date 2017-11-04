// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Tue Oct 17 19:45:55 2017
// Host        : DESKTOP-JC6NIF0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Workspace/Vivado_16.4/2017_10_17_FFT/Design/IP_Core/ADD/ADD/ADD_stub.v
// Design      : ADD
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_10,Vivado 2016.4" *)
module ADD(A, B, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[13:0],B[13:0],CLK,S[13:0]" */;
  input [13:0]A;
  input [13:0]B;
  input CLK;
  output [13:0]S;
endmodule
