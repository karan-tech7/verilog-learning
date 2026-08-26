module not_gate_tb;
    reg a;
    wire b;
    not_gate uut(
        .a(a),
        .b(b)
    );
    initial begin
    $display("a b");
    a=0;
    #10;
    $display("%b %b" , a , b);
    a=1;
    #10;
    $display("%b %b" , a ,b);
    $finish;
    end
    endmodule
