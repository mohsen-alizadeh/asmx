asmx: asmx.o
	ld -m elf_x86_64 asmx.o -o asmx

asmx.o: asmx.asm utils.asm
	nasm -f elf64 asmx.asm

clean:
	rm -f *.o asmx
