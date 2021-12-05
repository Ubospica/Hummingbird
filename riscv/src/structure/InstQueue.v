`include "define.vh"

module InstQueue(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	
	//from / to IF
	input wire [31 : 0] inst_if_in,
	input wire inst_rdy_if_in,
	output reg iqfull_if_out,

	//Decoder
	output reg [31 : 0] inst_dec_out,
	output reg rdy_dec_out,
	//RS, ROB
	input wire rs_full_rs_in, rob_full_rob_in
);
	reg [31 : 0] inst_queue [`IQ_SIZE - 1 : 0];
	reg [`IQ_WIDTH - 1 : 0] head, tail;

	// wire [63:0] tmp1 = {inst_queue[0], inst_queue[1]};
	// wire [63:0] tmp2 = {inst_queue[2], inst_queue[3]};
	// wire [63:0] tmp3 = {inst_queue[4], inst_queue[5]};
	// wire [63:0] tmp4 = {inst_queue[6], inst_queue[7]};

	always @(posedge clk_in) begin
		if (rst_in) begin
			head <= 0;
			tail <= 0;
			iqfull_if_out <= `FALSE;
		end
		else if (rdy_in) begin
			if (inst_rdy_if_in) begin
				inst_queue[tail] <= inst_if_in;
				tail <= tail + 1;
			end

			if (head != tail && !rs_full_rs_in && !rob_full_rob_in) begin
				rdy_dec_out <= `TRUE;
				inst_dec_out <= inst_queue[head];
				head <= head + 1;
			end
			else begin
				rdy_dec_out = `FALSE;
			end
		end
	end

	always @(*) begin
		iqfull_if_out = head == tail + `IQ_WIDTH'd1;
	end
endmodule