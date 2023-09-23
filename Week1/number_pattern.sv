class pattern;

rand bit[11:0] y[$];

constraint c1
{

y.size()==20;
foreach(y[i])
{

    if(i==0)
    y[i]==i;
    
else
{
if(i%2==0)
y[i]==(i-1);
else
y[i]==(i+1);
}
}
}

endclass
module top();
pattern p;
initial
begin
    p=new();
    assert(p.randomize());
    foreach(p.y[i])
    begin
    $write("%0d",p.y[i]);
    end
    $display();

end

endmodule
