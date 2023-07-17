`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 18:51:05
// Design Name: 
// Module Name: Carry_adder_tb
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


module carsel_test;
  reg [15:0] a,b;
  reg cin;
  wire [15:0] s;
  wire co;
  
  carsel_adder dut(a,b,cin,s,co);
  initial begin
    #5 a=16'd125;b=16'd34; cin=0;
    #5 a=16'd66;b=16'd44; cin=0;
    #5 a=16'd56;b=16'd11; cin=1;
    #5 $finish;
  end
  initial begin
    $monitor("%t,a=%d,b=%d,cin=%b,s=%b,co=%b",$time,a,b,cin,s,co);
    $dumpfile("Carseladd.vcd");
    $dumpvars(0);
  end
endmodule
