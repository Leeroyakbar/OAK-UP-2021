global main
    extern printf, scanf
 
section .data
    fmt_in  db  "%d", 0
    fmt_out db  "%d",10,0
     
section .bss
    s       resd    1
    hasil   resd    1
     
section .text
 
main :
    push    s
    push    fmt_in
    call    scanf
    add     esp, 8
     
    ;olahan
    mov     eax, [s]
    mov     ebx, [s]
    mov     ecx, 6
     
    mul     ebx
    mul     ecx
     
    mov     [hasil], eax
    push    dword[hasil]
    push    fmt_out
    call    printf
    add     esp, 8
     
    mov     eax, 0
    ret
