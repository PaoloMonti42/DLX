foreach file [exec find . -type f -name "*.vhd" | sort] { analyze -format vhdl $file }
