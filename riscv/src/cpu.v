// RISCV32I CPU top module
// port modification allowed for debugging purposes

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

	//if & mc
	wire [31 : 0] inst_addr_if_mc;
	wire stall_inst_if_mc;
	wire [31 : 0] inst_mc_if;
	wire inst_rdy_mc_if;

	//if & iq
	wire [31 : 0] inst_if_iq;
	wire inst_rdy_if_iq;
	wire iqfull_iq_if;

	
	output reg [31 : 0] inst_iq_dec;
	output reg rdy_iq_dec;

	//RS, ROB
	input wire rs_full_rs_iq, rob_full_rob_iq;
	

	wire rdy_dec_dp;
	wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dec_dp;
	wire [`OP_WIDTH - 1 : 0] opcode_dec_dp;
	wire [`REG_WIDTH - 1 : 0] rs1_dec_dp, rs2_dec_dp, rd_dec_dp;
	wire [31 : 0] imm_dec_dp;

	wire rdy_dp_rs;
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

	wire [`ROB_WIDTH - 1 : 0] robid_rob_dp;
	wire rdy_dp_rob;
	wire [`OP_TYPE_WIDTH - 1 : 0] op_type_dp_rob;
	wire [31 : 0] dest_dp_rob;
	wire rs1_rdy_rob_dp, rs2_rdy_rob_dp;
	wire [31 : 0] rs1_val_rob_dp, rs2_val_rob_dp;
	wire [`ROB_WIDTH - 1 : 0] rs1_rob_dp_rob, rs2_rob_dp_rob;

	wire rdy_commit_rob_reg;
	wire [`REG_WIDTH - 1 : 0] dest_rob_reg;
	wire [`DATA_WIDTH - 1 : 0] value_rob_reg;
	wire [`ROB_WIDTH - 1 : 0] rob_id_rob_reg;

	wire idle_alu_rs;
	wire rdy_rs_alu;
	wire [`OP_WIDTH - 1 : 0] opcode_rs_alu;
	wire [`DATA_WIDTH - 1 : 0] vj_rs_alu, vk_rs_alu, imm_rs_alu;
	wire [`ROB_WIDTH - 1 : 0] rob_id_rs_alu;

	wire rdy_alu_rs, 
	wire [`DATA_WIDTH - 1 : 0] result_alu_rs;
	wire [`ROB_WIDTH - 1 : 0] rob_id_alu_rs

	wire rdy_alu_rob;
	wire [`DATA_WIDTH - 1 : 0] result_alu_rob;
	wire [`ROB_WIDTH - 1 : 0] rob_id_alu_rob;


	MemCtrl MemCtrl(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.mem_din(mem_din),
		.mem_a(mem_a),
		.mem_wr(mem_wr),
		.inst_addr_if_in(inst_addr_if_mc),
		.stall_inst_if_in(stall_inst_if_mc),
		.inst_if_out(inst_mc_if),
		.inst_rdy_if_out(inst_rdy_mc_if)
	);

	IF IF(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.inst_addr_mc_out(inst_addr_if_mc),
		.inst_rdy_mc_in(inst_rdy_mc_if),
		.inst_mc_in(inst_mc_if),
		.stall_inst_mc_out(stall_inst_if_mc),
		.inst_iq_out(inst_if_iq),
		.inst_rdy_iq_out(inst_rdy_if_iq),
		.iqfull_iq_in(iqfull_iq_if)
	);

	InstQueue InstQueue(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.inst_if_in(inst_if_iq),
		.inst_rdy_if_in(inst_rdy_if_iq),
		.iqfull_if_out(iqfull_iq_if),
		.inst_dec_out(inst_iq_dec),
		.rdy_dec_out(rdy_iq_dec),
		.rs_full_rs_in(rs_full_rs_iq), 
		.rob_full_rob_in(rob_full_rob_iq)
	);

	Dispatcher Dispatcher(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.rdy_dec_in(rdy_dec_dp),
		.op_type_dec_in(op_type_dec_dp),
		.opcode_dec_in(opcode_dec_dp),
		.rs1_dec_in(rs1_dec_dp), .rs2_dec_in(rs2_dec_dp), .rd_dec_in(rd_dec_dp),
		.imm_dec_in(imm_dec_dp),
		.rdy_rs_out(rdy_dp_rs),
		.opcode_rs_out(opcode_dp_rs),
		.qj_rs_out(qj_dp_rs), .qk_rs_out(qk_dp_rs),
		.vj_rs_out(vj_dp_rs), .vk_rs_out(vk_dp_rs),
		.A_rs_out(A_dp_rs),
		.rob_id_rs_out(rob_id_dp_rs),
		.rs1_busy_rf_in(rs1_busy_rf_dp), .rs2_busy_rf_in(rs2_busy_rf_dp),
		.rs1_val_rf_in(rs1_val_rf_dp), .rs2_val_rf_in(rs2_val_rf_dp),
		.rs1_rob_rf_in(rs1_rob_rf_dp), .rs2_rob_rf_in(rs2_rob_rf_dp),
		.rdy_rf_out(rdy_dp_rf),
		.rs1_rf_out(rs1_dp_rf), .rs2_rf_out(rs2_dp_rf), .rd_rf_out(rd_dp_rf),
		.rd_rob_rf_out(rd_rob_dp_rf),
		.robid_rob_in(robid_rob_dp),
		.rdy_rob_out(rdy_dp_rob),
		.op_type_rob_out(op_type_dp_rob),
		.dest_rob_out(dest_dp_rob),
		.rs1_rdy_rob_in(rs1_rdy_rob_dp), .rs2_rdy_rob_in(rs2_rdy_rob_dp),
		.rs1_val_rob_in(rs1_val_rob_dp), .rs2_val_rob_in(rs2_val_rob_dp),
		.rs1_rob_rob_out(rs1_rob_dp_rob), .rs2_rob_rob_out(rs2_rob_dp_rob)
	);

	Decoder Decoder(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.inst_iq_in(inst_iq_dec),
		.rdy_iq_in(rdy_iq_dec),
		.rdy_dp_out(rdy_dec_dp),
		.op_type_dp_out(op_type_dec_dp),
		.opcode_dp_out(opcode_dec_dp),
		.rs1_dp_out(rs1_dec_dp), .rs2_dp_out(rs2_dec_dp), .rd_dp_out(rd_dec_dp),
		.imm_dp_out(imm_dec_dp)
	);

	RegFile RegFile(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.rdy_dp_in(rdy_dp_reg),
		.rs1_dp_in(rs1_dp_reg), .rs2_dp_in(rs2_dp_reg), .rd_dp_in(rd_dp_reg),
		.rd_rob_dp_in(rd_rob_dp_reg),
		.rs1_busy_dp_out(rs1_busy_reg_dp), .rs2_busy_dp_out(rs2_busy_reg_dp),
		.rs1_val_dp_out(rs1_val_reg_dp), .rs2_val_dp_out(rs2_val_reg_dp),
		.rs1_rob_dp_out(rs1_rob_reg_dp), .rs2_rob_dp_out(rs2_rob_reg_dp),
		.rdy_commit_rob_in(rdy_commit_rob_reg),
		.dest_rob_in(dest_rob_reg),
		.value_rob_in(value_rob_reg),
		.rob_id_rob_in(rob_id_rob_reg)
	);

	RS RS(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		
		.rdy_dp_in(rdy_dp_rs),
		.opcode_dp_in(opcode_dp_rs),
		.qj_dp_in(qj_dp_rs), .qk_dp_in(qk_dp_rs),
		.vj_dp_in(vj_dp_rs), .vk_dp_in(vk_dp_rs),
		.A_dp_in(A_dp_rs),
		.rob_id_dp_in(rob_id_dp_rs),
		.rsfull_dp_out(rsfull_rs_dp),

		.idle_alu_in(idle_alu_rs),
		.rdy_alu_out(rdy_rs_alu),
		.opcode_alu_out(opcode_rs_alu),
		.vj_alu_out(vj_rs_alu), .vk_alu_out(vk_rs_alu), .imm_alu_out(imm_rs_alu),
		.rob_id_alu_out(rob_id_rs_alu),

		.rdy_alu_in(rdy_alu_rs),
		.result_alu_in(result_alu_rs),
		.rob_id_alu_in(rob_id_alu_rs)
	);

	ALU ALU(
		.clk_in(clk_in),
		.rst_in(rst_in),
		.rdy_in(rdy_in),
		.rdy_rs_in(rdy_rs_alu),
		.opcode_rs_in(opcode_rs_alu),
		.vj_rs_in(vj_rs_alu), .vk_rs_in(vk_rs_alu), .imm_rs_in(imm_rs_alu),
		.rob_id_rs_in(rob_id_rs_alu),
		.idle_rs_out(idle_alu_rs),
		.rdy_rs_out(rdy_alu_rs),
		.result_rs_out(result_alu_rs),
		.rob_id_rs_out(rob_id_alu_rs),
		.rdy_rob_out(rdy_alu_rob),
		.result_rob_out(result_alu_rob),
		.rob_id_rob_out(rob_id_alu_rob),
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
		.rdy_alu_in(rdy_alu_rob),
		.result_alu_in(result_alu_rob),
		.rob_id_alu_in(rob_id_alu_rob),
		.rdy_commit_reg_out(rdy_commit_rob_reg),
		.dest_reg_out(dest_rob_reg),
		.value_reg_out(value_rob_reg),
		.rob_id_reg_out(rob_id_rob_reg)
	);


endmodule