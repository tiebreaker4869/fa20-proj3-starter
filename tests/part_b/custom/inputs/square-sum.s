main:
    li  t0, 1         # 初始化计数器 t0 为 1
    li  t1, 0         # 初始化累计和 t1 为 0

loop:
    li t5, 11
    beq t0, t5, done  # 如果计数器等于11，跳转到 done

    # 计算当前数的平方
    mul t2, t0, t0

    # 累计和
    add t1, t1, t2

    # 计数器加一
    addi t0, t0, 1

    j loop

done:
    # 存储平方和结果
    sw t1, 2000(s0)
