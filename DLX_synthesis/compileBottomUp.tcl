exec mkdir -p work
exec mkdir -p rpt
exec mkdir -p netlists

foreach file [exec find . -type f -name "*.vhd" | sort] { analyze -format vhdl $file }

elaborate DLX -architecture STRUCT -library WORK

current_design dlx

characterize DTP/ALU_block/mul/P4adder
current_design cla_adder_N32
compile
report_timing > rpt/cla_timing_unopt.txt
report_power > rpt/cla_power_unopt.txt
set_max_delay 0.55 -from [all_inputs] -to [all_outputs]
compile -map_effort high
report_timing > rpt/cla_timing_opt.txt
report_power > rpt/cla_power_opt.txt
write -hierarchy -format vhdl -output netlists/adder.vhdl
write -hierarchy -format ddc -output netlists/adder.ddc
current_design dlx
set_dont_touch {DTP/ALU_block/mul/P4adder  DTP/ALU_block/adder_subtr/add DTP/jump_adder} true


characterize DTP/ALU_block/mul
current_design booth_mul_N16
compile
report_timing > rpt/mul_timing_unopt.txt
report_power > rpt/mul_power_unopt.txt
set_max_delay 1.5 -from [all_inputs] -to [all_outputs]
compile -map_effort high
report_timing > rpt/mul_timing_opt.txt
report_power > rpt/mul_power_opt.txt
write -hierarchy -format vhdl -output netlists/mul.vhdl
write -hierarchy -format ddc -output netlists/mul.ddc
current_design dlx
set_dont_touch {DTP/ALU_block/mul} true


characterize DTP/ALU_block
current_design alu
compile
report_timing > rpt/aluv2_timing_unopt.txt
report_power > rpt/aluv2_power_unopt.txt
set_max_delay 1.6 -from [all_inputs] -to [all_outputs]
compile -map_effort high
report_timing > rpt/aluv2_timing_opt.txt
report_power > rpt/aluv2_power_opt.txt
write -hierarchy -format vhdl -output netlists/aluv2.vhdl
write -hierarchy -format ddc -output netlists/aluv2.ddc
current_design dlx
set_dont_touch {DTP/ALU_block} true


current_design dlx
create_clock -name "Clk" -period 2 Clk
compile
report_timing > rpt/dlxv2_timing_unopt.txt
report_power > rpt/dlxv2_power_unopt.txt
create_clock -name "Clk" -period 1.7 Clk
set_max_delay 1.7 -from [all_inputs] -to [all_outputs]
compile -map_effort high
report_timing > rpt/dlxv2_timing_opt.txt
report_power > rpt/dlxv2_power_opt.txt
write -hierarchy -format vhdl -output netlists/dlx.vhdl
write -hierarchy -format ddc -output netlists/dlx.ddc
write -hierarchy -format verilog -output netlists/dlx.v
write_sdc netlists/dlx.sdc
