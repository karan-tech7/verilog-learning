module decoder(
    input  [1:0] A,
    input        E,
    output [3:0] Y
);

assign Y = E ? (4'b0001 << A) : 4'b0000;

endmodule
