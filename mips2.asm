.text
.globl main

main:
li $v0, 1
lw $a0,num
syscall


.data
num: .word 23


