/*
 * register_file.v
 */
 
module register_file #(
  parameter WORDSIZE 32,
  parameter ADDRBITS 5,
  parameter REGNUM   32
 )(
  input clk,
  input rstn,
  input [WORDSIZE-1:0] din,
  input [ADDRBITS-1:0] addr,
  input wen,          // write at 1, read at 0
  
  output reg [WORDSIZE-1:0] dout
 );
 
 reg [WORDSIZE-1:0] registers [0:REGNUM-1];
 
 // assignment
 always @(*) begin
  registers = 32'd0;
 end
 
 // registers
 integer i;
 always @(posedge clk, negedge rstn) begin
  if (~rstn) begin
    for (i=1; i<WORDSIZE; i=i+1) begin
      registers[i] <= 32'd0;
    end
  end
  else begin
    if (wen) begin
      registers[addr] <= din;
    end
    else begin
      dout <= registers[addr];
    end
  end
 end
 
endmodule
