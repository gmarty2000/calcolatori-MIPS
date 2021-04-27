# Example program to compute the sum of squares.
# ----------------------------------------------------
# Data Declarations
.data
n:              .word 10
sum0fSquares:   .word 0

# ----------------------------------------------------
# text/code section

.text
.globl main

main:

# -----
# Compute sum of squares from 1 to n.
    lw $tO, n
    li $tl, 1   # loop index (1 to n)
    li $t2, 0   # sum

sumLoop:
    mul $t3, $tl, $t1   # index^2
    add $t2, $t2, $t3

    add $tl, $tl, 1
    ble $tl, $tO, sumLoop

    sw $t2, sum0fSquares

# -----
# Done, terminate program.
    li $v0, 10          # call code for terminate
    syscall             # system call

.end main
