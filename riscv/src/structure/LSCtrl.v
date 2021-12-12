`include "define.vh"

module LSCtrl(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//LSBuffer
	input wire rdy_lsb_in,
	input wire [`OP_WIDTH - 1 : 0] opcode_lsb_in,
	input wire [`DATA_WIDTH - 1 : 0] vj_lsb_in, vk_lsb_in, imm_lsb_in,
	input wire [`ROB_WIDTH : 0] rob_id_lsb_in,
	output reg idle_lsb_out,

	//MemCtrl
	input wire [`DATA_WIDTH - 1 : 0] data_l_mc_in,
	input wire rdy_data_mc_in,
	output reg rdy_data_mc_out,
	output reg wr_mc_out,
	output reg [`ADDR_WIDTH - 1 : 0] addr_mc_out,
	output reg [2 : 0] len_mc_out,
	output reg [`DATA_WIDTH - 1 : 0] data_s_mc_out,

	//CDB
	output reg rdy_ls_cdb_out,
	output reg [`DATA_WIDTH - 1 : 0] result_ls_cdb_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_ls_cdb_out,
	
	input wire refresh_rob_cdb_in
);

	reg idle_out;
	reg wr;
	reg [`ADDR_WIDTH - 1 : 0] addr;
	reg [2 : 0] len;
	reg [`DATA_WIDTH - 1 : 0] data_s;
	reg [`ROB_WIDTH - 1 : 0] rob_id;

	always @(posedge clk_in) begin
		if (rst_in) begin
			idle_out <= `TRUE;
			rdy_ls_cdb_out <= `FALSE;
			rdy_data_mc_out <= `FALSE;
		end
		else if (rdy_in && refresh_rob_cdb_in) begin
			idle_out <= `TRUE;
			rdy_ls_cdb_out <= `FALSE;
			rdy_data_mc_out <= `FALSE;
		end
		else if (rdy_in) begin
			rdy_ls_cdb_out <= `FALSE;
			rdy_data_mc_out <= `FALSE;

			if (!idle_out) begin
				if (rdy_data_mc_in) begin
					idle_out <= `FALSE;
					rob_id_ls_cdb_out <= rob_id;
					//CDB
					if (opcode_lsb_in >= `LB && opcode_lsb_in <= `LHU) begin
						case (opcode_lsb_in)
							`LB: result_ls_cdb_out <= $signed(data_l_mc_in[7 : 0]);
							`LH: result_ls_cdb_out <= $signed(data_l_mc_in[15 : 0]);
							default: result_ls_cdb_out <= data_l_mc_in;
						endcase
					end
				end
			end
			else if (rdy_lsb_in) begin
				idle_out <= `FALSE;
				rdy_data_mc_out <= `TRUE;
				addr <= vj_lsb_in + imm_lsb_in;
				rob_id <= rob_id_lsb_in;
				case (opcode_lsb_in)
					`LB: begin
						wr <= `MEM_R;
						len <= 1;
					end
					`LH: begin
						wr <= `MEM_R;
						len <= 2;
					end
					`LW: begin
						wr <= `MEM_R;
						len <= 4;
					end
					`LBU: begin
						wr <= `MEM_R;
						len <= 1;
					end
					`LHU: begin
						wr <= `MEM_R;
						len <= 2;
					end
					`SB: begin
						wr <= `MEM_W;
						len <= 1;
						data_s <= vk_lsb_in;
					end
					`SH: begin
						wr <= `MEM_W;
						len <= 2;
						data_s <= vk_lsb_in;
					end
					`SW: begin
						wr <= `MEM_W;
						len <= 4;
						data_s <= vk_lsb_in;
					end
				endcase
			end
		end
	end

	always @(*) begin
		rdy_data_mc_out = ~idle_out;
		wr_mc_out = wr;
		addr_mc_out = addr;
		len_mc_out = len;
		data_s_mc_out = data_s;

		idle_lsb_out = idle_out;
	end
endmodule