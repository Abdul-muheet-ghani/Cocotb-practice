module adder_design(
    input clk,
    input [3:0] a,b,
    output [4:0] c
);

always@ (posedge clk) begin
    c = a + b;
end

initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0,adder_design);
end

endmodule