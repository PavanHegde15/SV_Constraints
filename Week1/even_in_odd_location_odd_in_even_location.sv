class eo_oe_constraint;
  rand bit [4:0]q[$];
  rand bit [3:0]length;
  constraint even_odd_odd_even
  {
     q.size()==length;
      length>=1;
     foreach(q[i])
     {
        if(i[0])
        q[i][0]==0;
        else
        q[i][0]==1;
     }
  }


endclass

module top();
eo_oe_constraint eo;
initial
  begin
    eo=new();
    repeat(5)
      begin
      assert(eo.randomize())
        $display("even_odd:%0p",eo.q);
      end
  end
endmodule
