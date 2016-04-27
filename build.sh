nasm -f elf64 multiboot_header.asm
nasm -f elf64 boot.asm
ld -n -o kernel.bin -T linker.ld multiboot_header.o boot.o
mv kernel.bin isofiles/boot/
rm boot multiboot_header boot.o multiboot_header.o

grub-mkrescue -d /usr/lib/grub/i386-pc -o os.iso isofiles 
