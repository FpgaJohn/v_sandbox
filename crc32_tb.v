`timescale 1ns/1ps

module crc32_tb;

    // Clock
    localparam period_40 = 25;
    localparam duty_cycle_40 = period_40 / 2;

	// Clocks
    reg clk40;

    // 40MHz Clock
    always
    begin
        clk40 = 1'b0;
        #duty_cycle_40;

        clk40 = 1'b1;
        #duty_cycle_40;
    end
	
    // UUT

    // Test Data
	reg [63:0] testdata = 'h00000000_00003131;
	integer bytes = 8;

    initial
    begin
        $display("Starting Test Bench");

        $finish();
    end

endmodule


//////
//module CRC_32_paraller_test; 
//reg clk; 
//reg rst; 
//reg load;
//reg d_finish; 
//reg [7:0] crc_in; 
//wire [7:0] crc_out; 
//parameter clk_period = 40; 
////
//initial 
//begin 
// #clk_period clk = 1; 
// #clk_period rst = 1; 
// #clk_period rst = 0; 
// #clk_period crc_in[7:0] = 8'b1010_1010; //
// #clk_period load = 1; 
// #clk_period load = 0; 
// #clk_period d_finish = 0; 
// #(10*clk_period) d_finish = 1; 
// #clk_period d_finish = 0; 
//end 
//always #(clk_period/2) clk = ~clk; 
//always #(clk_period) crc_in[7:0] = ~crc_in[7:0]; //
////
//CRC_32_paraller 
//u1(.clk(clk), .rst(rst), .load(load), .d_finish(d_finish), .crc_in(crc_in), .crc_out(crc_out)); 
//endmodule 
