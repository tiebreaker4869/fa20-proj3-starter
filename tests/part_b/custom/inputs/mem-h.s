addi x1, x0, 2
addi x2, x0, 3
mul x2, x1, x2
li s0, 0
sh x2, 40(s0)
lh x3, 40(s0)