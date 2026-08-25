module mux2x1_tb;
    reg i0,i1,s;
    wire y;
    mux2x1 uut(
        .i0(i0),
        .i1(i1),
        .s(s),
        .y(y)
    );
    initial begin
        $display("i0 i1 s y");
        i0=0; i1=0; s=0;#10;
        $display("%b %b %b %b",i0,i1,s,y);

        i0=0; i1=0; s=1 ;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);

        i0=0; i1=1; s=0 ;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);

        i0=0; i1=1; s=1 ;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);
        
        i0=1; i1=0; s=0;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);

        i0=1; i1=0; s=1;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);
    
        i0=1; i1=1; s=0 ;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);
    
        i0=1; i1=1; s=1 ;
        #10;
        $display("%b %b %b %b",i0,i1,s,y);

    $finish;
    end
    endmodule
