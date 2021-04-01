global main
    extern printf, scanf
 
section .data
    fmt_in      db  "%d",0
    lambat      db  "lambat",10,0
    sedang      db  "sedang",10,0
    tilang      db  "tilang",10,0
     
section .bss
    x   resd    1
     
section .text
 
main :
    push    x
    push    fmt_in
    call    scanf
    add     esp, 8
     
    mov     eax, [x]
     
    ; operasi
    cmp     eax, 60
    ja     tlg
    jl      check_2
     
check_2 :
    cmp     eax, 31
    jae     sdg
    jl      lbt
     
lbt :
    push    lambat
    jmp     print
sdg :
    push    sedang
    jmp     print
tlg :
    push    tilang
    jmp     print
     
     
print :
    call    printf
    add     esp, 4
     
    add     eax, 0
    ret
