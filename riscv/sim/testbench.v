// testbench top module file
// for simulation only

`timescale 1ns/1ps
module testbench;

	reg clk;
	reg rst;

	riscv_top #(.SIM(1)) top(
			.EXCLK(clk),
			.btnC(rst),
			.Tx(),
			.Rx(),
			.led()
	);

	initial begin
		clk=0;
		rst=1;
		repeat(50) #1 clk=!clk;
		rst=0;
		forever #1 clk=!clk;
		// repeat(10000) #1 clk=!clk;

		$finish;
	end
	integer i;
	initial begin
        $dumpfile("wave.vcd"); // 指定用作dumpfile的文件
		$dumpvars; // dump all vars
		for (i = 0; i < 16; i = i + 1) begin
			$dumpvars(0, testbench.top.cpu0.ROB.op_type[i]);
			$dumpvars(0, testbench.top.cpu0.ROB.dest[i]);
			$dumpvars(0, testbench.top.cpu0.ROB.pc[i]);
			$dumpvars(0, testbench.top.cpu0.ROB.value[i]);
			$dumpvars(0, testbench.top.cpu0.ROB.rdy[i]);
		end

		for (i = 0; i < 32; i = i + 1) begin
			$dumpvars(0, testbench.top.cpu0.RegFile.value[i]);
			$dumpvars(0, testbench.top.cpu0.RegFile.rob_id[i]);
			$dumpvars(0, testbench.top.cpu0.RegFile.busy[i]);
		end

	end

endmodule