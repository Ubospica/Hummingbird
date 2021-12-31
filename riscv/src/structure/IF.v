`timescale 1ns/1ps

`include "define.vh"

module IF(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//from / to MemCtrl
	// input wire rdy_inst_mc_in,
	// input wire [`INST_WIDTH - 1 : 0] inst_mc_in,
	// output reg [`ADDR_WIDTH - 1 : 0] inst_addr_mc_out,
	// output reg rdy_inst_mc_out,

	//ICache
	input wire [`INST_WIDTH - 1 : 0] inst_ic_in,
	input wire rdy_ic_in,
	output reg [`ADDR_WIDTH - 1 : 0] pc_ic_out,
	output reg rdy_ic_out,

	//from / to InstQueue
	input wire iq_full_iq_in,
	output reg rdy_inst_iq_out,
	output reg [`INST_WIDTH - 1 : 0] inst_iq_out,
	output reg [`ADDR_WIDTH - 1 : 0] pc_iq_out,

	//ROB
	input wire refresh_rob_cdb_in,
	input wire [`ADDR_WIDTH - 1 : 0] new_pc_rob_in
);

	reg[`ADDR_WIDTH - 1 : 0] pc;

	always @(posedge clk_in) begin
		if (rst_in) begin
			pc <= 0;
			rdy_inst_iq_out <= `FALSE;
		end
		else if (rdy_in && refresh_rob_cdb_in) begin
			pc <= new_pc_rob_in;
			rdy_inst_iq_out <= `FALSE;
			// bug: output new pc_ic_out after reflush
			pc_ic_out <= new_pc_rob_in;
		end
		else if (rdy_in) begin
			if (rdy_ic_in) begin
				rdy_inst_iq_out <= `TRUE;
				inst_iq_out <= inst_ic_in;
				pc_iq_out <= pc;
				pc_ic_out <= pc + 4;
				pc <= pc + 4;
			end
			else begin
				rdy_inst_iq_out <= `FALSE;
				pc_ic_out <= pc;
			end
		end
		else begin
			
		end
	end

	always @(*) begin
		rdy_ic_out = ~iq_full_iq_in;
	end
endmodule