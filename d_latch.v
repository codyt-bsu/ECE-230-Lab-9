module d_latch(
    input D, E,
    output Q, NotQ
);

    always @(E) begin 
        if (E)
            Q <= D;
    end

    assign NotQ = ~Q; 

endmodule