`timescale 1ns/1ps

`include "define.vh"

module LSBuffer(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Dispatcher
	input wire rdy_dp_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_dp_in,
	input wire [`ROB_WIDTH - 1 : 0] qj_dp_in, qk_dp_in,
	input wire [`DATA_WIDTH - 1 : 0] vj_dp_in, vk_dp_in,
	input wire [`DATA_WIDTH - 1 : 0] A_dp_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_dp_in,
	output reg lsb_full_dp_out,
	
	//ROB
	input wire [`ROB_WIDTH - 1 : 0] head_id_rob_in,

	//LSCtrl
	input wire idle_lsc_in,
	output reg rdy_lsc_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_lsc_out,
	output reg [`DATA_WIDTH - 1 : 0] vj_lsc_out, vk_lsc_out, imm_lsc_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_lsc_out,
	
	input wire rdy_a_cdb_in, 
	input wire [`DATA_WIDTH - 1 : 0] result_a_cdb_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_a_cdb_in,
	
	input wire rdy_ls_cdb_in, 
	input wire [`DATA_WIDTH - 1 : 0] result_ls_cdb_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_ls_cdb_in,
	
	input wire refresh_rob_cdb_in
);

	reg [`OP_WIDTH - 1 : 0] op [`LSB_SIZE - 1 : 0];
    reg [`ROB_WIDTH - 1 : 0] qj [`LSB_SIZE - 1 : 0], qk [`LSB_SIZE - 1 : 0];
    reg [`DATA_WIDTH - 1 : 0] vj [`LSB_SIZE - 1 : 0], vk [`LSB_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] A [`LSB_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] rob_id [`LSB_SIZE - 1 : 0];
	
	reg [`LSB_WIDTH - 1 : 0] head, tail;
	
	reg no_execute;

	integer i;
	

	always @(posedge clk_in) begin
		if (rst_in) begin
			no_execute <= `FALSE;
			head <= 0;
			tail <= 0;
			rdy_lsc_out <= `FALSE;
		end
		else if (!rdy_in) begin
//			rdy_lsc_out <= `FALSE;
		end
		else if (refresh_rob_cdb_in) begin
			no_execute <= `FALSE;
			head <= 0;
			tail <= 0;
			rdy_lsc_out <= `FALSE;
		end
		else begin

			//send to LSCtrl
			no_execute <= `FALSE;
			rdy_lsc_out <= `FALSE;
			if (idle_lsc_in && !no_execute) begin
				if (head != tail && qj[head] == 0 && qk[head] == 0 && 
					((op[head] >= `LB && op[head] <= `LHU) ||
						rob_id[head] == head_id_rob_in)) begin
					opcode_lsc_out <= op[head];
					vj_lsc_out <= vj[head];
					vk_lsc_out <= vk[head];
					imm_lsc_out <= A[head];
					rob_id_lsc_out <= rob_id[head];
					head <= head + 1;
					rdy_lsc_out <= `TRUE;
					no_execute <= `TRUE;
				end
			end

			if (rdy_a_cdb_in) begin
				for (i = 0; i < `LSB_SIZE; i = i + 1) begin
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
				for (i = 0; i < `LSB_SIZE; i = i + 1) begin
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

			// bug: modification to lsb to be occupied overwrited by cdb change as unused lsb
			if (rdy_dp_in) begin
				op[tail] <= opcode_dp_in;
				qj[tail] <= qj_dp_in;
				vj[tail] <= vj_dp_in;
				qk[tail] <= qk_dp_in;
				vk[tail] <= vk_dp_in;
				A[tail] <= A_dp_in;
				rob_id[tail] <= rob_id_dp_in;

				// bug: same as rs
				if (rdy_a_cdb_in) begin
					if (qj_dp_in == rob_id_a_cdb_in) begin
						qj[tail] <= 0;
						vj[tail] <= result_a_cdb_in;
					end
					if (qk_dp_in == rob_id_a_cdb_in) begin
						qk[tail] <= 0;
						vk[tail] <= result_a_cdb_in;
					end
				end

				if (rdy_ls_cdb_in) begin
					if (qj_dp_in == rob_id_ls_cdb_in) begin
						qj[tail] <= 0;
						vj[tail] <= result_ls_cdb_in;
					end
					if (qk_dp_in == rob_id_ls_cdb_in) begin
						qk[tail] <= 0;
						vk[tail] <= result_ls_cdb_in;
					end
				end

				tail <= tail + 1;
			end
		end
	end

	always @(*) begin
		lsb_full_dp_out = $unsigned(tail - head) >= `LSB_SIZE - 2;
	end
endmodule