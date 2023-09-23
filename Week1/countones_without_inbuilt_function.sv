class count_ones;
 rand bit [31:0] data;
 rand int count[$bits(data)];
 rand bit [5:0] nun_once_required;
 constraint data_range { 

 foreach(data[i])
 {
if(i>=1)
    count[i]==count[i-1]+data[i];

else
    count[0]==data[0];

 }

 count[$bits(data)-1]==nun_once_required;
 }

 

endclass
module test;
 initial begin
 count_ones sf;
 sf = new( );
 repeat(4) begin
 assert(sf.randomize( ))
 $display("count_Of_once:%0d",sf.nun_once_required);
   $display("data = %0p",sf.count);
 $display("data = %0b",sf.data);

 end
 end
endmodule
