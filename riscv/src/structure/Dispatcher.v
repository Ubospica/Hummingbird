`include "define.vh"

module Dispatcher(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Decoder
	input wire rdy_dec_in,
	input wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dec_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_dec_in,
	input wire [`REG_WIDTH - 1 : 0] rs1_dec_in, rs2_dec_in, rd_dec_in, //reg == 0 means the reg is not used
	input wire [31 : 0] imm_dec_in,

	//RS
	output reg rdy_rs_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_rs_out,
	output reg [`ROB_WIDTH - 1 : 0] qj_rs_out, qk_rs_out,
	output reg [31 : 0] vj_rs_out, vk_rs_out,
	output reg [31 : 0] A_rs_out,
	output reg [`ROB_WIDTH : 0] rob_id_rs_out,

	//RegFile
	input wire rs1_busy_rf_in, rs2_busy_rf_in,
	input wire [31 : 0] rs1_val_rf_in, rs2_val_rf_in,
	input wire [`ROB_WIDTH - 1 : 0] rs1_rob_rf_in, rs2_rob_rf_in,
	output reg rdy_rf_out,
	output reg [`REG_WIDTH - 1 : 0] rs1_rf_out, rs2_rf_out, rd_rf_out,
	output reg [`ROB_WIDTH - 1 : 0] rd_rob_rf_out,

	//ROB
	input wire [`ROB_WIDTH - 1 : 0] robid_rob_in,
	output reg rdy_rob_out,
	output reg [`OP_TYPE_WIDTH - 1 : 0] op_type_rob_out,
	output reg [31 : 0] dest_rob_out,
	// get ready value of rs1 or rs2 from rob
	input wire rs1_rdy_rob_in, rs2_rdy_rob_in,
	input wire [31 : 0] rs1_val_rob_in, rs2_val_rob_in,
	output reg [`ROB_WIDTH - 1 : 0] rs1_rob_rob_out, rs2_rob_rob_out
);


	always @(*) begin
		if (rst_in) begin
			rdy_rs_out = 0;
			rdy_rf_out = 0;
			rdy_rob_out = 0;
		end
		else if (rdy_in) begin
			rdy_rs_out = rdy_dec_in;
			rdy_rf_out = rdy_dec_in;
			rdy_rob_out = rdy_dec_in;
			if (rdy_dec_in) begin
				//init rs
				qj_rs_out = 0;
				qk_rs_out = 0;
				vj_rs_out = 0;
				vk_rs_out = 0;
				opcode_rs_out = opcode_dec_in;
				A_rs_out = imm_dec_in;

				//init rob
				op_type_rob_out = op_type_dec_in;
				dest_rob_out = rd_dec_in; //modify when load & store

				//init reg
				rd_rf_out = rd_dec_in;
				rd_rob_rf_out = robid_rob_in;

				//rs: rs1
				rs1_rf_out = rs1_dec_in;
				if (rs1_busy_rf_in) begin
					rs1_rob_rob_out = rs1_rob_rf_in;
					if (rs1_rdy_rob_in) begin
						vj_rs_out = rs1_val_rob_in;
					end
					else begin
						qj_rs_out = rs1_rob_rf_in;
					end
				end
				else begin
					vj_rs_out = rs1_val_rf_in;
				end
				//rs2
				rs2_rf_out = rs2_dec_in;
				if (rs2_busy_rf_in) begin
					rs2_rob_rob_out = rs2_rob_rf_in;
					if (rs2_rdy_rob_in) begin
						vk_rs_out = rs2_val_rob_in;
					end
					else begin
						qk_rs_out = rs2_rob_rf_in;
					end
				end
				else begin
					vk_rs_out = rs2_val_rf_in;
				end
			end
		end
	end

endmodule