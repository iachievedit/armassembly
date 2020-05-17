.global fib

// Routine: fib
// Returns f(n) where:
// fib(0) = 0
// fib(1) = 1
// fib(n) = fib(n-1) + fib(n-2)
// Inputs:
// r0 - n
// Outputs:
// r1 - fib(n)
// Registers Used:  r4-r5
fib:
push {r4-r5,lr}      
mov r4,r0      // r4 <- n
cmp r4,#0
beq fib0       // n == 0? f(0) = 0
cmp r4,#1
beq fib1       // n == 1? f(1) = 1

// f(n-1)
sub  r4,#1     // r4 <- n-1
mov  r0,r4  
bl   fib       // r0 <- fib(n-1)
mov  r5,r0     // r5 <- fib(n-1)

// f(n-2)
sub  r4,#1     // r4 <- n-2
mov  r0,r4
bl   fib       // r0 <- fib(n-2)
add  r0,r0,r5  // r0 <- r0 fib(n-2) + r5 fib(n-1)
b    return

fib1:
mov r0,#1
b   return

fib0:
mov r0,#0
b   return

return:
pop {r4-r5,lr}
bx  lr
