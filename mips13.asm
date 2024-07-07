.data
printMsg: .asciiz "The numbers is less"


.text
.globl main

main:
addi $t0,$zero,400
addi $t1,$zero,200
slt $s0,$t0,$t1
bne $s0,$zero,numLess

numLess:
li $v0,4
la $a0,printMsg
syscall