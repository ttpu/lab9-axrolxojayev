.section .data
msg:
    .ascii "Hello, World!\n"
len = . - msg

.section .text
.global _start

_start:
    ldr r0, =1          @ file descriptor (stdout)
    ldr r1, =msg        @ message to write
    ldr r2, =len        @ message length
    mov r4, #10
    mov r5, #20
    cmp r4,r5
    movlt r3, #48
    movgt r3, #49
    moveq r3, #50
    strb r3, [r1]
    mov r7, #4          @ sys_write system call
    svc 0               @ make the system call

    mov r7, #1          @ sys_exit system call
    svc 0               @ exit the program