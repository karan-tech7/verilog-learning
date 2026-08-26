`timescale 1ns/1ps

module decoder_tb;

    reg [1:0] A;
    reg E;
    wire [3:0] Y;

    decoder uut (
        .A(A),
        .E(E),
        .Y(Y)
    );

    initial begin
        $monitor("Time=%0t E=%b A=%b Y=%b", $time, E, A, Y);

        E = 0; A = 2'b00;
        #10 E = 1; A = 2'b00;
        #10 A = 2'b01;
        #10 A = 2'b10;
        #10 A = 2'b11;
        #10 E = 0;
        #10 $finish;
    end

endmodule
