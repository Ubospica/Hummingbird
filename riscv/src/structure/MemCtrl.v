`timescale 1ns/1ps

`include "define.vh"

module MemCtrl(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,

	input wire [7 : 0] mem_din,
	output reg [7 : 0] mem_dout,
	output reg [31 : 0] mem_a,
	output reg mem_wr,

	//IC
	input wire rdy_inst_ic_in,
	input wire [`INST_WIDTH - 1 : 0] inst_addr_ic_in,
	output reg [`INST_WIDTH - 1 : 0] inst_ic_out,
	output reg rdy_inst_ic_out,

	//from / to LSCtrl
	input wire rdy_data_lsc_in,
	input wire wr_lsc_in,
	input wire [`ADDR_WIDTH - 1 : 0] addr_lsc_in,
	input wire [2 : 0] len_lsc_in,
	input wire [`DATA_WIDTH - 1 : 0] data_s_lsc_in,
	output reg [`DATA_WIDTH - 1 : 0] data_l_lsc_out,
	output reg rdy_data_lsc_out,
	
	input wire refresh_rob_cdb_in
);

// status
`define IDLE 0
`define READ_INST 1
`define READ_DATA 2
`define WRITE_DATA 3

// stage
`define S0 3'd0
`define S1 3'd1
`define S2 3'd2
`define S3 3'd3
`define S4 3'd4
`define S5 3'd5
`define S6 3'd6

	reg [1 : 0] status;
	// only meaningful when status != `IDLE
	reg [2 : 0] stage, end_stage;
	reg [7 : 0] read_buf[3 : 0];
`ifdef DEBUG
	wire [31 : 0] tmp1 = {read_buf[3], read_buf[2], read_buf[1], read_buf[0]};
`endif
	integer i;

	always @(posedge clk_in) begin
		if (rst_in) begin
			status <= `IDLE;
			stage <= `S0;
			for (i = 0; i <= 3; i = i + 1) begin
				read_buf[i] <= 0;
			end
			rdy_inst_ic_out <= `FALSE;
			rdy_data_lsc_out <= `FALSE;
		end
		else if (!rdy_in) begin
//            rdy_inst_ic_out <= `FALSE;
//            rdy_data_lsc_out <= `FALSE;
		end
		else if (refresh_rob_cdb_in) begin
			status <= `IDLE;
			stage <= `S0;
	 		for (i = 0; i <= 3; i = i + 1) begin
	 			read_buf[i] <= 0;
	 		end
			rdy_inst_ic_out <= `FALSE;
			rdy_data_lsc_out <= `FALSE;
		end
		else begin
			rdy_inst_ic_out <= `FALSE;
			rdy_data_lsc_out <= `FALSE;

			if (status == `IDLE || stage == end_stage) begin
				// start new status & stage
				status <= `IDLE;
				stage <= `S0;
				if (rdy_data_lsc_in) begin                 
					status <= wr_lsc_in == `MEM_R ? `READ_DATA : `WRITE_DATA;
					end_stage <= `S0 + len_lsc_in + 2;
				end
				else if (rdy_inst_ic_in) begin
					status <= `READ_INST;
					end_stage <= `S6;
				end
			end
			else if ((status == `READ_INST && !rdy_inst_ic_in) ||
				((status == `READ_DATA || status == `WRITE_DATA) && !rdy_data_lsc_in)) begin
				status <= `IDLE;
				stage <= `S0;
			end

			else if (stage == end_stage - 1) begin
				stage <= stage + 1;
			end

			else if (stage == end_stage - 2) begin
				stage <= stage + 1;
				// response
				if (status == `READ_INST) begin
					inst_ic_out <= {mem_din, read_buf[2], read_buf[1], read_buf[0]};
					rdy_inst_ic_out <= `TRUE;
				end
				else if (status == `READ_DATA) begin
					case (len_lsc_in)
						1: data_l_lsc_out <= {`ZERO_BYTE, `ZERO_BYTE, `ZERO_BYTE, mem_din};
						2: data_l_lsc_out <= {`ZERO_BYTE, `ZERO_BYTE, mem_din, read_buf[0]};
						4: data_l_lsc_out <= {mem_din, read_buf[2], read_buf[1], read_buf[0]};
					endcase
					rdy_data_lsc_out <= `TRUE;
				end
				else if (status == `WRITE_DATA) begin
					rdy_data_lsc_out <= `TRUE;
				end
			end

			else begin
				stage <= stage + 1;
				if (status == `READ_DATA || status == `READ_INST) begin
					read_buf[stage - 1] <= mem_din;
				end
			end
		end
	end

	// mem output
	always @(*) begin
		// MEM_R as default don't modify memory status
		mem_wr = `MEM_R;
		mem_dout = `ZERO_BYTE;
		mem_a = `ZERO_WORD;
		if (status != `IDLE && stage <= end_stage - 3) begin
			case (status)
				`READ_INST: begin
					mem_a = inst_addr_ic_in + stage;
				end
				`READ_DATA: begin
					mem_a = addr_lsc_in + stage;
				end
				`WRITE_DATA: begin
					mem_a = addr_lsc_in + stage;
					mem_wr = `MEM_W;
					mem_dout = data_s_lsc_in[stage * 8 + 7 -: 8];
				end
			endcase
		end
	end
endmodule