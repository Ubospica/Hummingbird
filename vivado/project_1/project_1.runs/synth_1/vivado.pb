
v
Command: %s
53*	vivadotcl2E
1synth_design -top riscv_top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:01 ; elapsed = 00:00:02 . Memory (MB): peak = 1241.004 ; gain = 80.926 ; free physical = 131 ; free virtual = 5172
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
	riscv_top2default:default2
 2default:default2R
</home/ubospica/develop/cpu/Hummingbird/riscv/src/riscv_top.v2default:default2
42default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter SIM bound to: 0 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter UART_BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter RAM_ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
ram2default:default2
 2default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/ram.v2default:default2
32default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2(
single_port_ram_sync2default:default2
 2default:default2c
M/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/block_ram/block_ram.v2default:default2
622default:default8@Z8-6157h px? 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
single_port_ram_sync2default:default2
 2default:default2
12default:default2
12default:default2c
M/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/block_ram/block_ram.v2default:default2
622default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram2default:default2
 2default:default2
22default:default2
12default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/ram.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cpu2default:default2
 2default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/cpu.v2default:default2
72default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
MemCtrl2default:default2
 2default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/MemCtrl.v2default:default2
52default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/MemCtrl.v2default:default2
1152default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/MemCtrl.v2default:default2
1432default:default8@Z8-155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
read_buf_reg[3]2default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/MemCtrl.v2default:default2
622default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MemCtrl2default:default2
 2default:default2
32default:default2
12default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/MemCtrl.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ICache2default:default2
 2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ICache.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ICache2default:default2
 2default:default2
42default:default2
12default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ICache.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
IF2default:default2
 2default:default2U
?/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/IF.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IF2default:default2
 2default:default2
52default:default2
12default:default2U
?/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/IF.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	InstQueue2default:default2
 2default:default2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/InstQueue.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	InstQueue2default:default2
 2default:default2
62default:default2
12default:default2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/InstQueue.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Decoder2default:default2
 2default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
52default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
542default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
1082default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
1192default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
1292default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
1372default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
1502default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
902default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Decoder2default:default2
 2default:default2
72default:default2
12default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Decoder.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Dispatcher2default:default2
 2default:default2]
G/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Dispatcher.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Dispatcher2default:default2
 2default:default2
82default:default2
12default:default2]
G/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/Dispatcher.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RegFile2default:default2
 2default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/RegFile.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RegFile2default:default2
 2default:default2
92default:default2
12default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/RegFile.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
RS2default:default2
 2default:default2U
?/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/RS.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RS2default:default2
 2default:default2
102default:default2
12default:default2U
?/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/RS.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2V
@/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ALU.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
112default:default2
12default:default2V
@/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ALU.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ROB2default:default2
 2default:default2V
@/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ROB.v2default:default2
52default:default8@Z8-6157h px? 
?
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2
	value_reg2default:defaultZ8-4767h px? 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
? 
?
%s
*synth2?
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
2default:defaulth p
x
? 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
? 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
? 
U
%s
*synth2=
)RAM "value_reg" dissolved into registers
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ROB2default:default2
 2default:default2
122default:default2
12default:default2V
@/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ROB.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LSCtrl2default:default2
 2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSCtrl.v2default:default2
52default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSCtrl.v2default:default2
912default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LSCtrl2default:default2
 2default:default2
132default:default2
12default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSCtrl.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
LSBuffer2default:default2
 2default:default2[
E/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSBuffer.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LSBuffer2default:default2
 2default:default2
142default:default2
12default:default2[
E/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSBuffer.v2default:default2
52default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
dbgreg_dout2default:default2
cpu2default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/cpu.v2default:default2
192default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu2default:default2
 2default:default2
152default:default2
12default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/cpu.v2default:default2
72default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
hci2default:default2
 2default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/hci.v2default:default2
302default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter RAM_ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter OP_ECHO bound to: 8'b00000000 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter OP_CPU_REG_RD bound to: 8'b00000001 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter OP_CPU_REG_WR bound to: 8'b00000010 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter OP_DBG_BRK bound to: 8'b00000011 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter OP_DBG_RUN bound to: 8'b00000100 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter OP_IO_IN bound to: 8'b00000101 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter OP_QUERY_DBG_BRK bound to: 8'b00000111 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter OP_QUERY_ERR_CODE bound to: 8'b00001000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter OP_MEM_RD bound to: 8'b00001001 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter OP_MEM_WR bound to: 8'b00001010 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter OP_DISABLE bound to: 8'b00001011 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter DBG_UART_PARITY_ERR bound to: 0 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter DBG_UNKNOWN_OPCODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter S_DISABLED bound to: 5'b00000 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter S_DECODE bound to: 5'b00001 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter S_ECHO_STG_0 bound to: 5'b00010 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter S_ECHO_STG_1 bound to: 5'b00011 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter S_IO_IN_STG_0 bound to: 5'b00100 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter S_IO_IN_STG_1 bound to: 5'b00101 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter S_CPU_REG_RD_STG0 bound to: 5'b00110 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter S_CPU_REG_RD_STG1 bound to: 5'b00111 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter S_QUERY_ERR_CODE bound to: 5'b01000 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter S_MEM_RD_STG_0 bound to: 5'b01001 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter S_MEM_RD_STG_1 bound to: 5'b01010 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter S_MEM_WR_STG_0 bound to: 5'b01011 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter S_MEM_WR_STG_1 bound to: 5'b01100 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter S_DISABLE bound to: 5'b10000 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter IO_IN_BUF_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
fifo2default:default2
 2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/fifo/fifo.v2default:default2
272default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ADDR_BITS bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo2default:default2
 2default:default2
162default:default2
12default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/fifo/fifo.v2default:default2
272default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart2default:default2
 2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart.v2default:default2
282default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter STOP_BITS bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter PARITY_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2!
uart_baud_clk2default:default2
 2default:default2b
L/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_baud_clk.v2default:default2
292default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter BAUD bound to: 115200 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
? 
p
%s
*synth2X
D	Parameter CLKS_PER_OVERSAMPLE_TICK bound to: 16'b0000000000110110 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
uart_baud_clk2default:default2
 2default:default2
172default:default2
12default:default2b
L/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_baud_clk.v2default:default2
292default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_rx.v2default:default2
282default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter STOP_BITS bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter PARITY_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter STOP_OVERSAMPLE_TICKS bound to: 6'b010000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter S_IDLE bound to: 5'b00001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter S_START bound to: 5'b00010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter S_DATA bound to: 5'b00100 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter S_PARITY bound to: 5'b01000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter S_STOP bound to: 5'b10000 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_rx.v2default:default2
1012default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
182default:default2
12default:default2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_rx.v2default:default2
282default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_tx.v2default:default2
282default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter STOP_BITS bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter PARITY_MODE bound to: 1 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter STOP_OVERSAMPLE_TICKS bound to: 6'b010000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter S_IDLE bound to: 5'b00001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter S_START bound to: 5'b00010 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter S_DATA bound to: 5'b00100 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter S_PARITY bound to: 5'b01000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter S_STOP bound to: 5'b10000 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_tx.v2default:default2
1012default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
192default:default2
12default:default2\
F/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart_tx.v2default:default2
282default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
fifo__parameterized02default:default2
 2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/fifo/fifo.v2default:default2
272default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
fifo__parameterized02default:default2
 2default:default2
192default:default2
12default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/fifo/fifo.v2default:default2
272default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart2default:default2
 2default:default2
202default:default2
12default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/common/uart/uart.v2default:default2
282default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/hci.v2default:default2
2102default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/hci.v2default:default2
2462default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/hci.v2default:default2
2662default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/hci.v2default:default2
2812default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hci2default:default2
 2default:default2
212default:default2
12default:default2L
6/home/ubospica/develop/cpu/Hummingbird/riscv/src/hci.v2default:default2
302default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	riscv_top2default:default2
 2default:default2
222default:default2
12default:default2R
</home/ubospica/develop/cpu/Hummingbird/riscv/src/riscv_top.v2default:default2
42default:default8@Z8-6155h px? 
x
!design %s has unconnected port %s3331*oasys2
ALU2default:default2
clk_in2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2

Dispatcher2default:default2
clk_in2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
Decoder2default:default2
clk_in2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[31]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[30]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[29]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[28]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[27]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[26]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[25]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[24]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[23]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[22]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[21]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[20]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[19]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[18]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[17]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[16]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[15]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[14]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[13]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
cpu2default:default2"
dbgreg_dout[0]2default:defaultZ8-3331h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 1437.199 ; gain = 277.121 ; free physical = 207 ; free virtual = 5060
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 1437.199 ; gain = 277.121 ; free physical = 240 ; free virtual = 5090
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 1437.199 ; gain = 277.121 ; free physical = 240 ; free virtual = 5090
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/Basys-3-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/Basys-3-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2W
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/Basys-3-Master.xdc2default:default2/
.Xil/riscv_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:002default:default2
1786.4962default:default2
0.0002default:default2
1232default:default2
47892default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:19 ; elapsed = 00:00:29 . Memory (MB): peak = 1786.496 ; gain = 626.418 ; free physical = 252 ; free virtual = 4919
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:19 ; elapsed = 00:00:29 . Memory (MB): peak = 1786.496 ; gain = 626.418 ; free physical = 252 ; free virtual = 4919
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:29 . Memory (MB): peak = 1786.496 ; gain = 626.418 ; free physical = 254 ; free virtual = 4921
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2Z
D/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/MemCtrl.v2default:default2
1432default:default8@Z8-5818h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[2]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[1]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[0]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
rdy_inst_ic_out2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2"
data_l_lsc_out2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[2]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[1]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[0]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
rdy_inst_ic_out2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2"
data_l_lsc_out2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
mem_wr2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
status02default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
merging register '%s' into '%s'3619*oasys2'
rdy_inst_mc_out_reg2default:default2
is_busy_reg2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ICache.v2default:default2
482default:default8@Z8-4471h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
rdy_inst_mc_out_reg2default:default2Y
C/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ICache.v2default:default2
482default:default8@Z8-6014h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[511]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[510]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[509]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[508]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[507]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[506]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[505]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[504]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[503]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[502]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[501]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[500]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[499]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[498]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[497]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[496]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[495]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[494]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[493]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[492]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[491]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[490]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[489]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[488]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[487]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[486]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[485]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[484]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[483]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[482]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[481]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[480]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[479]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[478]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[477]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[476]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[475]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[474]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[473]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[472]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[471]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[470]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[469]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[468]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[467]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[466]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[465]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[464]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[463]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[462]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[461]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[460]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[459]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[458]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[457]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[456]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[455]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[454]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[453]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[452]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[451]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[450]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[449]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[448]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[447]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[446]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[445]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[444]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[443]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[442]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[441]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[440]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[439]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[438]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[437]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[436]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[435]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[434]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[433]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[432]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[431]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[430]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[429]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[428]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[427]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[426]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[425]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[424]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[423]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[422]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[421]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[420]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[419]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[418]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[417]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[416]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[415]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[414]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[413]2default:defaultZ8-5546h px? 
~
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2"
valid_reg[412]2default:defaultZ8-5546h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55462default:default2
1002default:defaultZ17-14h px? 
?
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2"
op_type_dp_out2default:defaultZ8-5587h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2U
?/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/RS.v2default:default2
1162default:default8@Z8-5818h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[15]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[14]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[13]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[12]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[11]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[10]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[9]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[8]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[7]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[6]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[5]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[4]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[3]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[2]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[1]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[0]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[15]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[14]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[13]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[12]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[11]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[10]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[9]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[8]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[7]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[6]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[5]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[4]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[3]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[2]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[1]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[0]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[15]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[14]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[13]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[12]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[11]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[10]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[9]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[8]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[7]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[6]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[5]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[4]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[3]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[2]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[1]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[0]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[15]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[14]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[13]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[12]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[11]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
busy_reg[10]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[9]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[8]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[7]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[6]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[5]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[4]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[3]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[2]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[1]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
busy_reg[0]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2V
@/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/ROB.v2default:default2
1132default:default8@Z8-5818h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rdy_reg[15]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rdy_reg[14]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rdy_reg[13]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rdy_reg[12]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rdy_reg[11]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
rdy_reg[10]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[9]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[8]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[7]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[6]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[5]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[4]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[3]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[2]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[1]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

rdy_reg[0]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
data_s2default:defaultZ8-5587h px? 
?
merging register '%s' into '%s'3619*oasys2#
rdy_lsc_out_reg2default:default2"
no_execute_reg2default:default2[
E/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSBuffer.v2default:default2
582default:default8@Z8-4471h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
rdy_lsc_out_reg2default:default2[
E/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSBuffer.v2default:default2
582default:default8@Z8-6014h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

qj_reg[15]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

qj_reg[14]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

qj_reg[13]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

qj_reg[12]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

qj_reg[11]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

qj_reg[10]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[9]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[8]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[7]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[6]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[5]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[4]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[3]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	qj_reg[2]2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55442default:default2
1002default:defaultZ17-14h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
head_reg_rep2default:default2[
E/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSBuffer.v2default:default2
562default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
head_reg_rep2default:default2[
E/home/ubospica/develop/cpu/Hummingbird/riscv/src/structure/LSBuffer.v2default:default2
562default:default8@Z8-6014h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
q_state_reg2default:default2
uart_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
q_state_reg2default:default2
uart_tx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
q_state_reg2default:default2
hci2default:defaultZ8-802h px? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
q_state_reg2default:default2 
fsm19217B8002default:defaultZ8-3898h px? 
?
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
q_state_reg2default:default2 
fsm1C3110D002default:defaultZ8-3898h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                S_DECODE |                             0000 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_            S_ECHO_STG_0 |                             0001 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_            S_ECHO_STG_1 |                             0010 |                            00011
2default:defaulth p
x
? 
?
%s
*synth2s
_           S_IO_IN_STG_0 |                             0011 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_           S_IO_IN_STG_1 |                             0100 |                            00101
2default:defaulth p
x
? 
?
%s
*synth2s
_        S_QUERY_ERR_CODE |                             0101 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2s
_          S_MEM_RD_STG_0 |                             0110 |                            01001
2default:defaulth p
x
? 
?
%s
*synth2s
_          S_MEM_RD_STG_1 |                             0111 |                            01010
2default:defaulth p
x
? 
?
%s
*synth2s
_          S_MEM_WR_STG_0 |                             1000 |                            01011
2default:defaulth p
x
? 
?
%s
*synth2s
_          S_MEM_WR_STG_1 |                             1001 |                            01100
2default:defaulth p
x
? 
?
%s
*synth2s
_       S_CPU_REG_RD_STG0 |                             1010 |                            00110
2default:defaulth p
x
? 
?
%s
*synth2s
_       S_CPU_REG_RD_STG1 |                             1011 |                            00111
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             1100 |                            10000
2default:defaulth p
x
? 
?
%s
*synth2s
_              S_DISABLED |                             1101 |                            00000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
q_state_reg2default:default2

sequential2default:default2
hci2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:37 . Memory (MB): peak = 1786.496 ; gain = 626.418 ; free physical = 238 ; free virtual = 4909
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?RAM Pipeline Warning: Read Address Register Found For RAM ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+---------------+------------+----------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|      |RTL Partition  |Replication |Instances |
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+---------------+------------+----------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|1     |cpu__GB0       |           1|     46407|
2default:defaulth p
x
? 
]
%s
*synth2E
1|2     |cpu__GB1       |           1|     36225|
2default:defaulth p
x
? 
]
%s
*synth2E
1|3     |riscv_top__GC0 |           1|      3248|
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+---------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 162   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 91    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 609   
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            1024K Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              16K Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              10K Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               8K Bit         RAMs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              512 Bit         RAMs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit         RAMs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              128 Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              112 Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit         RAMs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    512 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 717   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  30 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     17 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     17 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 23    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      5 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 445   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  29 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1476  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module riscv_top 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
<
%s
*synth2$
Module MemCtrl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
;
%s
*synth2#
Module ICache 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 513   
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              16K Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              10K Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 513   
2default:defaulth p
x
? 
7
%s
*synth2
Module IF 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
>
%s
*synth2&
Module InstQueue 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit         RAMs := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module Decoder 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      5 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module Dispatcher 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 41    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module RegFile 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 32    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              128 Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 97    
2default:defaulth p
x
? 
=
%s
*synth2%
Module LSBuffer 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 35    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 35    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              512 Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              112 Bit         RAMs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 320   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 128   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 305   
2default:defaulth p
x
? 
8
%s
*synth2 
Module ROB 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              512 Bit         RAMs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               48 Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    512 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 33    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 181   
2default:defaulth p
x
? 
;
%s
*synth2#
Module LSCtrl 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
Module ALU 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  30 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
7
%s
*synth2
Module RS 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 68    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 50    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 18    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 320   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 264   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 323   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
I
%s
*synth21
Module single_port_ram_sync 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	            1024K Bit         RAMs := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module ram 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
Module fifo 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               8K Bit         RAMs := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module uart_baud_clk 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module uart_rx 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
<
%s
*synth2$
Module uart_tx 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
I
%s
*synth21
Module fifo__parameterized0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module fifo__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               8K Bit         RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
Module uart 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module hci 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     17 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     17 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  29 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 19    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[0]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[1]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2#
read_buf_reg[2]2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
%s
*synth2?
?RAM Pipeline Warning: Read Address Register Found For RAM ram0/ram_bram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[13]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[12]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[11]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[16]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[16]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[15]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[14]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[19]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[19]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[18]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[18]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[17]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[17]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[22]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[22]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[21]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[21]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[20]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[20]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[25]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[25]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[24]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[24]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[23]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[23]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[28]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[28]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[27]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[27]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[26]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[26]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[0]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[1]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[2]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[3]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[4]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[5]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[8]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[7]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ICache/wait_idx_reg[6]2default:default2
FDE2default:default2:
&cpu0i_1/ICache/inst_addr_mc_out_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[31]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[30]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[30]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys23
cpu0i_1/ICache/wait_tag_reg[29]2default:default2
FDE2default:default2;
'cpu0i_1/ICache/inst_addr_mc_out_reg[29]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%i_0/i_0/ram0/ram_bram/ram_reg_mux_sel2default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__02default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__12default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__22default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__32default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__42default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__52default:default2
FD2default:default2<
(i_0/i_0/ram0/ram_bram/ram_reg_mux_sel__62default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[0]__12default:default2
FDSE2default:default22
cpu0i_1/ROB/head_reg_rep[0]__02default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[1]__12default:default2
FDRE2default:default22
cpu0i_1/ROB/head_reg_rep[1]__02default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[2]__12default:default2
FDRE2default:default22
cpu0i_1/ROB/head_reg_rep[2]__02default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[3]__12default:default2
FDRE2default:default22
cpu0i_1/ROB/head_reg_rep[3]__02default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[0]__02default:default2
FDSE2default:default2/
cpu0i_1/ROB/head_reg_rep[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[1]__02default:default2
FDRE2default:default2/
cpu0i_1/ROB/head_reg_rep[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[2]__02default:default2
FDRE2default:default2/
cpu0i_1/ROB/head_reg_rep[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys22
cpu0i_1/ROB/head_reg_rep[3]__02default:default2
FDRE2default:default2/
cpu0i_1/ROB/head_reg_rep[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
cpu0i_1/ROB/head_reg_rep[0]2default:default2
FDSE2default:default2+
cpu0i_1/ROB/head_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
cpu0i_1/ROB/head_reg_rep[1]2default:default2
FDRE2default:default2+
cpu0i_1/ROB/head_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
cpu0i_1/ROB/head_reg_rep[2]2default:default2
FDRE2default:default2+
cpu0i_1/ROB/head_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2/
cpu0i_1/ROB/head_reg_rep[3]2default:default2
FDRE2default:default2+
cpu0i_1/ROB/head_reg[3]2default:defaultZ8-3886h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[15][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[14][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[13][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[12][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[11][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
vj_reg[10][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][29]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][28]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][27]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][26]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][25]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][24]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][23]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][22]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][21]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][20]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][19]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[9][18]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[8][31]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
vj_reg[8][30]2default:default2
LSBuffer2default:defaultZ8-3332h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[0][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[1][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[2][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[3][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[4][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[5][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[6][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[7][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[8][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
cpu0i_2/RS/\op_reg[9][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
cpu0i_2/RS/\op_reg[10][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
cpu0i_2/RS/\op_reg[11][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
cpu0i_2/RS/\op_reg[12][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
cpu0i_2/RS/\op_reg[13][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
cpu0i_2/RS/\op_reg[14][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
cpu0i_2/RS/\op_reg[15][6] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default26
"cpu0i_2/RS/\opcode_alu_out_reg[6] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:06 ; elapsed = 00:01:21 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 544 ; free virtual = 4860
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
e
%s*synth2M
9
Block RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name           | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|single_port_ram_sync: | ram_reg    | 128 K x 8(WRITE_FIRST) | W | R |                        |   |   | Port A           | 0      | 32     | 
2default:defaulth px? 
?
%s*synth2?
?+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The tale above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name       | RTL Object                                  | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth px? 
?
%s*synth2?
?+------------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/ICache    | tag_reg                                     | Implied   | 512 x 21             | RAM64M x 56                  | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/ICache    | value_reg                                   | Implied   | 512 x 32             | RAM64X1D x 16  RAM64M x 80   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/InstQueue | inst_queue_reg                              | Implied   | 8 x 32               | RAM32M x 6                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/InstQueue | pc_reg                                      | Implied   | 8 x 32               | RAM32M x 6                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/RegFile   | rob_id_reg                                  | Implied   | 32 x 4               | RAM32M x 3                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/LSBuffer  | op_reg                                      | Implied   | 16 x 7               | RAM32M x 2                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/LSBuffer  | rob_id_reg                                  | Implied   | 16 x 4               | RAM32M x 1                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/LSBuffer  | A_reg                                       | Implied   | 16 x 32              | RAM32M x 6                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/ROB       | op_type_reg                                 | Implied   | 16 x 3               | RAM32M x 2                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/ROB       | dest_reg                                    | Implied   | 16 x 32              | RAM32M x 6                   | 
2default:defaulth px? 
?
%s*synth2?
?|cpu0i_1/ROB       | pc_reg                                      | Implied   | 16 x 32              | RAM32M x 6                   | 
2default:defaulth px? 
?
%s*synth2?
?|riscv_top         | hci0/io_in_fifo/q_data_array_reg            | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth px? 
?
%s*synth2?
?|riscv_top         | hci0/uart_blk/uart_tx_fifo/q_data_array_reg | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth px? 
?
%s*synth2?
?|riscv_top         | hci0/uart_blk/uart_rx_fifo/q_data_array_reg | Implied   | 8 x 8                | RAM32M x 2                   | 
2default:defaulth px? 
?
%s*synth2?
?+------------------+---------------------------------------------+-----------+----------------------+------------------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_02default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_12default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_22default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_32default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_42default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_52default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_62default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_1_72default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_02default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_12default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_22default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_32default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_42default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_52default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_62default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys25
!i_0/i_0/ram0/ram_bram/ram_reg_3_72default:defaultZ8-4480h px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+---------------+------------+----------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|      |RTL Partition  |Replication |Instances |
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+---------------+------------+----------+
2default:defaulth p
x
? 
]
%s
*synth2E
1|1     |cpu__GB0       |           1|     23682|
2default:defaulth p
x
? 
]
%s
*synth2E
1|2     |cpu__GB1       |           1|     32357|
2default:defaulth p
x
? 
]
%s
*synth2E
1|3     |riscv_top__GC0 |           1|      2182|
2default:defaulth p
x
? 
]
%s
*synth2E
1+------+---------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:11 ; elapsed = 00:01:28 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 444 ; free virtual = 4761
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:01:30 ; elapsed = 00:01:48 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 350 ; free virtual = 4665
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"
Block RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name           | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|single_port_ram_sync: | ram_reg    | 128 K x 8(WRITE_FIRST) | W | R |                        |   |   | Port A           | 0      | 32     | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name       | RTL Object                                  | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|riscv_top         | hci0/io_in_fifo/q_data_array_reg            | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|riscv_top         | hci0/uart_blk/uart_rx_fifo/q_data_array_reg | Implied   | 8 x 8                | RAM32M x 2                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|riscv_top         | hci0/uart_blk/uart_tx_fifo/q_data_array_reg | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/ICache    | tag_reg                                     | Implied   | 512 x 21             | RAM64M x 56                  | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/ICache    | value_reg                                   | Implied   | 512 x 32             | RAM64X1D x 16  RAM64M x 80   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/InstQueue | inst_queue_reg                              | Implied   | 8 x 32               | RAM32M x 6                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/InstQueue | pc_reg                                      | Implied   | 8 x 32               | RAM32M x 6                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/RegFile   | rob_id_reg                                  | Implied   | 32 x 4               | RAM32M x 3                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/LSBuffer  | op_reg                                      | Implied   | 16 x 7               | RAM32M x 2                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/LSBuffer  | rob_id_reg                                  | Implied   | 16 x 4               | RAM32M x 1                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/LSBuffer  | A_reg                                       | Implied   | 16 x 32              | RAM32M x 6                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/ROB       | op_type_reg                                 | Implied   | 16 x 3               | RAM32M x 2                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/ROB       | dest_reg                                    | Implied   | 16 x 32              | RAM32M x 6                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|cpu0i_1/ROB       | pc_reg                                      | Implied   | 16 x 32              | RAM32M x 6                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------------+---------------------------------------------+-----------+----------------------+------------------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
\
%s
*synth2D
0|1     |riscv_top_GT0 |           1|     58165|
2default:defaulth p
x
? 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[0]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[1]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[2]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[3]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[4]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[5]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[6]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[7]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[9]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[8]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys21
cpu0/LSBuffer/head_reg_rep[0]2default:default2
FDRE2default:default2-
cpu0/LSBuffer/head_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys21
cpu0/LSBuffer/head_reg_rep[1]2default:default2
FDRE2default:default2-
cpu0/LSBuffer/head_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys21
cpu0/LSBuffer/head_reg_rep[2]2default:default2
FDRE2default:default2-
cpu0/LSBuffer/head_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys21
cpu0/LSBuffer/head_reg_rep[3]2default:default2
FDRE2default:default2-
cpu0/LSBuffer/head_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[5]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[3]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[0]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[1]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[2]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[4]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[8]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[7]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[6]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[9]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[9]2default:defaultZ8-3886h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_02default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_12default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_22default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_32default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_42default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_52default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_62default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_1_72default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_02default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_12default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_22default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_32default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_42default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_52default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_62default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2-
ram0/ram_bram/ram_reg_3_72default:defaultZ8-4480h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:01:37 ; elapsed = 00:01:55 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 419 ; free virtual = 4737
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_4082default:default2
642default:default2
72default:defaultZ8-6064h px? 
?
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
	n_0_156702default:default2
642default:default2
72default:defaultZ8-6064h px? 
?
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_1262default:default2
322default:default2
42default:defaultZ8-6064h px? 
?
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_1272default:default2
322default:default2
42default:defaultZ8-6064h px? 
?
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_1282default:default2
322default:default2
42default:defaultZ8-6064h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:01:39 ; elapsed = 00:01:57 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 408 ; free virtual = 4726
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:39 ; elapsed = 00:01:57 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 408 ; free virtual = 4726
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:40 ; elapsed = 00:01:59 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 420 ; free virtual = 4738
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:41 ; elapsed = 00:01:59 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 420 ; free virtual = 4739
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:41 ; elapsed = 00:02:00 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 421 ; free virtual = 4739
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:42 ; elapsed = 00:02:00 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 421 ; free virtual = 4739
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|1     |BUFG       |     1|
2default:defaulth px? 
H
%s*synth20
|2     |CARRY4     |   140|
2default:defaulth px? 
H
%s*synth20
|3     |LUT1       |    29|
2default:defaulth px? 
H
%s*synth20
|4     |LUT2       |   468|
2default:defaulth px? 
H
%s*synth20
|5     |LUT3       |  2214|
2default:defaulth px? 
H
%s*synth20
|6     |LUT4       |   982|
2default:defaulth px? 
H
%s*synth20
|7     |LUT5       |  3729|
2default:defaulth px? 
H
%s*synth20
|8     |LUT6       |  7692|
2default:defaulth px? 
H
%s*synth20
|9     |MUXF7      |   748|
2default:defaulth px? 
H
%s*synth20
|10    |MUXF8      |   174|
2default:defaulth px? 
H
%s*synth20
|11    |RAM32M     |    33|
2default:defaulth px? 
H
%s*synth20
|12    |RAM64M     |   200|
2default:defaulth px? 
H
%s*synth20
|13    |RAM64X1D   |    80|
2default:defaulth px? 
H
%s*synth20
|14    |RAMB36E1   |    16|
2default:defaulth px? 
H
%s*synth20
|15    |RAMB36E1_1 |    16|
2default:defaulth px? 
H
%s*synth20
|16    |FDCE       |    59|
2default:defaulth px? 
H
%s*synth20
|17    |FDPE       |     6|
2default:defaulth px? 
H
%s*synth20
|18    |FDRE       |  6265|
2default:defaulth px? 
H
%s*synth20
|19    |FDSE       |    29|
2default:defaulth px? 
H
%s*synth20
|20    |IBUF       |     3|
2default:defaulth px? 
H
%s*synth20
|21    |OBUF       |     2|
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+------------------------+---------------------+------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|      |Instance                |Module               |Cells |
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+------------------------+---------------------+------+
2default:defaulth p
x
? 
k
%s
*synth2S
?|1     |top                     |                     | 22886|
2default:defaulth p
x
? 
k
%s
*synth2S
?|2     |  cpu0                  |cpu                  | 21661|
2default:defaulth p
x
? 
k
%s
*synth2S
?|3     |    ALU                 |ALU                  |    64|
2default:defaulth p
x
? 
k
%s
*synth2S
?|4     |    ICache              |ICache               |  1832|
2default:defaulth p
x
? 
k
%s
*synth2S
?|5     |    IF                  |IF                   |   158|
2default:defaulth p
x
? 
k
%s
*synth2S
?|6     |    InstQueue           |InstQueue            |   183|
2default:defaulth p
x
? 
k
%s
*synth2S
?|7     |    LSBuffer            |LSBuffer             |  2129|
2default:defaulth p
x
? 
k
%s
*synth2S
?|8     |    LSCtrl              |LSCtrl               |  4553|
2default:defaulth p
x
? 
k
%s
*synth2S
?|9     |    MemCtrl             |MemCtrl              |   215|
2default:defaulth p
x
? 
k
%s
*synth2S
?|10    |    ROB                 |ROB                  |  1705|
2default:defaulth p
x
? 
k
%s
*synth2S
?|11    |    RS                  |RS                   |  8121|
2default:defaulth p
x
? 
k
%s
*synth2S
?|12    |    RegFile             |RegFile              |  2162|
2default:defaulth p
x
? 
k
%s
*synth2S
?|13    |  hci0                  |hci                  |  1169|
2default:defaulth p
x
? 
k
%s
*synth2S
?|14    |    io_in_fifo          |fifo                 |   226|
2default:defaulth p
x
? 
k
%s
*synth2S
?|15    |    uart_blk            |uart                 |   715|
2default:defaulth p
x
? 
k
%s
*synth2S
?|16    |      uart_baud_clk_blk |uart_baud_clk        |    40|
2default:defaulth p
x
? 
k
%s
*synth2S
?|17    |      uart_rx_blk       |uart_rx              |    57|
2default:defaulth p
x
? 
k
%s
*synth2S
?|18    |      uart_rx_fifo      |fifo__parameterized0 |   194|
2default:defaulth p
x
? 
k
%s
*synth2S
?|19    |      uart_tx_blk       |uart_tx              |    57|
2default:defaulth p
x
? 
k
%s
*synth2S
?|20    |      uart_tx_fifo      |fifo_0               |   365|
2default:defaulth p
x
? 
k
%s
*synth2S
?|21    |  ram0                  |ram                  |    47|
2default:defaulth p
x
? 
k
%s
*synth2S
?|22    |    ram_bram            |single_port_ram_sync |    47|
2default:defaulth p
x
? 
k
%s
*synth2S
?+------+------------------------+---------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:42 ; elapsed = 00:02:00 . Memory (MB): peak = 2026.480 ; gain = 866.402 ; free physical = 421 ; free virtual = 4739
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 287 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:01:34 ; elapsed = 00:01:45 . Memory (MB): peak = 2026.480 ; gain = 517.105 ; free physical = 475 ; free virtual = 4793
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:42 ; elapsed = 00:02:00 . Memory (MB): peak = 2026.488 ; gain = 866.402 ; free physical = 475 ; free virtual = 4793
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
14102default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 313 instances were transformed.
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 33 instances
  RAM64M => RAM64M (RAMD64E, RAMD64E, RAMD64E, RAMD64E): 200 instances
  RAM64X1D => RAM64X1D (RAMD64E, RAMD64E): 80 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4262default:default2
1422default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:01:452default:default2
00:02:032default:default2
2058.4962default:default2
898.4922default:default2
4922default:default2
48112default:defaultZ17-722h px? 
K
"No constraint will be written out.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2p
\/home/ubospica/develop/cpu/Hummingbird/vivado/project_1/project_1.runs/synth_1/riscv_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file riscv_top_utilization_synth.rpt -pb riscv_top_utilization_synth.pb
2default:defaulth px? 
?
?report_utilization: Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.18 . Memory (MB): peak = 2082.508 ; gain = 0.000 ; free physical = 474 ; free virtual = 4797
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jan  2 16:28:59 20222default:defaultZ17-206h px? 


End Record