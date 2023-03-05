module adder_design(
    input logic clk,
    input logic [3:0] a,b,
    output logic [4:0] c
);

timeunit 1ns;
timeprecision 1ns;

always@ (posedge clk) begin
    c <= a + b;
end

initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0,adder_design);
end

endmodule