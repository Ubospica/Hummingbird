`timescale 1ns/1ps

`include "define.vh"

module InstQueue(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//from / to IF
	input wire [`INST_WIDTH - 1 : 0] inst_if_in,
	input wire rdy_inst_if_in,
	input wire [`ADDR_WIDTH - 1 : 0] pc_if_in,
	output reg iq_full_if_out,

	//Decoder
	input wire rdy_dispatch_dec_in, 
	output reg [`INST_WIDTH - 1 : 0] inst_dec_out,
	output reg [`ADDR_WIDTH - 1 : 0] pc_dec_out,
	output reg rdy_dec_out,

	input wire refresh_rob_cdb_in
);
	reg [`INST_WIDTH - 1 : 0] inst_queue [`IQ_SIZE - 1 : 0];
	reg [`ADDR_WIDTH - 1 : 0] pc [`IQ_SIZE - 1 : 0];
	reg [`IQ_WIDTH - 1 : 0] head, tail;

	wire [63:0] tmp1 = {inst_queue[0], inst_queue[1]};
	wire [63:0] tmp2 = {inst_queue[2], inst_queue[3]};
	wire [63:0] tmp3 = {inst_queue[4], inst_queue[5]};
	wire [63:0] tmp4 = {inst_queue[6], inst_queue[7]};

	always @(posedge clk_in) begin
		if (rst_in) begin
			head <= 0;
			tail <= 0;
			iq_full_if_out <= `FALSE;
		end
		else if (rdy_in && refresh_rob_cdb_in) begin
			head <= 0;
			tail <= 0;
			iq_full_if_out <= `FALSE;
		end
		else if (rdy_in) begin
			if (rdy_inst_if_in) begin
				inst_queue[tail] <= inst_if_in;
				pc[tail] <= pc_if_in;
				tail <= tail + 1;
			end

			if (head != tail && rdy_dispatch_dec_in) begin
				head <= head + 1;
			end
		end
	end

	always @(*) begin
		iq_full_if_out = head == tail + `IQ_WIDTH'd1;
		inst_dec_out = inst_queue[head];
		pc_dec_out = pc[head];
		rdy_dec_out = head != tail;
	end
endmodule