`timescale 1ns/1ps

`include "define.vh"

module ICache(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//IF
	input wire [`ADDR_WIDTH - 1 : 0] pc_if_in,
	input wire rdy_if_in,
	output reg [`INST_WIDTH - 1 : 0] inst_if_out,
	output reg rdy_if_out,
	
	//MemCtrl
	input wire [`INST_WIDTH - 1 : 0] inst_mc_in,
	input wire rdy_inst_mc_in,
	output reg [`ADDR_WIDTH - 1 : 0] inst_addr_mc_out,
	output reg rdy_inst_mc_out
);

`define TAG_RANGE 31 : 11
`define IDX_RANGE 10 : 2
`define IDX_WIDTH 9
`define BS_WIDTH 2
`define BLOCK_WIDTH 32

	reg valid [`IC_SIZE - 1 : 0];
	reg [`TAG_RANGE] tag [`IC_SIZE - 1 : 0];
	reg [`BLOCK_WIDTH - 1 : 0] value [`IC_SIZE - 1 : 0];

	reg [`IDX_WIDTH - 1 : 0] pc_idx;
	reg hit;

	reg is_busy;
	reg [`IDX_WIDTH - 1 : 0] wait_idx;
	reg [`TAG_RANGE] wait_tag;

	integer i;
	
	always @(posedge clk_in) begin
		if (rst_in) begin
			is_busy <= `FALSE;
			for (i = 0; i < `IC_SIZE; i = i + 1) begin
				valid[i] <= 0;
			end
			rdy_inst_mc_out <= `FALSE;
		end
		else if (!rdy_in) begin
//			rdy_inst_mc_out <= `FALSE;
		end
		else begin
			if (is_busy && rdy_inst_mc_in) begin
				rdy_inst_mc_out <= `FALSE;
				is_busy <= `FALSE;
				value[wait_idx] <= inst_mc_in;
				tag[wait_idx] <= wait_tag;
				valid[wait_idx] <= `TRUE;
			end
			if (rdy_if_in && !hit && !is_busy) begin
				is_busy <= `TRUE;
				wait_idx <= pc_idx;
				wait_tag <= pc_if_in[`TAG_RANGE];
				rdy_inst_mc_out <= `TRUE;
				inst_addr_mc_out <= pc_if_in;
			end
		end
	end

	always @(*) begin
		pc_idx = pc_if_in[`IDX_RANGE];
		hit = !rst_in && rdy_in && rdy_if_in && pc_if_in[`TAG_RANGE] == tag[pc_idx] && valid[pc_idx];
		rdy_if_out = hit;
		inst_if_out = value[pc_idx];
	end
endmodule