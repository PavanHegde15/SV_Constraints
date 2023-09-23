class power_of_2;

rand bit [31:0] pwr;
rand bit[4:0]shift;

constraint power2
{
    pwr==(32'b1<<shift);
}

endclass
module top();
power_of_2 p;
initial
begin
    p=new();
    assert(p.randomize());
    $display("Shift value=%0d",p.shift);
    $display("power of 2=%0b",p.pwr);
end
endmodule
