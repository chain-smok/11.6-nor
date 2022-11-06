module tb_nor_2;
   wire w2;
   reg a,b;
   nor_2 n3(w2,a,b);
   initial
   begin
       a=1'b0;b=1'b0;
   #10 a=1'b0;b=1'b1;
   #10 a=1'b1;b=1'b0;
   #10 a=1'b1;b=1'b1;
end
initial #50 $finish;
endmodule
