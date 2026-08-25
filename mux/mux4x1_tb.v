module mux4x1_tb;
reg i0,i1,i2,i3;
reg s0,s1;
wire y;
mux4x1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);
initial begin
$display("i0 i1 i2 i3 s1 s0 y");
i0=0;i1=0;i2=0;i3=1;s0=0;s1=0;
#10;
$display("%b %b %b %b ",i0,i1,i2,i3,s1,s0,y);
s0=0;s1=1;
#10;
$display("%b %b %b %b",i0,i1,i2,i3,s1,s0,y);
s0=1;s1=0;
#10;
$display("%b %b %b %b",i0,i1,i2,i3,s1,s0,y);
s0=1;s1=0;
#10;
$display("%b %b %b %b",i0,i1,i2,i3,s0,s1,y);
$finish;
end
endmodule
