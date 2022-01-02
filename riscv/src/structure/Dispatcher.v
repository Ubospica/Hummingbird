`timescale 1ns/1ps

`include "define.vh"

module Dispatcher(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Decoder
	input wire rdy_dec_in,
	input wire [`ADDR_WIDTH - 1 : 0] pc_dec_in,
	input wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dec_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_dec_in,
	input wire [`REG_WIDTH - 1 : 0] rs1_dec_in, rs2_dec_in, rd_dec_in, //reg == 0 means the reg is not used
	input wire [`DATA_WIDTH - 1 : 0] imm_dec_in,
	output reg rdy_dispatch_dec_out,

	//RegFile
	input wire rs1_busy_rf_in, rs2_busy_rf_in,
	input wire [`DATA_WIDTH - 1 : 0] rs1_val_rf_in, rs2_val_rf_in,
	input wire [`ROB_WIDTH - 1 : 0] rs1_rob_rf_in, rs2_rob_rf_in,
	output reg rdy_rf_out,
	output reg [`REG_WIDTH - 1 : 0] rs1_rf_out, rs2_rf_out, rd_rf_out,
	output reg [`ROB_WIDTH - 1 : 0] rd_rob_rf_out,

	//ROB
	input wire rob_full_rob_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_rob_in,
	output reg rdy_rob_out,
	output reg [`OP_TYPE_WIDTH - 1 : 0] op_type_rob_out,
	output reg [`ADDR_WIDTH - 1 : 0] dest_rob_out,
	
`ifdef DEBUG
	output reg [`ADDR_WIDTH - 1 : 0] pc_rob_out,
`endif

	// bug: can get ready value of rs1 or rs2 from rob
	input wire rs1_rdy_rob_in, rs2_rdy_rob_in,
	input wire [`DATA_WIDTH - 1 : 0] rs1_val_rob_in, rs2_val_rob_in,
	output reg [`ROB_WIDTH - 1 : 0] rs1_rob_rob_out, rs2_rob_rob_out,
	
	//RS
	input wire rs_full_rs_in,
	output reg rdy_rs_out,
	output reg [`ADDR_WIDTH - 1 : 0] pc_rs_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_rs_out,
	output reg [`ROB_WIDTH - 1 : 0] qj_rs_out, qk_rs_out,
	output reg [`DATA_WIDTH - 1 : 0] vj_rs_out, vk_rs_out,
	output reg [`DATA_WIDTH - 1 : 0] A_rs_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_rs_out,

	//LSB	
	input wire lsb_full_lsb_in,
	output reg rdy_lsb_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_lsb_out,
	output reg [`ROB_WIDTH - 1 : 0] qj_lsb_out, qk_lsb_out,
	output reg [`DATA_WIDTH - 1 : 0] vj_lsb_out, vk_lsb_out,
	output reg [`DATA_WIDTH - 1 : 0] A_lsb_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_lsb_out
);

	reg can_dispatch;
	reg [`ROB_WIDTH - 1 : 0] qj, qk;
	reg [`DATA_WIDTH - 1 : 0] vj, vk;

	always @(*) begin
	
        // eliminating latch
//        can_dispatch = `FALSE;
//        qj = 0;
//        qk = 0;
//        vj = 0;
//        vk = 0;
        rs1_rf_out = 0;
        rs2_rf_out = 0;
        rd_rf_out = 0;
        rd_rob_rf_out = 0;
        op_type_rob_out = 0;
        dest_rob_out = 0;
        rs1_rob_rob_out = 0;
        rs2_rob_rob_out = 0;
        pc_rs_out = 0;
        opcode_rs_out = 0;
        qj_rs_out = 0;
        qk_rs_out = 0;
        vj_rs_out = 0;
        vk_rs_out = 0;
        A_rs_out = 0;
        rob_id_rs_out = 0;
        opcode_lsb_out = 0;
        qj_lsb_out = 0;
        qk_lsb_out = 0;
        vj_lsb_out = 0;
        vk_lsb_out = 0;
        A_lsb_out = 0;
        rob_id_lsb_out = 0;
        
		if (rst_in || !rdy_in) begin
			rdy_rf_out = `FALSE;
			rdy_rob_out = `FALSE;
			rdy_rs_out = `FALSE;
			rdy_lsb_out = `FALSE;
			rdy_dispatch_dec_out = `FALSE;
		end
		else begin
			rdy_rs_out = `FALSE;
			rdy_rf_out = `FALSE;
			rdy_rob_out = `FALSE;
			rdy_lsb_out = `FALSE;
            
			
			// rdy_dispatch_dec_out = `FALSE;
			// rdy_dispatch_dec_out = rdy_dec_in && (!rob_full_rob_in) && (op_type_dec_in == `OP_ARITH ? !rs_full_rs_in : !lsb_full_lsb_in);
			can_dispatch = rdy_dec_in && (!rob_full_rob_in) && 
				((op_type_dec_in == `OP_ARITH || op_type_dec_in == `OP_JUMP || op_type_dec_in == `OP_BRANCH) ? !rs_full_rs_in : !lsb_full_lsb_in);
			rdy_dispatch_dec_out = can_dispatch;
			// $display("ww1 %d %t", rdy_dispatch_dec_out, $realtime);
			if (rdy_dec_in) begin
				// can_dispatch = (!rob_full_rob_in) && (op_type_dec_in == `OP_ARITH ? !rs_full_rs_in : !lsb_full_lsb_in);

				//rob, reg, qj, qk, vj, vk
				if (can_dispatch) begin
					// rdy_dispatch_dec_out = `TRUE;
					//rob
					rdy_rob_out = `TRUE;
					op_type_rob_out = op_type_dec_in;
					dest_rob_out = rd_dec_in; //modify when load & store

					//rf
					rdy_rf_out = `TRUE;
					rd_rf_out = rd_dec_in;
					rd_rob_rf_out = rob_id_rob_in;

					//qj, vj
					qj = 0;
					vj = 0;
					if (rs1_dec_in != 0) begin
						rs1_rf_out = rs1_dec_in;
						if (rs1_busy_rf_in) begin
							rs1_rob_rob_out = rs1_rob_rf_in;
							if (rs1_rdy_rob_in) begin
								vj = rs1_val_rob_in;
							end
							else begin
								qj = rs1_rob_rf_in;
							end
						end
						else begin
							vj = rs1_val_rf_in;
						end
					end
					
					//qk, vk
					qk = 0;
					vk = 0;
					if (rs2_dec_in != 0) begin
						rs2_rf_out = rs2_dec_in;
						if (rs2_busy_rf_in) begin
							rs2_rob_rob_out = rs2_rob_rf_in;
							if (rs2_rdy_rob_in) begin
								vk = rs2_val_rob_in;
							end
							else begin
								qk = rs2_rob_rf_in;
							end
						end
						else begin
							vk = rs2_val_rf_in;
						end
					end

`ifdef DEBUG
					pc_rob_out = pc_dec_in;
`endif	

					//RS
					if (op_type_dec_in == `OP_ARITH || op_type_dec_in == `OP_JUMP || 
						op_type_dec_in == `OP_BRANCH) begin
						rdy_rs_out = `TRUE;
						opcode_rs_out = opcode_dec_in;
						qj_rs_out = qj;
						qk_rs_out = qk;
						vj_rs_out = vj;
						vk_rs_out = vk;
						pc_rs_out = pc_dec_in;
						A_rs_out = imm_dec_in;
						rob_id_rs_out = rob_id_rob_in;
					end
					//LSB
					else begin
						rdy_lsb_out = `TRUE;
						opcode_lsb_out = opcode_dec_in;
						qj_lsb_out = qj;
						qk_lsb_out = qk;
						vj_lsb_out = vj;
						vk_lsb_out = vk;
						A_lsb_out = imm_dec_in;
						rob_id_lsb_out = rob_id_rob_in;
					end
				end
			end
		end
	end

endmodule
