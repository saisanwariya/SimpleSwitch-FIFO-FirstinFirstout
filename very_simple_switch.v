module very_simple_switch
#(
	parameter DATA_WIDTH =64,
	parameter INPUT_QTY =8,
	parameter OUTPUT_QTY =8
)
(
	/*clock, reset */
	input clk,
	input reset,
	
	/* inputs */
	input [INPUT_QTY-1:0] data_in_valid,
	input [INPUT_QTY-1:0][DATA_WIDTH-1:0] data_in,
	input [INPUT_QTY-1:0][$clog2(OUTPUT_QTY-1:0] data_in_destination,

	/* outputs */
	output logic [OUTPUT_QTY-1:0] data_out_valid,
	output logic [OUTPUT_QTY-1:0] [DATA_WIDTH-1:0] data_out
);
 reg [DATA_WIDTH-1:0]     mem[(1<<INPUT_QTY)-1:0];
   reg [DATA_WIDTH-1:0]     rdata;

generate
if (INPUT_QTY <64 && OUTPUT_QTY <64) begin 
   reg [DATA_WIDTH-1:0]     din_r;
   reg 			    data;

   assign data_out = data ? data_in_valid : data_in;

   always @(posedge clk)
     if (reset)
       data_in_valid <= data_in;

   always @(posedge clk)
     if (data_out_valid == data_in_valid && data_out && data_in)
       data <= 1;
     else if (reset)
       data <= 0;
end else begin
   assign data_out = rdata;
end
endgenerate

   always @(posedge clk) begin
      if (data_out_valid)
	mem[data_in_out] <= data_in;
      if (data_in)
	rdata <= mem[data_in_valid];
   end

endmodule