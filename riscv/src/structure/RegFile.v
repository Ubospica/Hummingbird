`include "define.vh"

module RegFile(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Dispatcher
	input wire rdy_dp_in,
	input wire [`REG_WIDTH - 1 : 0] rs1_dp_in, rs2_dp_in, rd_dp_in,
	input wire [`ROB_WIDTH - 1 : 0] rd_rob_dp_in,
	output reg rs1_busy_dp_out, rs2_busy_dp_out,
	output reg [31 : 0] rs1_val_dp_out, rs2_val_dp_out,
	output reg [`ROB_WIDTH - 1 : 0] rs1_rob_dp_out, rs2_rob_dp_out,

	//ROB
	input wire rdy_commit_rob_in,
	input wire [`REG_WIDTH - 1 : 0] dest_rob_in,
	input wire [`DATA_WIDTH - 1 : 0] value_rob_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_rob_in
);

	reg [`DATA_WIDTH - 1 : 0] value [`REG_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] rob_id [`REG_SIZE - 1 : 0];
	reg busy [`REG_SIZE - 1 : 0];

	integer i;

	always @(posedge clk_in) begin
		if (rst_in) begin
			for (i = 0; i < `REG_SIZE; i = i + 1) begin
				busy[i] = `FALSE;
				value[i] = 0;
			end 
		end
		else if (rdy_in) begin
			if (rdy_commit_rob_in) begin
				value[dest_rob_in] <= value_rob_in;
				if (rob_id[dest_rob_in] == rob_id_rob_in) begin
					busy[dest_rob_in] <= `FALSE; // ? modify more than one times
				end
			end
			if (rdy_dp_in) begin
				rob_id[rd_dp_in] <= rd_rob_dp_in;
				busy[rd_dp_in] <= `TRUE;
			end
		end
	end

	always @(*) begin
		rs1_busy_dp_out = busy[rs1_dp_in];
		rs1_val_dp_out = value[rs1_dp_in];
		rs1_rob_dp_out = rob_id[rs1_dp_in];
		rs2_busy_dp_out = busy[rs2_dp_in];
		rs2_val_dp_out = value[rs2_dp_in];
		rs2_rob_dp_out = rob_id[rs2_dp_in];
	end


endmodule