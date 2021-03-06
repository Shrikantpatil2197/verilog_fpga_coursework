`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2020 04:54:35 PM
// Design Name: 
// Module Name: mux2_1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module muxdf2_1_tb;
 reg pa, pb, ps;
 wire pout;
// instantiate the fulladder module
 mux2_1 uut(pa, pb, ps, pout); // positional association
 initial
  begin: blk_only_once
   reg [3:0] pa1;
   for (pa1=0; pa1 < 8; pa1 = pa1+1)
     begin
      {ps, pa, pb} <= pa1;
      #50;
     end
   end
 endmodule