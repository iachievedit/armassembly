// Hello, world! with ARM assembly and GNU assembler
.global main

main:
push {ip, lr}

ldr r0,=hellostr
bl  printf

mov r0,#0xff

pop {ip, pc}

.data
hellostr:
.asciz "Hello, world!\n"
