.text
.globl main

main:
li $v0, 1
lw $t1, num1($zero)
lw $t2, num2($zero)

mul $t0,$t1,$t2  
add $a0,$t0,$zero

syscall
li $v0, 10
syscall

.data
num1: .word 2
num2: .word 3