.data
printMsg: .asciiz "The numbers are not equal"


.text
.globl main

main:
addi $t0,$zero,5
addi $t1,$zero,20
bne $t0,$t1,numbersDiff

numbersDiff:
li $v0,4
la $a0,printMsg
syscall
