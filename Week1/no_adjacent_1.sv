class no_adjacent_1;

rand bit [31:0]data;

constraint no_adj_1
{

foreach(data[i])
    if(i>0)
    {data[i-1],data[i]}!=2'b11;
endclass

module tb();
no_adjacent_1 p;
initial
begin
        p=new();
        repeat(5)
        begin
    assert(p.randomize())
    $display("data: %0b",p.data);
        end
end
endmodule
