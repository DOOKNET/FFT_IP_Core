module TOP(
    input   sclk,
    output  signed  [13:0]  data_re,
    output  signed  [13:0]  data_im
);

wire     signed  [13:0]  data_out_reg;

//---------------------------------//
test_wave       test_wave_inst0(
    .sclk       (sclk),
    .data_out   (data_out_reg)
);
//--------------------------------//


endmodule 
