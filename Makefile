ASM=nasm

SRC_DIR=src
BUILD_DIR=build

# Target to build and run the OS with QEMU
run: $(BUILD_DIR)/main_floppy.img
	qemu-system-i386 -fda $(BUILD_DIR)/main_floppy.img

# Target to create a floppy disk image
$(BUILD_DIR)/main_floppy.img: $(BUILD_DIR)/main.bin
	cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main_floppy.img
	truncate -s 1440k $(BUILD_DIR)/main_floppy.img

# Target to compile the assembly code into a binary
$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin

# clean target for convenience
clean:
	rm -f $(BUILD_DIR)/main.bin $(BUILD_DIR)/main_floppy.img
