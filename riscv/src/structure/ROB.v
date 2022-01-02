`timescale 1ns/1ps

`include "define.vh"

module ROB(
	input wire clk_in,
	input wire rst_in,
	input wire rdy_in,
	
	//Dispatcher
	input wire rdy_dp_in,
	input wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dp_in,
	input wire [`ADDR_WIDTH - 1 : 0] dest_dp_in,
	output reg rob_full_dp_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_dp_out,
	
	input wire [`ROB_WIDTH - 1 : 0] rs1_rob_dp_in, rs2_rob_dp_in,
	output reg rs1_rdy_dp_out, rs2_rdy_dp_out,
	output reg [`DATA_WIDTH - 1 : 0] rs1_val_dp_out, rs2_val_dp_out,
	
`ifdef DEBUG
	input wire [`ADDR_WIDTH - 1 : 0] pc_dp_in,
`endif

	//RegFile
	output reg rdy_commit_rf_out,
	output reg [`REG_WIDTH - 1 : 0] dest_rf_out,
	output reg [`DATA_WIDTH - 1 : 0] value_rf_out,
	output reg [`ROB_WIDTH - 1 : 0] rob_id_rf_out,

	//LSB
	output reg [`ROB_WIDTH - 1 : 0] head_id_lsb_out,

	//CDB
	input wire rdy_a_cdb_in,
	input wire [`DATA_WIDTH - 1 : 0] result_a_cdb_in,
	input wire [`ADDR_WIDTH - 1 : 0] new_pc_a_cdb_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_a_cdb_in,
	
	input wire rdy_ls_cdb_in, 
	input wire [`DATA_WIDTH - 1 : 0] result_ls_cdb_in,
	input wire [`ROB_WIDTH - 1 : 0] rob_id_ls_cdb_in,

	output reg refresh_rob_cdb_out,
	output reg [`ADDR_WIDTH - 1 : 0] new_pc_if_out
);

	reg [`OP_TYPE_WIDTH - 1 : 0] op_type [`ROB_SIZE - 1 : 0];
	reg [`ADDR_WIDTH - 1 : 0] dest [`ROB_SIZE - 1 : 0];
	reg [`ADDR_WIDTH - 1 : 0] pc [`ROB_SIZE - 1 : 0];
	reg [`DATA_WIDTH - 1 : 0] value [`ROB_SIZE - 1 : 0];
`ifdef DEBUG
	reg [`ADDR_WIDTH - 1 : 0] pc_in [`ROB_SIZE - 1 : 0];
`endif	
	reg rdy [`ROB_SIZE - 1 : 0];
	reg [`ROB_WIDTH - 1 : 0] head, tail;
	reg [`ROB_WIDTH : 0] rob_cnt;

	reg refresh_rob;

	integer i;

	always @(posedge clk_in) begin
		if (rst_in) begin
			head <= 1;
			tail <= 1;
			rdy_commit_rf_out <= `FALSE;
			rob_cnt <= 0;
			refresh_rob <= `FALSE;
			for (i = 0; i < `ROB_SIZE; i = i + 1) begin
				rdy[i] = `FALSE;
			end
		end
		else if (!rdy_in) begin
//            rdy_commit_rf_out <= `FALSE;
		end
		else if (refresh_rob) begin
			head <= 1;
			tail <= 1;
			rdy_commit_rf_out <= `FALSE;
			rob_cnt <= 0;
			refresh_rob <= `FALSE;
			for (i = 0; i < `ROB_SIZE; i = i + 1) begin
				rdy[i] = `FALSE;
			end
		end
		else begin
			if (rdy_dp_in) begin
`ifdef DEBUG
				pc_in[tail] <= pc_dp_in;
`endif	
				op_type[tail] <= op_type_dp_in;
				dest[tail] <= dest_dp_in;
				rdy[tail] <= `FALSE;
				tail <= (tail == `ROB_SIZE - 1) ? 1 : tail + 1;
				rob_cnt <= rob_cnt + 1;
			end
			
			if (rdy_a_cdb_in) begin
                value[rob_id_a_cdb_in] <= result_a_cdb_in;
                pc[rob_id_a_cdb_in] <= new_pc_a_cdb_in;
                rdy[rob_id_a_cdb_in] <= `TRUE;
            end
			
			if (rdy_ls_cdb_in) begin
                if(op_type[rob_id_ls_cdb_in] == `OP_LOAD)
                    value[rob_id_ls_cdb_in] <= result_ls_cdb_in;
		      	rdy[rob_id_ls_cdb_in] <= `TRUE;
            end
            
			//commit
			rdy_commit_rf_out <= `FALSE;
			if (rob_cnt != 0 && rdy[head] == `TRUE) begin
				// write to reg file
`ifdef DEBUG
				$display("commit rob=%d type=%d pc=%x tm=%t", head, op_type[head], pc_in[head], $realtime);
`endif
				if ((op_type[head] == `OP_JUMP || op_type[head] == `OP_ARITH ||
					op_type[head] == `OP_LOAD) && dest[head]) begin
`ifdef DEBUG
					$display("write rd value=%d dest=%d", value[head], dest[head]);
`endif
					rdy_commit_rf_out <= `TRUE;
					dest_rf_out <= dest[head];
					value_rf_out <= value[head];
					rob_id_rf_out <= head;
				end

				// jump
				if (op_type[head] == `OP_JUMP || 
					(op_type[head] == `OP_BRANCH && value[head] == 1)) begin
`ifdef DEBUG
					$display("jmp pc=%x", pc[head]);
`endif
					refresh_rob <= `TRUE;
					new_pc_if_out <= pc[head];
				end

				// bug: should not clear cz may be used by rs1/rs2_rdy_dp_out
				// rdy[head] <= `FALSE;
				head <= (head == `ROB_SIZE - 1) ? 1 : head + 1;
				rob_cnt <= rdy_dp_in ? rob_cnt : rob_cnt - 1;
			end
		end
	end


	always @(*) begin
		rob_full_dp_out = rob_cnt >= `ROB_SIZE - 3;
		rob_id_dp_out = tail;

		refresh_rob_cdb_out = refresh_rob;

		//send value to dispatcher
		rs1_rdy_dp_out = rdy[rs1_rob_dp_in];
		rs1_val_dp_out = value[rs1_rob_dp_in];
		rs2_rdy_dp_out = rdy[rs2_rob_dp_in];
		rs2_val_dp_out = value[rs2_rob_dp_in];

		head_id_lsb_out = head;
	end
endmodule