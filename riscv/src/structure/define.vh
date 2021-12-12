`ifndef __STRUCTURE_DEFINE_VH__
`define __STRUCTURE_DEFINE_VH__

//constants
`define ZERO_WORD 32'b0
`define ZERO_BYTE 8'b0

`define MEM_W 1'b1
`define MEM_R 1'b0

`define TRUE 1'b1
`define FALSE 1'b0

//size parameter
`define ADDR_WIDTH 32
`define INST_WIDTH 32
`define DATA_WIDTH 32
`define MEM_WIDTH 8

`define REG_WIDTH 5
`define REG_SIZE 32
`define IQ_WIDTH 3
`define IQ_SIZE 8
`define RS_WIDTH 4
`define RS_SIZE 16
`define ROB_WIDTH 4
`define ROB_SIZE 16
`define LSB_WIDTH 4
`define LSB_SIZE 16

// nonsense
`define OP_WIDTH 7
`define OP_TYPE_WIDTH 3

//Basic Op Type
`define OP_NOP 0
`define OP_ARITH 1
`define OP_SAVE 2
`define OP_LOAD 3
`define OP_JUMP 4
`define OP_BRANCH 5

//OP List
//copied since the value of op is nonsense
`define NOP 7'b0000000

`define LUI 7'b0000001
`define AUIPC 7'b0000010

`define JAL 7'b0000011
`define JALR 7'b0000100

`define BEQ 7'b0000101
`define BNE 7'b0000110
`define BLT 7'b0000111
`define BGE 7'b0001000
`define BLTU 7'b0001001
`define BGEU 7'b0001010

`define LB 7'b0001011
`define LH 7'b0001100
`define LW 7'b0001101
`define LBU 7'b0001110
`define LHU 7'b0001111

`define SB 7'b0010000
`define SH 7'b0010001
`define SW 7'b0010010

`define ADDI 7'b0010011
`define SLTI 7'b0010100
`define SLTIU 7'b0010101
`define XORI 7'b0010110
`define ORI 7'b0010111
`define ANDI 7'b0011000
`define SLLI 7'b0011001
`define SRLI 7'b0011010
`define SRAI 7'b0011011

`define ADD 7'b0011100
`define SUB 7'b0011101
`define SLL 7'b0011110
`define SLT 7'b0011111
`define SLTU 7'b0100000
`define XOR 7'b0100001
`define SRL 7'b0100010
`define SRA 7'b0100011
`define OR 7'b0100100
`define AND 7'b0100101

`endif //__STRUCTURE_DEFINE_VH__
