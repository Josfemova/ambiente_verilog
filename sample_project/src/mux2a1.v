module mux2a1(
    input A, B, S,
    output Q
);

assign Q = S? A : B;

endmodule
