class even_odd_constraint;
  rand bit [4:0]even;
  rand bit[4:0] odd;
  constraint even_odd{
  even[0]==0;   //using Modulo (even%2==0)
  odd[0]==1;  //using Modulo (odd%2==0)
  }
endclass

module top();
even_odd_constraint eo;
initial
  begin
    eo=new();
    repeat(4)
      begin
      assert(eo.randomize())
        $display("even:%0d,odd:%0d",eo.even,eo.odd);
      end
  end
endmodule
