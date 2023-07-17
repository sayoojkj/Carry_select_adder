module Full_adder(a,b,ci,s,co);
  input a,b,ci;
  output s,co;
  wire t1,t2,t4;
  
  Half_adder H1(a,b,t1,t2);
  Half_adder H2(t1,ci,s,t4);
  or(co,t2,t4);
  
endmodule