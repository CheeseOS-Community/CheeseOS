ASM     = nasm
CC      = gcc
LD      = ld



BOOT_DIR    = src/boot
KERNEL_DIR  = src/kernel
BUILD_DIR   = build



all:
	$(ASM) -f bin $(BOOT_DIR)/boot.asm -o $(BUILD_DIR)/boot.bin


run:
	qemu-system-x86_64 -drive file=$(BUILD_DIR)/boot.bin,format=raw
.PHONY: all run clean