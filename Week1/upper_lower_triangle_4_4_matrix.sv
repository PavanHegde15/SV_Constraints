class upper_lower_traingle;

rand bit [3:0]m[4][4];
rand bit up;
constraint upper_lower_triangle_matrix
{
    foreach(m[i,j])
    {
        if(!up)
        {
        if(i<j)
          m[i][j]==0;
        else
        m[i][j]!=0;
        }
        else{
        if(i>j)
        m[i][j]==0;
        else
        m[i][j]!=0;
        }
    }
}

endclass

module top();
upper_lower_traingle p;
initial
begin
    p=new();
    repeat(3)
    begin
    assert(p.randomize());
    $display("up=%0d",p.up);
    foreach(p.m[i])
    $display("%0p",p.m[i]);
    end
end

endmodule
