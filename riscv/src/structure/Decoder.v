`include "define.vh"

module Decoder(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//InstQueue
	input wire [31 : 0] inst_iq_in,
	input wire [`ADDR_WIDTH - 1 : 0] pc_iq_in,
	input wire rdy_iq_in,
	output reg rdy_dispatch_iq_out,

	//Dispatcher
	input wire rdy_dispatch_dp_in,
	output reg rdy_dp_out,
	output reg [`ADDR_WIDTH - 1 : 0] pc_dp_out,
	output reg [`OP_TYPE_WIDTH - 1 : 0] op_type_dp_out,
	output reg [`OP_WIDTH - 1 : 0] opcode_dp_out,
	output reg [`REG_WIDTH - 1 : 0] rs1_dp_out, rs2_dp_out, rd_dp_out, //reg == 0 means the reg is not used
	output reg [31 : 0] imm_dp_out
);

	wire [6 : 0] funct7 = inst_iq_in[31 : 25];
	wire [6 : 0] rs2 = inst_iq_in[24 : 20];
	wire [6 : 0] rs1 = inst_iq_in[19 : 15];
	wire [6 : 0] funct3 = inst_iq_in[14 : 12];
	wire [6 : 0] rd = inst_iq_in[11 : 7];
	wire [6 : 0] opcode = inst_iq_in[6 : 0];

	always @(*) begin
		rdy_dispatch_iq_out = rdy_dispatch_dp_in;
		pc_dp_out = pc_iq_in;

		opcode_dp_out = `NOP;
		op_type_dp_out = `OP_NOP;
		rs1_dp_out = 0;
		rs2_dp_out = 0;
		rd_dp_out = 0;
		imm_dp_out = 0;
		rdy_dp_out = `FALSE;
		if (rst_in) begin
			rdy_dp_out = `FALSE;
		end
		else if (rdy_in) begin
			rdy_dp_out = rdy_iq_in;
			if (rdy_iq_in) begin
				//get imm, rs1, rs2, rd
				case (opcode) 
					'b0110111, 'b0010111: begin // U Type
						imm_dp_out = {inst_iq_in[31 : 12], 12'b0};
						rd_dp_out = rd;
					end
					'b1101111: begin // J Type
						imm_dp_out = $signed({inst_iq_in[31], inst_iq_in[19 : 12], inst_iq_in[20], inst_iq_in[30 : 21], 1'b0});
						rd_dp_out = rd;
					end
					'b1100111, 'b0000011, 'b0010011: begin //I Type
						imm_dp_out = $signed({inst_iq_in[31 : 20]});
						rs1_dp_out = rs1;
						rd_dp_out = rd;
					end
					'b1100011: begin // B Type
						imm_dp_out = $signed({inst_iq_in[31], inst_iq_in[7], inst_iq_in[30 : 25], inst_iq_in[11 : 8], 1'b0});
						rs1_dp_out = rs1;
						rs2_dp_out = rs2;
					end
					'b0100011: begin // S Type
						imm_dp_out = $signed({inst_iq_in[31 : 25], inst_iq_in[11 : 7]});
						rs1_dp_out = rs1;
						rs2_dp_out = rs2;
					end
					'b0110011: begin // R Type
						rs1_dp_out = rs1;
						rs2_dp_out = rs2;
						rd_dp_out = rd;
					end
				endcase
				// slli srli srai
				if (opcode == 'b0010011 && (funct3 == 'b001 || funct3 == 'b101)) begin
					imm_dp_out = $unsigned(rs2);
				end

				// get opcode & optype
				case (opcode) 
					'b0110111: begin
						opcode_dp_out = `LUI;
						op_type_dp_out = `OP_ARITH;
					end
					'b0010111: begin
						opcode_dp_out = `AUIPC;
						op_type_dp_out = `OP_ARITH;
					end
					'b1101111:  begin
						opcode_dp_out = `JAL;
						op_type_dp_out = `OP_JUMP;
					end
					'b1100111:  begin
						opcode_dp_out = `JALR;
						op_type_dp_out = `OP_JUMP;
					end
					'b1100011: begin // B Type
						case (funct3) 
							'b000: opcode_dp_out = `BEQ;
							'b001: opcode_dp_out = `BNE;
							'b100: opcode_dp_out = `BLT;
							'b101: opcode_dp_out = `BGE;
							'b110: opcode_dp_out = `BLTU;
							'b111: opcode_dp_out = `BGEU;
						endcase
						op_type_dp_out = `OP_BRANCH;
					end
					'b0000011: begin
						case (funct3) 
							'b000: opcode_dp_out = `LB;
							'b001: opcode_dp_out = `LH;
							'b010: opcode_dp_out = `LW;
							'b100: opcode_dp_out = `LBU;
							'b101: opcode_dp_out = `LHU;
						endcase
						op_type_dp_out = `OP_LOAD;
					end
					'b0100011: begin // S Type
						case (funct3) 
							'b000: opcode_dp_out = `SB;
							'b001: opcode_dp_out = `SH;
							'b010: opcode_dp_out = `SW;
						endcase
						op_type_dp_out = `OP_SAVE;
					end
					'b0010011: begin //I Type
						case (funct3) 
							'b000: opcode_dp_out = `ADDI;
							'b010: opcode_dp_out = `SLTI;
							'b011: opcode_dp_out = `SLTIU;
							'b100: opcode_dp_out = `XORI;
							'b110: opcode_dp_out = `ORI;
							'b111: opcode_dp_out = `ANDI;
							'b001: opcode_dp_out = `SLLI;
							'b101: opcode_dp_out = funct7 == 0 ? `SRLI : `SRAI;
						endcase
						op_type_dp_out = `OP_ARITH;
					end
					'b0110011: begin // R Type
						case (funct3) 
							'b000: opcode_dp_out = funct7 == 0 ? `ADD : `SUB;
							'b001: opcode_dp_out = `SLL;
							'b010: opcode_dp_out = `SLT;
							'b011: opcode_dp_out = `SLTU;
							'b100: opcode_dp_out = `XOR;
							'b101: opcode_dp_out = funct7 == 0 ? `SRL : `SRA;
							'b110: opcode_dp_out = `OR;
							'b111: opcode_dp_out = `AND;
						endcase
						op_type_dp_out = `OP_ARITH;
					end
				endcase
			end
		end
	end


endmodule