module mux4a1Bus(
    input [3:0] D0, D1, D2, D3,
    input [1:0] S,
    output reg [3:0] Q);

always @ (*) begin
    case(S)
        2'b00: Q = D0;
        2'b01: Q = D1;
        2'b10: Q = D2;
        2'b11: Q = D3;
    endcase
end

endmodule
