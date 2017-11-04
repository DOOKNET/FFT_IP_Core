// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1733598 Wed Dec 14 22:35:39 MST 2016
// Date        : Tue Oct 17 18:37:05 2017
// Host        : DESKTOP-JC6NIF0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Workspace/Vivado_16.4/2017_10_17_FFT/Design/IP_Core/ROM/ROM/ROM_stub.v
// Design      : ROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_5,Vivado 2016.4" *)
module ROM(clka, addra, douta, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[9:0],douta[13:0],clkb,addrb[9:0],doutb[13:0]" */;
  input clka;
  input [9:0]addra;
  output [13:0]douta;
  input clkb;
  input [9:0]addrb;
  output [13:0]doutb;
endmodule
