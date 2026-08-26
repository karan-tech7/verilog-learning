module demux1to2_tb;
    reg d;
    reg s;
    wire y0;
    wire y1;
    demux1to2 uut(
    .d(d),
    .s(s),
    .y0(y0),
    .y1(y1)
    );
initial begin
$dumpfile("demux1to2.vcd");
$dumpvars(0,demux1to2_tb);
d=0;s=0;#10;
$display("d=%b s=%b y0=%b y1=%b",d,s,y0,y1);
d=0;s=1;#10;
$display("d=%b s=%b y0=%b y1=%b",d,s,y0,y1);
d=1;s=0;#10;
$display("d=%b s=%b y0=%b y1=%b",d,s,y0,y1);
d=1;s=1;#10;
$display("d=%b s=%b y0=%b y1=%b",d,s,y0,y1);
$finish;
end 
endmodule
