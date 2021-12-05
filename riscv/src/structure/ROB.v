`include "define.vh"

module ROB(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	
	input wire rdy_dp_in,
	input wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dp_in,
	input wire [31 : 0] dest_dp_in,
	output reg rob_full_dp_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_dp_out,
	
	input wire [`ROB_WIDTH - 1 : 0] rs1_rob_dp_in, rs2_rob_dp_in
	output reg rs1_rdy_dp_out, rs2_rdy_dp_out,
	output reg [31 : 0] rs1_val_dp_out, rs2_val_dp_out,

	input wire rdy_alu_in,
	input wire [`DATA_WIDTH - 1 : 0] result_alu_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_alu_in,

	//RegFile
	output reg rdy_commit_reg_out,
	output reg [`REG_WIDTH - 1 : 0] dest`_reg_out,
	output reg [`DATA_WIDTH - 1 : 0] value_reg_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_reg_out
);

	reg [`OP_TYPE_WIDTH - 1 : 0] op_type [`ROB_SIZE - 1 : 0];
	reg [`ADDR_WIDTH - 1 : 0] dest [`ROB_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] value [`ROB_SIZE - 1 : 0];
	reg rdy [`ROB_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] head, tail;
	reg rob_empty;

	always @(posedge clk_in) begin
		if (rst_in) begin
			head <= 0;
			tail <= 0;
			rdy_commit_reg_out <= `FALSE;
		end
		else if (rdy_in) begin
			if (rdy_dp_in) begin
				op_type[tail] <= dest_dp_in;
				dest[tail] <= dest_dp_in;
				rdy[tail] <= `FALSE;
				tail <= tail + 1;
			end

			if (rdy_alu_in) begin
				value[rob_id_alu_in] = result_alu_in;
				rdy[rob_id_alu_in] = `TRUE;
			end

			//commit
			rdy_commit_reg_out = `FALSE;
			if (!rob_empty && rdy[head] == `TRUE) begin
				case (op_type[head])
					`OP_ARITH: begin
						rdy_commit_reg_out = `TRUE;
						dest_reg_out = dest[head];
						value_reg_out = value[head];
						rob_id_reg_out = head;
					end
				endcase
				rdy[head] = `FALSE;
				head <= head + 1;
			end
		end
	end

	always @(*) begin
		rob_full_dp_out = $unsigned(tail - head) >= `ROB_SIZE - 2; //?
		rob_empty = tail == head;
		rob_id_dp_out = tail;

		//send value to dispatcher
		rs1_rdy_dp_out = rdy[rs1_rob_dp_in];
		rs1_val_dp_out = value[rs1_rob_dp_in];
		rs2_rdy_dp_out = rdy[rs2_rob_dp_in];
		rs2_val_dp_out = value[rs2_rob_dp_in];
	end
endmodule