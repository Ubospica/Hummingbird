`include "define.vh"

module LSBuffer(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Dispatcher
	input wire rdy_dp_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_dp_in,
	input wire [`ROB_WIDTH - 1 : 0] qj_dp_in, qk_dp_in,
	input wire [31 : 0] vj_dp_in, vk_dp_in,
	input wire [31 : 0] A_dp_in,
	input wire [`ROB_WIDTH : 0] rob_id_dp_in,
	output reg rsfull_dp_out,

	//ALU
	input wire idle_alu_in,
	output reg rdy_alu_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_alu_out,
	output reg [`DATA_WIDTH - 1 : 0] vj_alu_out, vk_alu_out, imm_alu_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_alu_out,

	input wire rdy_alu_in, 
	input wire [`DATA_WIDTH - 1 : 0] result_alu_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_alu_in

);

	reg [`LSB_WIDTH - 1 : 0] head, tail;
	reg [`OP_TYPE_WIDTH - 1 : 0] op_type [`ROB_SIZE - 1 : 0];
	reg [`ADDR_WIDTH - 1 : 0] dest [`ROB_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] value [`ROB_SIZE - 1 : 0];
	reg rdy [`ROB_SIZE - 1 : 0];

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
		else if (rdy_in) begin
			if (rdy_dp_in) begin
				busy[free_rs_id] <= `TRUE;
				op[free_rs_id] <= opcode_dp_in;
				qj[free_rs_id] <= qj_dp_in;
				qk[free_rs_id] <= qk_dp_in;
				vj[free_rs_id] <= vj_dp_in;
				vk[free_rs_id] <= vk_dp_in;
				A[free_rs_id] <= A_dp_in;
				rob_id[free_rs_id] <= rob_id_dp_in;
				rs_cnt <= rs_cnt + 1;
			end

			if (sent_to_alu) begin
				busy[alu_rs_id] <= `FALSE;
				rs_cnt <= rs_cnt - 1;
			end

			//send to ALU
			rdy_alu_out <= `FALSE;
			if (idle_alu_in) begin
				for (i = 0; i < `RS_SIZE; i = i + 1) begin
					if (!(sent_to_alu == `TRUE && i == alu_rs_id) && 
						busy[i] && qj[i] == 0 && qk[i] == 0) begin
						rdy_alu_out <= `TRUE;
						opcode_alu_out <= op[i];
						vj_alu_out <= vj[i];
						vk_alu_out <= vk[i];
						imm_alu_out <= imm[i];
						rob_id_alu_out <= rob_id[i];
						alu_rs_id <= i;
						sent_to_alu <= `TRUE;
					end
				end
			end

			//receive result from alu
			if (rdy_alu_in) begin
				for (i = 0; i < `RS_SIZE; i = i + 1) begin
					if (qj[i] == rob_id_alu_in) begin
						qj[i] <= 0;
						vj[i] <= result_alu_in;
					end
					if (qk[i] == rob_id_alu_in) begin
						qk[i] <= 0;
						vk[i] <= result_alu_in;
					end
				end
			end
		end
	end

	always @(*) begin
		assign rsfull_dp_out = rs_cnt >= `RS_SIZE - 1; // todo: is sign extended?
		for (i = 0; i < `RS_SIZE; i = i + 1) begin
			if (~busy[i]) begin
				free_rs_id = i;
			end
		end
	end
endmodule