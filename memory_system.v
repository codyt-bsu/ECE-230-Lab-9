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

    wire [7:0] data0;
    wire [7:0] data1;
    wire [7:0] data2;
    wire [7:0] data3;

    wire [7:0] mem0;
    wire [7:0] mem1;
    wire [7:0] mem2;
    wire [7:0] mem3;

    demultiplexer_1bit storeDemux(
        .data(store),
        .sel(addr),
        .A(store0),
        .B(store1),
        .C(store2),
        .D(store3)
    );

    demultiplexer_8bit dataDmux(
        .data(data),
        .sel(addr),
        .A(data0),
        .B(data1),
        .C(data2),
        .D(data3)
    );

    mux_8bit dataMux(
        .A(mem0),
        .B(mem1),
        .C(mem2),
        .D(mem3),
        .Sel(addr),
        .Y(memory)
    );

    byte_memory memory0(
        .store(store0),
        .data(data0),
        .memory(mem0)
    );

    byte_memory memory1(
        .store(store1),
        .data(data1),
        .memory(mem1)
    );

    byte_memory memory2(
        .store(store2),
        .data(data2),
        .memory(mem2)
    );

    byte_memory memory3(
        .store(store3),
        .data(data3),
        .memory(mem3)
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