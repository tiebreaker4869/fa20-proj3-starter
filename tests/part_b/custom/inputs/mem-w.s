addi x1, x0, 2
addi x2, x0, 3
mul x2, x1, x2
li s0, 0
sw x2, 40(s0)
lw x3, 40(s0)