module mux_8bit(
  input [7:0] A, [7:0] B, [7:0] C, [7:0] D,
  input [1: 0] Sel,
  output [7:0] Y
);

  assign Y = (Sel[1] ? (Sel[0] ? D: C) : (Sel[0] ? B:A ));

endmodule