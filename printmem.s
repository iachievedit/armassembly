.global main

main:
push {ip, lr}

ldr r0,=hellostr
ldr r1,=x
bl  printf

mov r0,#0xff

pop {ip, pc}

.data
x:
.int 128
hellostr:
.asciz "Address of x is %p\n"
