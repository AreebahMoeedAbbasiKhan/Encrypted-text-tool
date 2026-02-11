.model small
.stack 100h

.data
    msg1 db 10,13,"Enter text: $"
    msg2 db 10,13,"Encrypted text: $"
    msg3 db 10,13,"Decrypted text: $"

    text db 50 dup('$')
    key  db 2

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Ask for input
    lea dx, msg1
    mov ah, 09h
    int 21h

    ; Read from user
    lea si, text
read_loop:
    mov ah, 01h
    int 21h
    cmp al, 13              
    je encrypt
    mov [si], al
    inc si
    jmp read_loop

encrypt:
    mov byte ptr [si], '$'  

    ; Encrypt text 
    lea si, text
enc_loop:
    cmp byte ptr [si], '$'
    je show_encrypted
    mov al, key
    add [si], al
    inc si
    jmp enc_loop

show_encrypted:
    lea dx, msg2
    mov ah, 09h
    int 21h

    lea dx, text
    mov ah, 09h
    int 21h

    ; Decrypt text
    lea si, text
dec_loop:
    cmp byte ptr [si], '$'
    je show_decrypted
    mov al, key
    sub [si], al
    inc si
    jmp dec_loop

show_decrypted:
    lea dx, msg3
    mov ah, 09h
    int 21h

    lea dx, text
    mov ah, 09h
    int 21h

    
    mov ah, 4Ch
    int 21h

main endp
end main
