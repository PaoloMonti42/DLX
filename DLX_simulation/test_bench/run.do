vsim work.tb_dlx

add wave /tb_dlx/clk
add wave /tb_dlx/rst
add wave -unsigned /tb_dlx/pc
add wave -hexadecimal /tb_dlx/ir

add wave -decimal /tb_dlx/u1/dtp/RF/registers
add wave -decimal /tb_dlx/u1/dtp/dataram/memory

run 1000 ns
