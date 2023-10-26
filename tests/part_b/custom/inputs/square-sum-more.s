main:
    li  t0, 1         # 初始化计数器 t0 为 1
    li  t1, 0         # 初始化累计和 t1 为 0

loop:
    li  t2, 10        # 设置比较值 t2 为 10
    blt t0, t2, square  # 如果 t0 < t2，跳转到 square

done:
    # 存储平方和结果
    j all_done


square:
    # 计算当前数的平方
    mul t3, t0, t0

    # 累计和
    add t1, t1, t3

    # 计数器加一
    addi t0, t0, 1

    # 回到循环开始
    j loop

all_done:
    sw t1, 2000(x0)