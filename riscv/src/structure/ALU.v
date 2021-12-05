`include "define.vh"

module ALU(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//RS
	input wire rdy_rs_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_rs_in,
	input wire [`DATA_WIDTH - 1 : 0] vj_rs_in, vk_rs_in, imm_rs_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_rs_in,
	output reg idle_rs_out,
	output reg rdy_rs_out,
	output reg [`DATA_WIDTH - 1 : 0] result_rs_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_rs_out,

	//ROB
	output reg rdy_rob_out,
	output reg [`DATA_WIDTH - 1 : 0] result_rob_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_rob_out,

	//LSB
);


	// always @(posedge clk_in) begin
	// 	if (rst_in) begin
			
	// 	end
	// 	else if (rdy_in) begin
			
	// 	end
	// end
	reg [`DATA_WIDTH - 1 : 0] result;

	always @(*) begin
		if (rst_in) begin
			idle_rs_out = `TRUE;
			rdy_rs_out = `FALSE;
			rdy_rob_out = `FALSE;
		end
		else if (rdy_in) begin
			if (rdy_rs_in == `TRUE) begin
				idle_rs_out = `FALSE;
				rdy_rs_out = `FALSE;
				rdy_rob_out = `FALSE;
				case (opcode_rs_in) begin
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
					default: result = 0;
				end

				result_rs_out = result;
				rob_id_rs_out = rob_id_rs_in;
				rdy_rs_out = `TRUE;

				result_rob_out = result;
				rob_id_rob_out = rob_id_rs_in;
				rdy_rob_out = `TRUE;

				idle_rs_out = `TRUE;
			end
		end
	end
endmodule