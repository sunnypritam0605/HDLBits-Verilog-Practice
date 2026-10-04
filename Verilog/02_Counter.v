module Down_Counter(
    input wire clk,
    input wire [3:0] in,
    input wire latch,
    input wire dec,

    output reg [3:0] counter,
    output wire zero,
)

always @(posedge clk) begin
    if (latch) begin
        counter <= in;
    end else if (dec) begin
        counter <= counter - 1;
    end
end
assign zero = (counter == 4'd0);

endmodule