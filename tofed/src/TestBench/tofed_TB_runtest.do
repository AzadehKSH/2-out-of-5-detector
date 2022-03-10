SetActiveLib -work
comp -include "$dsn\src\tofed.vhd" 
comp -include "$dsn\src\TestBench\tofed_TB.vhd" 
asim +access +r TESTBENCH_FOR_tofed 
wave 
wave -noreg clk
wave -noreg rst
wave -noreg x
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\tofed_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_tofed 
