module encoder4to2_tb;
reg i0,i1,i2,i3;
wire y0,y1;
encoder_4to2 uut(i0,i1,i2,i3,y0,y1);
initial begin
$dumpfile("encoder4to2.vcd");
$dumpvars(0,encoder4to2_tb);
i0=1;i1=0;i2=0;i3=0;#10;
$display("i0=%b i1=%b i2=%b i3=%b",i0,i1,i2,i3,y0,y1);
i0=0;i1=1;i2=0;i3=0;#10;
$display("i0=%b i1=%b i2=%b i3=%b",i0,i1,i2,i3,y0,y1);
i0=0;i1=0;i2=1;i3=0;#10;
$display("i0=%b i1=%b i2=%b i3=%b",i0,i1,i2,i3,y0,y1);
i0=0;i1=0;i2=0;i3=1;#10;
$display("i0=%b i1=%b i2=%b i3=%b",i0,i1,i2,i3,y0,y1);
$finish;
end 
endmodule
