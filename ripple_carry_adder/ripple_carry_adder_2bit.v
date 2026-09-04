module ripple_carry_adder_2bit(
    input a0,
    input a1,
    input b0,
    input b1,
    input cin,
    output s0,
    output s1,
    output cout
);
wire c1;
full_adder FA0(
    .a(a0),
    .b(b0),
    .cin(cin),
    .sum(s0),
    .cout(c1)
);
full_adder fA1(
    .a(a1),
    .b(b1),
    .cin(c1),
    .sum(s1),
    .cout(cout)
);
endmodule
