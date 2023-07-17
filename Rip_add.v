module ripcar_adder(a,b,cin,s,co);
  input [3:0] a,b;
  input cin;
  wire c1,c2,c3;
  output [3:0] s;
  output co;
  
  Full_adder F1(a[0],b[0],cin,s[0],c1);
  Full_adder F2(a[1],b[1],c1,s[1],c2);
  Full_adder F3(a[2],b[2],c2,s[2],c3);
  Full_adder F4(a[3],b[3],c3,s[3],co);
  
endmodule