`include "define.vh"

`define S0 3'd0
`define S1 3'd1
`define S2 3'd2
`define S3 3'd3
`define S4 3'd4


module MemCtrl(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//from ram
	input wire [7 : 0] mem_din,
	output reg [31 : 0] mem_a,
	output reg mem_wr,

	//from / to IF
	input wire [31 : 0] inst_addr_if_in,
	input wire stall_inst_if_in,
	output reg [31 : 0] inst_if_out,
	output reg inst_rdy_if_out
);
	
	reg[2 : 0] stage;
	reg[31 : 0] past_inst;
	reg[7 : 0] read_buf[3 : 0];
	integer i;

	always @(posedge clk_in) begin
		if (rst_in) begin
			stage <= `S0;
			past_inst <= 0;
	 		for (i = 0; i <= 3; ++i) begin
	 			read_buf[i] <= 0;
	 		end
			inst_rdy_if_out <= `FALSE;
		end
		else if (rdy_in) begin
			if (stall_inst_if_in == `TRUE) begin
				stage <= `S0;
				inst_rdy_if_out <= `FALSE;
			end
			else if (stage == `S0) begin
				inst_rdy_if_out <= `FALSE;
				stage <= stage + 1;
			end
			else if (stage != `S4) begin
				read_buf[stage - 1] <= mem_din;
				stage <= stage + 1;
			end
			else begin
				read_buf[stage - 1] <= mem_din;
				stage <= `S0;
				inst_if_out <= {mem_din, read_buf[2], read_buf[1], read_buf[0]};
				inst_rdy_if_out <= `TRUE;
			end
		end
	end

	always @(*) begin
		mem_a = inst_addr_if_in + stage;
		mem_wr = `MEM_R;
	end



endmodule