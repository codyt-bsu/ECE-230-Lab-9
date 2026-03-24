module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    wire store0;
    wire store1;
    wire store2;
    wire store3;

    demultiplexer_1bit storeDemux(
        .data(store)
        .sel(addr)
        .A(store0)
        .B(store1)
        .C(store2)
        .D(store3)
    );

    byte_memory mem0(
        .store(store0)
        .data(data)
        .memory(memory)
    );

    byte_memory mem1(
        .store(store1)
        .data(data)
        .memory(memory)
    );

    byte_memory mem2(
        .store(store2)
        .data(data)
        .memory(memory)
    );

    byte_memory mem3(
        .store(store3)
        .data(data)
        .memory(memory)
    );
    
    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule

