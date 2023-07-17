`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2023 18:48:05
// Design Name: 
// Module Name: Carry_sel_adder
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


module carsel_adder(a,b,cin,s,co);
  input [15:0] a,b;
  input cin;
  wire [15:4] s1,s2;
  wire [1:0] c2,c3,c4;
  wire c1,c21,c31;
  
  output [15:0] s;
  output co;
    
  ripcar_adder F1(a[3:0],b[3:0],cin,s[3:0],c1);
  
  ripcar_adder F2(a[7:4],b[7:4],0,s1[7:4],c2[1]);
  ripcar_adder F3(a[7:4],b[7:4],1,s2[7:4],c2[0]);
  
  ripcar_adder F4(a[11:8],b[11:8],0,s1[11:8],c3[1]);
  ripcar_adder F5(a[11:8],b[11:8],1,s2[11:8],c3[0]);
  
  ripcar_adder F6(a[15:12],b[15:12],0,s1[15:12],c4[1]);
  ripcar_adder F7(a[15:12],b[15:12],1,s2[15:12],c4[0]);
  
  assign s[7:4]=(c1)?s2[7:4]:s1[7:4];
  assign c21=c1?c2[0]:c2[1];
  assign s[11:8]=(c21)?s2[11:8]:s1[11:8];
  assign c31=c21?c3[0]:c3[1];
  assign s[15:12]=c31?s2[11:8]:s1[11:8];
  assign co=c31?c4[0]:c4[1];
  
endmodule