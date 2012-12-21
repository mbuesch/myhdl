// File: ram_1.v
// Generated by MyHDL 0.8dev
// Date: Fri Dec 21 14:32:37 2012


`timescale 1ns/10ps

module ram_1 (
    dout,
    din,
    addr,
    we,
    clk
);
// Ram model 

output [7:0] dout;
wire [7:0] dout;
input [7:0] din;
input [6:0] addr;
input we;
input clk;


reg [7:0] mem [0:128-1];




always @(posedge clk) begin: RAM_1_WRITE
    if (we) begin
        mem[addr] <= din;
    end
end



assign dout = mem[addr];

endmodule
