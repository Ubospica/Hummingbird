// RISCV32I CPU top module
// port modification allowed for debugging purposes
`include "define.vh"

module cpu(
	input  wire                 clk_in,			// system clock signal
	input  wire                 rst_in,			// reset signal
	input  wire	                rdy_in,			// ready signal, pause cpu when low

	input  wire [ 7:0]          mem_din,		// data input bus
	output wire [ 7:0]          mem_dout,		// data output bus
	output wire [31:0]          mem_a,			// address bus (only 17:0 is used)
	output wire                 mem_wr,			// write/read signal (1 for write)
	
	input  wire                 io_buffer_full, // 1 if uart buffer is full
	
	output wire [31:0]          dbgreg_dout		// cpu register output (debugging demo)
);

// implementation goes here

// Specifications:
// - Pause cpu(freeze pc, registers, etc.) when rdy_in is low
// - Memory read result will be returned in the next cycle. Write takes 1 cycle(no need to wait)
// - Memory is of size 128KB, with valid address ranging from 0x0 to 0x20000
// - I/O port is mapped to address higher than 0x30000 (mem_a[17:16]==2'b11)
// - 0x30000 read: read a byte from input
// - 0x30000 write: write a byte to output (write 0x00 is ignored)
// - 0x30004 read: read clocks passed since cpu starts (in dword, 4 bytes)
// - 0x30004 write: indicates program stop (will output '\0' through uart tx)

	// always @(posedge clk_in) begin
	// 	if (rst_in) begin
			
	// 	end
	// 	else if (!rdy_in) begin

	// 	end
	// 	else begin
		
	// 	end
	// end


	wire refresh_rob_cdb;
	wire rdy_a_cdb;
	wire [`DATA_WIDTH - 1 : 0] result_a_cdb;
	wire [`ADDR_WIDTH - 1 : 0] new_pc_a_cdb;
	wire [`ROB_WIDTH - 1 : 0] rob_id_a_cdb;
	wire rdy_ls_cdb;
	wire [`DATA_WIDTH - 1 : 0] result_ls_cdb;
	wire [`ROB_WIDTH - 1 : 0] rob_id_ls_cdb;

	wire rdy_inst_if_mc;
	wire [31 : 0] inst_addr_if_mc;
	wire [31 : 0] inst_mc_if;
	wire rdy_inst_mc_if;

	wire rdy_data_lsc_mc;
	wire wr_lsc_mc;
	wire [`ADDR_WIDTH - 1 : 0] addr_lsc_mc;
	wire [2 : 0] len_lsc_mc;
	wire [`DATA_WIDTH - 1 : 0] data_s_lsc_mc;
	wire [`DATA_WIDTH - 1 : 0] data_l_mc_lsc;
	wire rdy_data_mc_lsc;

	wire iqfull_iq_if;
	wire rdy_inst_if_iq;
	wire [31 : 0] inst_if_iq;
	wire [`ADDR_WIDTH - 1 : 0] pc_if_iq;

	wire [`ADDR_WIDTH - 1 : 0] new_pc_rob_if;

	wire rdy_dispatch_dec_iq;
	wire [31 : 0] inst_iq_dec;
	wire [`ADDR_WIDTH - 1 : 0] pc_iq_dec;
	wire rdy_iq_dec;

	wire rdy_dispatch_dp_dec;
	wire rdy_dec_dp;
	wire [`ADDR_WIDTH - 1 : 0] pc_dec_dp;
	wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dec_dp;
	wire [`OP_WIDTH - 1 : 0] opcode_dec_dp;
	wire [`REG_WIDTH - 1 : 0] rs1_dec_dp, rs2_dec_dp, rd_dec_dp;
	wire [31 : 0] imm_dec_dp;

	wire rs_full_rs_dp;
	wire rdy_dp_rs;
	wire [`ADDR_WIDTH - 1 : 0] pc_dp_rs;
	wire [`OP_WIDTH - 1 : 0] opcode_dp_rs;
	wire [`ROB_WIDTH - 1 : 0] qj_dp_rs, qk_dp_rs;
	wire [31 : 0] vj_dp_rs, vk_dp_rs;
	wire [31 : 0] A_dp_rs;
	wire [`ROB_WIDTH : 0] rob_id_dp_rs;

	wire rs1_busy_rf_dp, rs2_busy_rf_dp;
	wire [31 : 0] rs1_val_rf_dp, rs2_val_rf_dp;
	wire [`ROB_WIDTH - 1 : 0] rs1_rob_rf_dp, rs2_rob_rf_dp;
	wire rdy_dp_rf;
	wire [`REG_WIDTH - 1 : 0] rs1_dp_rf, rs2_dp_rf, rd_dp_rf;
	wire [`ROB_WIDTH - 1 : 0] rd_rob_dp_rf;

	wire rob_full_rob_dp;
	wire [`ROB_WIDTH - 1 : 0] rob_id_rob_dp;
	wire rdy_dp_rob;
	wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dp_rob;
	wire [31 : 0] dest_dp_rob;
	wire rs1_rdy_rob_dp, rs2_rdy_rob_dp;
	wire [31 : 0] rs1_val_rob_dp, rs2_val_rob_dp;
	wire [`ROB_WIDTH - 1 : 0] rs1_rob_dp_rob, rs2_rob_dp_rob;

	wire lsb_full_lsb_dp;
	wire rdy_dp_lsb;
	wire [`OP_WIDTH - 1 : 0] opcode_dp_lsb;
	wire [`ROB_WIDTH - 1 : 0] qj_dp_lsb, qk_dp_lsb;
	wire [31 : 0] vj_dp_lsb, vk_dp_lsb;
	wire [31 : 0] A_dp_lsb;
	wire [`ROB_WIDTH : 0] rob_id_dp_lsb;

	wire rdy_commit_rob_rf;
	wire [`REG_WIDTH - 1 : 0] dest_rob_rf;
	wire [`DATA_WIDTH - 1 : 0] value_rob_rf;
	wire [`ROB_WIDTH - 1 : 0] rob_id_rob_rf;

	
	wire [`ROB_WIDTH - 1 : 0] head_id_rob_lsb;

	wire idle_alu_rs;
	wire rdy_rs_alu;
	wire [`OP_WIDTH - 1 : 0] opcode_rs_alu;
	wire [`ADDR_WIDTH - 1 : 0] pc_rs_alu;
	wire [`DATA_WIDTH - 1 : 0] vj_rs_alu, vk_rs_alu, imm_rs_alu;
	wire [`ROB_WIDTH - 1 : 0] rob_id_rs_alu;

	wire rdy_lsb_lsc;
	wire [`OP_WIDTH - 1 : 0] opcode_lsb_lsc;
	wire [`DATA_WIDTH - 1 : 0] vj_lsb_lsc, vk_lsb_lsc, imm_lsb_lsc;
	wire [`ROB_WIDTH : 0] rob_id_lsb_lsc;
	wire idle_lsc_lsb;

	MemCtrl MemCtrl(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),

		.mem_din(mem_din),
		.mem_dout(mem_dout),
		.mem_a(mem_a),
		.mem_wr(mem_wr),

		//from / to IF
		.rdy_inst_if_in(rdy_inst_if_mc),
		.inst_addr_if_in(inst_addr_if_mc),
		.inst_if_out(inst_mc_if),
		.rdy_inst_if_out(rdy_inst_mc_if),

		//from / to LSCtrl
		.rdy_data_lsc_in(rdy_data_lsc_mc),
		.wr_lsc_in(wr_lsc_mc),
		.addr_lsc_in(addr_lsc_mc),
		.len_lsc_in(len_lsc_mc),
		.data_s_lsc_in(data_s_lsc_mc),
		.data_l_lsc_out(data_l_mc_lsc),
		.rdy_data_lsc_out(rdy_data_mc_lsc),
		
		.refresh_rob_cdb_in(refresh_rob_cdb)
	);

	IF IF(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//from / to MemCtrl
		.rdy_inst_mc_in(rdy_inst_mc_if),
		.inst_mc_in(inst_mc_if),
		.inst_addr_mc_out(inst_addr_if_mc),
		.rdy_inst_mc_out(rdy_inst_if_mc),

		//from / to InstQueue
		.iqfull_iq_in(iqfull_iq_if),
		.rdy_inst_iq_out(rdy_inst_if_iq),
		.inst_iq_out(inst_if_iq),
		.pc_iq_out(pc_if_iq),

		//ROB
		.refresh_rob_cdb_in(refresh_rob_cdb),
		.new_pc_rob_in(new_pc_rob_if)
	);

	InstQueue InstQueue(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//from / to IF
		.inst_if_in(inst_if_iq),
		.rdy_inst_if_in(rdy_inst_if_iq),
		.pc_if_in(pc_if_iq),
		.iqfull_if_out(iqfull_iq_if),

		//Decoder
		.rdy_dispatch_dec_in(rdy_dispatch_dec_iq), 
		.inst_dec_out(inst_iq_dec),
		.pc_dec_out(pc_iq_dec),
		.rdy_dec_out(rdy_iq_dec),

		.refresh_rob_cdb_in(refresh_rob_cdb)
	);

	Decoder Decoder(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//InstQueue
		.inst_iq_in(inst_iq_dec),
		.pc_iq_in(pc_iq_dec),
		.rdy_iq_in(rdy_iq_dec),
		.rdy_dispatch_iq_out(rdy_dispatch_dec_iq),

		//Dispatcher
		.rdy_dispatch_dp_in(rdy_dispatch_dp_dec),
		.rdy_dp_out(rdy_dec_dp),
		.pc_dp_out(pc_dec_dp),
		.op_type_dp_out(op_type_dec_dp),
		.opcode_dp_out(opcode_dec_dp),
		.rs1_dp_out(rs1_dec_dp), .rs2_dp_out(rs2_dec_dp), .rd_dp_out(rd_dec_dp),
		.imm_dp_out(imm_dec_dp)
	);

	Dispatcher Dispatcher(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//Decoder
		.rdy_dec_in(rdy_dec_dp),
		.pc_dec_in(pc_dec_dp),
		.op_type_dec_in(op_type_dec_dp),
		.opcode_dec_in(opcode_dec_dp),
		.rs1_dec_in(rs1_dec_dp), .rs2_dec_in(rs2_dec_dp), .rd_dec_in(rd_dec_dp),
		.imm_dec_in(imm_dec_dp),

		//RS
		.rs_full_rs_in(rs_full_rs_dp),
		.rdy_rs_out(rdy_dp_rs),
		.pc_rs_out(pc_dp_rs),
		.opcode_rs_out(opcode_dp_rs),
		.qj_rs_out(qj_dp_rs), .qk_rs_out(qk_dp_rs),
		.vj_rs_out(vj_dp_rs), .vk_rs_out(vk_dp_rs),
		.A_rs_out(A_dp_rs),
		.rob_id_rs_out(rob_id_dp_rs),

		//RegFile
		.rs1_busy_rf_in(rs1_busy_rf_dp), .rs2_busy_rf_in(rs2_busy_rf_dp),
		.rs1_val_rf_in(rs1_val_rf_dp), .rs2_val_rf_in(rs2_val_rf_dp),
		.rs1_rob_rf_in(rs1_rob_rf_dp), .rs2_rob_rf_in(rs2_rob_rf_dp),
		.rdy_rf_out(rdy_dp_rf),
		.rs1_rf_out(rs1_dp_rf), .rs2_rf_out(rs2_dp_rf), .rd_rf_out(rd_dp_rf),
		.rd_rob_rf_out(rd_rob_dp_rf),

		//ROB
		.rob_full_rob_in(rob_full_rob_dp),
		.rob_id_rob_in(rob_id_rob_dp),
		.rdy_rob_out(rdy_dp_rob),
		.op_type_rob_out(op_type_dp_rob),
		.dest_rob_out(dest_dp_rob),
		// get ready value of rs1 or rs2 from rob
		.rs1_rdy_rob_in(rs1_rdy_rob_dp), .rs2_rdy_rob_in(rs2_rdy_rob_dp),
		.rs1_val_rob_in(rs1_val_rob_dp), .rs2_val_rob_in(rs2_val_rob_dp),
		.rs1_rob_rob_out(rs1_rob_dp_rob), .rs2_rob_rob_out(rs2_rob_dp_rob),

		//LSB	
		.lsb_full_lsb_in(lsb_full_lsb_dp),
		.rdy_lsb_out(rdy_dp_lsb),
		.opcode_lsb_out(opcode_dp_lsb),
		.qj_lsb_out(qj_dp_lsb), .qk_lsb_out(qk_dp_lsb),
		.vj_lsb_out(vj_dp_lsb), .vk_lsb_out(vk_dp_lsb),
		.A_lsb_out(A_dp_lsb),
		.rob_id_lsb_out(rob_id_dp_lsb)
	);

	RegFile RegFile(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//Dispatcher
		.rdy_dp_in(rdy_dp_rf),
		.rs1_dp_in(rs1_dp_rf), .rs2_dp_in(rs2_dp_rf), .rd_dp_in(rd_dp_rf),
		.rd_rob_dp_in(rd_rob_dp_rf),
		.rs1_busy_dp_out(rs1_busy_rf_dp), .rs2_busy_dp_out(rs2_busy_rf_dp),
		.rs1_val_dp_out(rs1_val_rf_dp), .rs2_val_dp_out(rs2_val_rf_dp),
		.rs1_rob_dp_out(rs1_rob_rf_dp), .rs2_rob_dp_out(rs2_rob_rf_dp),

		//ROB
		.rdy_commit_rob_in(rdy_commit_rob_rf),
		.dest_rob_in(dest_rob_rf),
		.value_rob_in(value_rob_rf),
		.rob_id_rob_in(rob_id_rob_rf),

		.refresh_rob_cdb_in(refresh_rob_cdb)
	);

	RS RS(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//Dispatcher
		.rdy_dp_in(rdy_dp_rs),
		.pc_dp_in(pc_dp_rs),
		.opcode_dp_in(opcode_dp_rs),
		.qj_dp_in(qj_dp_rs), .qk_dp_in(qk_dp_rs),
		.vj_dp_in(vj_dp_rs), .vk_dp_in(vk_dp_rs),
		.A_dp_in(A_dp_rs),
		.rob_id_dp_in(rob_id_dp_rs),
		.rsfull_dp_out(rsfull_rs_dp),

		//ALU
		.idle_alu_in(idle_alu_rs),
		.rdy_alu_out(rdy_rs_alu),
		.opcode_alu_out(opcode_rs_alu),
		.pc_alu_out(pc_rs_alu),
		.vj_alu_out(vj_rs_alu), .vk_alu_out(vk_rs_alu), .imm_alu_out(imm_rs_alu),
		.rob_id_alu_out(rob_id_rs_alu),

		.rdy_a_cdb_in(rdy_a_cdb),
		.result_a_cdb_in(result_a_cdb),
		.rob_id_a_cdb_in(rob_id_a_cdb),
		
		.rdy_ls_cdb_in(rdy_ls_cdb),
		.result_ls_cdb_in(result_ls_cdb),
		.rob_id_ls_cdb_in(rob_id_ls_cdb),
		
		.refresh_rob_cdb_in(refresh_rob_cdb)
	);

	ALU ALU(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//RS
		.rdy_rs_in(rdy_rs_alu),
		.pc_rs_in(pc_rs_alu),
		.opcode_rs_in(opcode_rs_alu),
		.vj_rs_in(vj_rs_alu), .vk_rs_in(vk_rs_alu), .imm_rs_in(imm_rs_alu),
		.rob_id_rs_in(rob_id_rs_alu),
		.idle_rs_out(idle_alu_rs),

		//CDB
		.rdy_a_cdb_out(rdy_a_cdb),
		.result_a_cdb_out(result_a_cdb),
		.new_pc_a_cdb_out(new_pc_a_cdb),
		.rob_id_a_cdb_out(rob_id_a_cdb)
	);

	ROB ROB(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		
		.rdy_dp_in(rdy_dp_rob),
		.op_type_dp_in(op_type_dp_rob),
		.dest_dp_in(dest_dp_rob),
		.rob_full_dp_out(rob_full_rob_dp),
		.rob_id_dp_out(rob_id_rob_dp),
		
		.rs1_rob_dp_in(rs1_rob_dp_rob), .rs2_rob_dp_in(rs2_rob_dp_rob),
		.rs1_rdy_dp_out(rs1_rdy_rob_dp), .rs2_rdy_dp_out(rs2_rdy_rob_dp),
		.rs1_val_dp_out(rs1_val_rob_dp), .rs2_val_dp_out(rs2_val_rob_dp),

		//RegFile
		.rdy_commit_rf_out(rdy_commit_rob_rf),
		.dest_rf_out(dest_rob_rf),
		.value_rf_out(value_rob_rf),
		.rob_id_rf_out(rob_id_rob_rf),

		//LSB
		.head_id_lsb_out(head_id_rob_lsb),

		//CDB
		.rdy_a_cdb_in(rdy_a_cdb),
		.result_a_cdb_in(result_a_cdb),
		.new_pc_a_cdb_in(new_pc_a_cdb),
		.rob_id_a_cdb_in(rob_id_a_cdb),
		
		.rdy_ls_cdb_in(rdy_ls_cdb), 
		.result_ls_cdb_in(result_ls_cdb),
		.rob_id_ls_cdb_in(rob_id_ls_cdb),

		.refresh_rob_cdb_out(refresh_rob_cdb),
		.new_pc_if_out(new_pc_rob_if)
	);

	LSCtrl LSCtrl(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//LSBuffer
		.rdy_lsb_in(rdy_lsb_lsc),
		.opcode_lsb_in(opcode_lsb_lsc),
		.vj_lsb_in(vj_lsb_lsc), .vk_lsb_in(vk_lsb_lsc), .imm_lsb_in(imm_lsb_lsc),
		.rob_id_lsb_in(rob_id_lsb_lsc),
		.idle_lsb_out(idle_lsc_lsb),

		//MemCtrl
		.data_l_mc_in(data_l_mc_lsc),
		.rdy_data_mc_in(rdy_data_mc_lsc),
		.rdy_data_mc_out(rdy_data_lsc_mc),
		.wr_mc_out(wr_lsc_mc),
		.addr_mc_out(addr_lsc_mc),
		.len_mc_out(len_lsc_mc),
		.data_s_mc_out(data_s_lsc_mc),

		//CDB
		.rdy_ls_cdb_out(rdy_ls_cdb),
		.result_ls_cdb_out(result_ls_cdb),
		.rob_id_ls_cdb_out(rob_id_ls_cdb),
		
		.refresh_rob_cdb_in(refresh_rob_cdb)
	);

	LSBuffer LSBuffer(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		//Dispatcher
		.rdy_dp_in(rdy_dp_lsb),
		.opcode_dp_in(opcode_dp_lsb),
		.qj_dp_in(qj_dp_lsb), .qk_dp_in(qk_dp_lsb),
		.vj_dp_in(vj_dp_lsb), .vk_dp_in(vk_dp_lsb),
		.A_dp_in(A_dp_lsb),
		.rob_id_dp_in(rob_id_dp_lsb),
		.lsb_full_dp_out(lsb_full_lsb_dp),
		
		//ROB
		.head_id_rob_in(head_id_rob_lsb),

		//LSCtrl
		.idle_lsc_in(idle_lsc_lsb),
		.rdy_lsc_out(rdy_lsb_lsc),
		.opcode_lsc_out(opcode_lsb_lsc),
		.vj_lsc_out(vj_lsb_lsc), .vk_lsc_out(vk_lsb_lsc), .imm_lsc_out(imm_lsb_lsc),
		.rob_id_lsc_out(rob_id_lsb_lsc),
		
		.rdy_a_cdb_in(rdy_a_cdb), 
		.result_a_cdb_in(result_a_cdb),
		.rob_id_a_cdb_in(rob_id_a_cdb),
		
		.rdy_ls_cdb_in(rdy_ls_cdb), 
		.result_ls_cdb_in(result_ls_cdb),
		.rob_id_ls_cdb_in(rob_id_ls_cdb),
		
		.refresh_rob_cdb_in(refresh_rob_cdb)
	);

endmodule