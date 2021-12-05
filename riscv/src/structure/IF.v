`include "define.vh"

module IF(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//from / to MemCtrl
	input wire inst_rdy_mc_in,
	input wire [31 : 0] inst_mc_in,
	output reg [31 : 0] inst_addr_mc_out,
	output reg stall_inst_mc_out,

	//from / to InstQueue
	input wire iqfull_iq_in,
	output reg [31 : 0] inst_iq_out,
	output reg inst_rdy_iq_out
);
	reg[31 : 0] pc;

	
	always @(posedge clk_in) begin
		if (rst_in) begin
			pc <= 0;
		end
		else if (rdy_in) begin
			if (inst_rdy_mc_in) begin
				pc <= pc + 4;
			end
		end
	end

	always @(*) begin
		stall_inst_mc_out = iqfull_iq_in;
		if (!inst_rdy_mc_in) begin
			inst_addr_mc_out = pc;
		end
		else if (iqfull_iq_in) begin
			inst_addr_mc_out = pc;
		end
		else begin
			inst_addr_mc_out = pc + 4;
		end

		inst_rdy_iq_out = inst_rdy_mc_in;
		inst_iq_out = inst_mc_in;
	end
endmodule