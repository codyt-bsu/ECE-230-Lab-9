module d_latch(
    input D, E,
    output reg Q, NotQ
);

    always @(D, E) begin 
        if (E)
            Q <= D;
    end

    assign NotQ = ~Q; 

endmodule