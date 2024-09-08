module Dff(
    input wire d,
    input wire reset,
    input wire clk,
    output reg q
);
always @(negedge clk or negedge reset) begin
    if (reset) begin
        q <= 0;
    end else begin
        q <= d;
    end
end
endmodule