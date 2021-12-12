## HummingBird

*HummingBird* is a RISC-V simulator written in verilog.

### Features
- Tomasulo out-of-order executation

### Develop Progress
Recent updates about the project are shown below.


### Reading Materials
[在FPGA中何时用组合逻辑或时序逻辑 - 郝旭帅 - 博客园](https://www.cnblogs.com/fendoudexiaohai/p/13164368.html)

### Other Tools
#### Regex Substitude
1. 
```
in wire:
\.(.*?_)(.{1,3})_in(,|$)
.$1$2_in($1$2_lsb)$3

out wire:
\.(.*?_)(.{1,3})_out(,|$)
.$1$2_out($1lsb_$2)$3
```