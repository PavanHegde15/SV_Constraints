class ones;
 rand bit [31:0] data;
 constraint number_of_ones { 
   $countones(data)==4;   
 }
endclass
module test;
  ones h;
 initial begin
 h=new();
 repeat(4) begin
   assert(h.randomize( ))
   $display("data = %0b",h.data);
 end
 end
endmodule
