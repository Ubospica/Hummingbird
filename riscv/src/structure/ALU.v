`timescale 1ns/1ps

`include "define.vh"

module ALU(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//RS
	input wire rdy_rs_in,
	input wire [`ADDR_WIDTH - 1 : 0] pc_rs_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_rs_in,
	input wire [`DATA_WIDTH - 1 : 0] vj_rs_in, vk_rs_in, imm_rs_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_rs_in,
	output reg idle_rs_out,

	//CDB
	output reg rdy_a_cdb_out,
	output reg [`DATA_WIDTH - 1 : 0] result_a_cdb_out,
	output reg [`ADDR_WIDTH - 1 : 0] new_pc_a_cdb_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_a_cdb_out
);


	// always @(posedge clk_in) begin
	// 	if (rst_in) begin
			
	// 	end
	// 	else if (rdy_in) begin
			
	// 	end
	// end
	reg [`DATA_WIDTH - 1 : 0] result;
	reg [`ADDR_WIDTH - 1 : 0] pc_result;

	always @(*) begin
		idle_rs_out = `TRUE;
		rdy_a_cdb_out = `FALSE;
		
		// eliminating latch
		result_a_cdb_out = 0;
		new_pc_a_cdb_out = 0;
		rob_id_a_cdb_out = 0;
		
		if (rst_in || !rdy_in) begin
		
		end
		else begin
			if (rdy_rs_in == `TRUE) begin
				idle_rs_out = `FALSE;
				rdy_a_cdb_out = `FALSE;

				// result
				case (opcode_rs_in)
					`LUI: result = imm_rs_in;
					`ADD: result = vj_rs_in + vk_rs_in;
					`SUB: result = vj_rs_in - vk_rs_in;
					`XOR: result = vj_rs_in ^ vk_rs_in;
					`OR: result = vj_rs_in | vk_rs_in;
					`AND: result = vj_rs_in & vk_rs_in;
					`SLL: result = vj_rs_in << vk_rs_in;
					`SRL: result = vj_rs_in >> vk_rs_in;
					`SRA: result = vj_rs_in >>> vk_rs_in;
					`SLT: result = $unsigned($signed(vj_rs_in) < $signed(vk_rs_in));
					`SLTU: result = $unsigned(vj_rs_in < vk_rs_in);

					`ADDI: result = vj_rs_in + imm_rs_in;
					`XORI: result = vj_rs_in ^ imm_rs_in;
					`ORI: result = vj_rs_in | imm_rs_in;
					`ANDI: result = vj_rs_in & imm_rs_in;
					`SLLI: result = vj_rs_in << imm_rs_in;
					`SRLI: result = vj_rs_in >> imm_rs_in;
					`SRAI: result = vj_rs_in >>> imm_rs_in;
					`SLTI: result = $unsigned($signed(vj_rs_in) < $signed(imm_rs_in));
					`SLTIU: result = $unsigned(vj_rs_in < imm_rs_in);
					`AUIPC: result = pc_rs_in + imm_rs_in;
					`JAL: result = pc_rs_in + 4;
					`JALR: result = pc_rs_in + 4;
					`BEQ: result = vj_rs_in == vk_rs_in;
					`BNE: result = vj_rs_in != vk_rs_in;
					`BLT: result = $signed(vj_rs_in) < $signed(vk_rs_in);
					`BGE: result = $signed(vj_rs_in) >= $signed(vk_rs_in);
					`BLTU: result = vj_rs_in < vk_rs_in;
					`BGEU: result = vj_rs_in >= vk_rs_in;
					default: result = 0;
				endcase

				// pc_result
				case (opcode_rs_in) 
					`JAL: pc_result = pc_rs_in + imm_rs_in;
					`JALR: pc_result = (vj_rs_in + imm_rs_in) & (~32'b1);
					`BEQ, `BNE, `BLT, `BGE, `BLTU, `BGEU: pc_result = pc_rs_in + imm_rs_in;
					default: pc_result = 0;
				endcase

				result_a_cdb_out = result;
				new_pc_a_cdb_out = pc_result;
				rob_id_a_cdb_out = rob_id_rs_in;
				rdy_a_cdb_out = `TRUE;

				idle_rs_out = `TRUE;

`ifdef DEBUG
				if (opcode_rs_in == `BLT || opcode_rs_in == `BGE) begin
					$display("alu pc=%x v1=%d v2=%d res=%d newpc=%x", pc_rs_in, $signed(vj_rs_in), $signed(vk_rs_in), result, pc_result);
				end
				else begin // if (opcode_rs_in == `BLTU || opcode_rs_in == `BGEU || opcode_rs_in == `BEQ) begin
					$display("alu pc=%x v1=%d v2=%d res=%d newpc=%x", pc_rs_in, vj_rs_in, vk_rs_in, result, pc_result);
				end
`endif

			end
		end
	end
endmodule