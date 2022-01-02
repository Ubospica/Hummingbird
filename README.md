## HummingBird

*HummingBird* is a RISC-V simulator written in verilog.

### Features
- Tomasulo out-of-order executation

### Develop Progress
Recent updates about the project are shown below.

Simulation test passed:
- array_test1
- array_test2
- basicopt1
- bulgarian
- expr
- gcd
- lvalue2
- statement_test
- uartboom (but occurs error when modifing rdy_in for implementation purpose)
- every test that is not exceedingly complex

Implement Error:
- Heart
- tak (ok not O2)
- statement_test(ok in 80hz)
- uartboom (ok)
- looper (ok not O2; 44s without branch predictor)


### Reading Materials & Hints
1. [在FPGA中何时用组合逻辑或时序逻辑 - 郝旭帅 - 博客园](https://www.cnblogs.com/fendoudexiaohai/p/13164368.html)
2. Simulation Error: `sudo apt install libncurses5`
3. Win10 find port number: 设备管理器-扫描检测硬件改动
4. Find correspoding `/dev/ttyUSB*`:
    ```
    #!/bin/bash

    for sysdevpath in $(find /sys/bus/usb/devices/usb*/ -name dev); do
        (
            syspath="${sysdevpath%/dev}"
            devname="$(udevadm info -q name -p $syspath)"
            [[ "$devname" == "bus/"* ]] && exit
            eval "$(udevadm info -q property --export -p $syspath)"
            [[ -z "$ID_SERIAL" ]] && exit
            echo "/dev/$devname - $ID_SERIAL"
        )
    done
    ```
5. 终端启动程序到后台：`nohup xxx &`

6. Regex substitude

    ```
    in wire:
    \.(.*?_)(.{1,3})_in(,|$)
    .$1$2_in($1$2_lsb)$3

    out wire:
    \.(.*?_)(.{1,3})_out(,|$)
    .$1$2_out($1lsb_$2)$3
    ```
7. Build commands:
    ```bash
    # simu
    cd riscv/build
    ../build_test.sh gcd
    iverilog ../src/**/*.v ../sim/testbench.v -I ../src/structure/ && ./a.out
    #   debug
    iverilog ../src/**/*.v ../sim/testbench.v -I ../src/structure/ -DDEBUG && ./a.out > a.out
    # run on fpga
    ```