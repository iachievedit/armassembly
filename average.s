.global average

// Inputs:
// r0 - Pointer to an array of integers
// r1 - Length of the array
// Outputs:
// s0 - Average (sum of the integers divided by length)
// Registers:
// r4 - Accumulator
// r5 - Scratch
average:
push {r4-r5,lr}
mov  r4,#0         // r4 <- 0
vmov s1,r1         // s1 <- n
do:
ldr  r5,[r0],#4    // r5 <- a[n]
add  r4,r5         // r4 <- r4 + r5
sub  r1,#1         // r1 <- r1 - 1
cmp  r1,#0       
bne  do            // if (r1 != 0) do
vmov s0,r4         // s0 <- sum   
vcvt.f32.s32 s0,s0 // Convert s0 to a fp value
vcvt.f32.s32 s1,s1 // Convert s1 to a fp value
vdiv.f32 s0,s0,s1  // s0 <- s0/s1
pop  {r4-r5,lr}    
bx   lr
