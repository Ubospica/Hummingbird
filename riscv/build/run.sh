#!/bin/bash
# cd ./build
iverilog ../src/**/*.v ../sim/testbench.v -I../src/structure/
./a.out