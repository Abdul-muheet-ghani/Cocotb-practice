module adder_design(
    input [3:0] a,b,
    output [4:0] c
);

assign c = a + b;

initial begin
    $dumpfile("adder.vcd");
    $dumpvars(0,adder_design);
end

endmodule