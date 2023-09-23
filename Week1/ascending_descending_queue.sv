class ascending_descending;

rand bit[4:0] arr[$];
rand bit asc;

constraint asc_desc
{

    arr.size()==15;
    foreach(arr[i])
    {
    if(asc)
    {
        if(i>0)
        arr[i]>arr[i-1];
    }
    else{
        if(i>0)
        arr[i]<arr[i-1];
    }
    }
}
endclass

module top();
ascending_descending p;
initial
begin
    p=new();
    repeat(3)
    begin
    assert(p.randomize());
    $display("ascending/descending=%0d",p.asc);
    $display("Output Queue=%0p",p.arr);
    end
end

endmodule
