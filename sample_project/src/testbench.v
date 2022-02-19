`timescale 1ns/1ps 

module mux_4a1bus_tb;
    reg [3:0] dato0, dato1, dato2, dato3;
    reg [1:0] seleccion;
    wire [3:0] salida;
    mux4a1Bus DUT (
        .D0(dato0),
        .D1(dato1),
        .D2(dato2),
        .D3(dato3),
        .S(seleccion),
        .Q(salida)
    );

    initial begin
        $dumpfile("mux41bus_tb.vcd");
        $dumpvars(0, mux_4a1bus_tb);
    end 

    initial begin 
        dato0 = 0;
        dato1 = 0;
        dato2 = 0;
        seleccion = 0;
        dato3 = 0;
        #10
        dato0 = 1;
        #5
        dato0 = 0;
        #5
        dato0 = 1;
        #5
        dato0 = 0;
        #5
        dato1 = 1;
        #5
        dato1 = 0;
        #5
        seleccion = 1;
        #10
        dato0 = 1;
        #5 
        dato0 = 0;
        $finish;
    end
endmodule


