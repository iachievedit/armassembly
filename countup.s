.global main

main:
push {ip, lr}

ldr r5,=min
ldr r5,[r5]
ldr r6,=max
ldr r6,[r6]
do:
ldr r0,=fmtstr
mov r1,r5
bl  printf
add r5,#1
cmp r5,r6
bne do

mov r0,r5

pop {ip, pc}

.data
min:
.int 14
max:
.int 29
fmtstr:
.asciz "%d\n"
