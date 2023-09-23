class once;
rand bit[5:0] y[$];
constraint 3_ones_count_4
{
    y.size()==10;
    y.sum with($countones(item)==3?1:0)==4;   //The number of elements count and number of once required can be taken as random variable.
}
endclass

module top();
once p;
initial
begin
    p=new();
    assert(p.randomize());
  $display("randomized data pattern is =")
    foreach(p.y[i])
      $display(%0b",p.y[i]);
end

endmodule
