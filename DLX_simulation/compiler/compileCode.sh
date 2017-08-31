echo "Compiling $1..."
./assembler.bin/dlxasm.pl $1
xxd -c 4 $1.exe | awk '{print $2$3}' > ../test.asm.mem
