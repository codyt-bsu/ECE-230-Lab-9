module byte_memory(
    input [7:0] data,
    input store,
    output reg [7:0] memory
);

    // Herein, implement D-Latch style memory
    // that stores the input data into memory
    // when store is high

    
    genvar i;
    generate 
        for (i = 0; i < 8 ; i = i + 1)
            d_latch inst(
                .D(data[i])
                .E(store)
                .Q(memory[i])
            )
        end
    endgenerate



    // Memory should always output the value
    // stored, and it should only change
    // when store is high

endmodule