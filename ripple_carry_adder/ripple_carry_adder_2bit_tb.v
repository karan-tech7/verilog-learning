module ripple_carry_adder_2bit_tb;
reg a0;
reg a1;
reg b0;
reg b1;
reg cin;
wire s0;
wire s1;
wire cout;
ripple_carry_adder_2bit uut(
    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .cin(cin),
    .s0(s0),
    .s1(s1),
    .cout(cout)
);
initial begin
$dumpfile("ripple_carry_adder_2bit.vcd");
$dumpvars(0,ripple_carry_adder_2bit_tb);
$monitor("time=%0t | a1a0=%b%b b1b0=%b%b cin=%b | s1s0=%b%b | cout=%b",$time,a1,a0,b1,b0,cin,s1,s0,cout);
a1=0; a0=0; b1=0; b0=0; cin=0; #10;
a1=0; a0=1; b1=0; b0=1; cin=0; #10;
a1=1; a0=0; b1=0; b0=1; cin=0; #10;
a1=1; a0=1; b1=0; b0=1; cin=0; #10;
a1=1; a0=1; b1=1; b0=1; cin=0; #10;
a1=1; a0=1; b1=1; b0=1; cin=1; #10;
$finish;
end 
endmodule
