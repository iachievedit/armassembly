.global main

main:
push {ip, lr}

mov r5,#10
do:
ldr r0,=fmtstr
mov r1,r5
bl  printf
sub r5,#1
cmp r5,#0
bne do

ldr r0,=hellostr
bl  printf

mov r0,#0xff

pop {ip, pc}

.data
fmtstr:
.asciz "%d\n"
hellostr:
.asciz "Hello, world!\n"
