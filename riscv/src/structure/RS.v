`timescale 1ns/1ps

`include "define.vh"

module RS(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Dispatcher
	input wire rdy_dp_in,
	// input wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dp_in,
	input wire [`ADDR_WIDTH - 1 : 0] pc_dp_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_dp_in,
	input wire [`ROB_WIDTH - 1 : 0] qj_dp_in, qk_dp_in,
	input wire [`DATA_WIDTH - 1 : 0] vj_dp_in, vk_dp_in,
	input wire [`DATA_WIDTH - 1 : 0] A_dp_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_dp_in,
	output reg rs_full_dp_out,

	//ALU
	input wire idle_alu_in,
	output reg rdy_alu_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_alu_out,
	output reg [`ADDR_WIDTH - 1 : 0] pc_alu_out,
	output reg [`DATA_WIDTH - 1 : 0] vj_alu_out, vk_alu_out, imm_alu_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_alu_out,

	input wire rdy_a_cdb_in,
	input wire [`DATA_WIDTH - 1 : 0] result_a_cdb_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_a_cdb_in,
	
	input wire rdy_ls_cdb_in,
	input wire [`DATA_WIDTH - 1 : 0] result_ls_cdb_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_ls_cdb_in,
	
	input wire refresh_rob_cdb_in
);

	reg busy [`RS_SIZE - 1 : 0];
	// reg [`OP_TYPE_WIDTH - 1 : 0] op_type [`RS_SIZE - 1 : 0];
	reg [`OP_WIDTH - 1 : 0] op [`RS_SIZE - 1 : 0];
	reg [`ADDR_WIDTH - 1 : 0] pc [`RS_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] qj [`RS_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] qk [`RS_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] vj [`RS_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] vk [`RS_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] A [`RS_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] rob_id [`RS_SIZE - 1 : 0];

	// todo: use for loop? one i?
	reg [`RS_WIDTH - 1 : 0] free_rs_id; //should not be full
	reg [`RS_WIDTH - 1 : 0] alu_rs_id;
	reg sent_to_alu;

	reg [`RS_WIDTH : 0] rs_cnt; // one more digit

	integer i;


	always @(posedge clk_in) begin
		if (rst_in) begin
			for (i = 0; i < `RS_SIZE; i = i + 1) begin
				busy[i] <= `FALSE;
			end
			sent_to_alu <= `FALSE;
			rs_cnt <= 0;
			rdy_alu_out <= `FALSE;
		end
		else if (rdy_in && refresh_rob_cdb_in) begin
			for (i = 0; i < `RS_SIZE; i = i + 1) begin
				busy[i] <= `FALSE;
			end
			sent_to_alu <= `FALSE;
			rs_cnt <= 0;
			rdy_alu_out <= `FALSE;
		end
		else if (rdy_in) begin
			if (rdy_dp_in) begin
				busy[free_rs_id] <= `TRUE;
				// op_type[free_es_id] <= op_type_dp_in;
				op[free_rs_id] <= opcode_dp_in;
				pc[free_rs_id] <= pc_dp_in;
				qj[free_rs_id] <= qj_dp_in;
				qk[free_rs_id] <= qk_dp_in;
				vj[free_rs_id] <= vj_dp_in;
				vk[free_rs_id] <= vk_dp_in;
				A[free_rs_id] <= A_dp_in;
				rob_id[free_rs_id] <= rob_id_dp_in;
				rs_cnt <= rs_cnt + 1;

				// bug: dispatcher and cdb come at the same cycle
				if (rdy_a_cdb_in) begin
					if (qj_dp_in == rob_id_a_cdb_in) begin
						qj[free_rs_id] <= 0;
						vj[free_rs_id] <= result_a_cdb_in;
					end
					if (qk_dp_in == rob_id_a_cdb_in) begin
						qk[free_rs_id] <= 0;
						vk[free_rs_id] <= result_a_cdb_in;
					end
				end

				if (rdy_ls_cdb_in) begin
					if (qj_dp_in == rob_id_ls_cdb_in) begin
						qj[free_rs_id] <= 0;
						vj[free_rs_id] <= result_ls_cdb_in;
					end
					if (qk_dp_in == rob_id_ls_cdb_in) begin
						qk[free_rs_id] <= 0;
						vk[free_rs_id] <= result_ls_cdb_in;
					end
				end
			end

			if (sent_to_alu) begin
				busy[alu_rs_id] <= `FALSE;
				rs_cnt <= rdy_dp_in ? rs_cnt : rs_cnt - 1;
				sent_to_alu <= `FALSE;
			end

			//send to ALU
			rdy_alu_out <= `FALSE;
			if (idle_alu_in) begin
				for (i = 0; i < `RS_SIZE; i = i + 1) begin
					if (!(sent_to_alu == `TRUE && i == alu_rs_id) && busy[i] && 
						qj[i] == 0 && qk[i] == 0) begin
						rdy_alu_out <= `TRUE;
						pc_alu_out <= pc[i];
						opcode_alu_out <= op[i];
						vj_alu_out <= vj[i];
						vk_alu_out <= vk[i];
						imm_alu_out <= A[i];
						rob_id_alu_out <= rob_id[i];
						alu_rs_id <= i;
						sent_to_alu <= `TRUE;
					end
				end
			end

			//receive result from alu
			if (rdy_a_cdb_in) begin
				for (i = 0; i < `RS_SIZE; i = i + 1) begin
					if (qj[i] == rob_id_a_cdb_in) begin
						qj[i] <= 0;
						vj[i] <= result_a_cdb_in;
					end
					if (qk[i] == rob_id_a_cdb_in) begin
						qk[i] <= 0;
						vk[i] <= result_a_cdb_in;
					end
				end
			end

			if (rdy_ls_cdb_in) begin
				for (i = 0; i < `RS_SIZE; i = i + 1) begin
					if (qj[i] == rob_id_ls_cdb_in) begin
						qj[i] <= 0;
						vj[i] <= result_ls_cdb_in;
					end
					if (qk[i] == rob_id_ls_cdb_in) begin
						qk[i] <= 0;
						vk[i] <= result_ls_cdb_in;
					end
				end
			end
		end
	end

	always @(*) begin
		rs_full_dp_out = rs_cnt >= `RS_SIZE - 1; // todo: is sign extended?
		for (i = 0; i < `RS_SIZE; i = i + 1) begin
			if (~busy[i]) begin
				free_rs_id = i;
			end
		end
	end
endmodule