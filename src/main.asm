; 0x7C00 is the address where the BIOS loads the boot sector
org 0x7C00
; changing the bits to 32 or 64 wont force the computer to boot in 32 or 64 bit mode, it just tells the assembler to emit the code in 16 bits
bits 16


%define ENDL 0x0D, 0x0A

start:
    jmp main


puts:
puts:
    ; save registers we will modify
    push si
    push ax
    push bx

.loop:
    lodsb               ; loads next character in al
    or al, al           ; verify if next character is null?
    jz .done

    mov ah, 0x0E        ; call bios interrupt
    mov bh, 0           ; set page number to 0
    int 0x10

    jmp .loop

.done:
    pop bx
    pop ax
    pop si    
    ret

main:
    ; setup data segments
    mov ax, 0
    mov ds, ax
    mov es, ax

    ; setup the stack
    mov ss, ax
    mov sp, 0x7C00

    ; print message
    mov si, msg_Hello_World
    call puts

    hlt

.halt:
    jmp .halt

msg_Hello_World:
    db 'Hello, World!', ENDL, 0

times 510-($-$$) db 0
dw 0AA55h