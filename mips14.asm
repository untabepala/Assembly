.data
EndMsg: .asciiz "The loop is ending here"
space: .asciiz "\n"

.text
.globl main

main:
addi $t0,$zero,0
while:
bgt $t0,10,exit
jal printnumber

addi $t0,$t0,1 #t0=to+1/ t0++

j while
exit:
li $v0,4
la $a0,EndMsg
syscall

printnumber:
li $v0,1
add $a0,$t0,$zero
syscall

li $v0,4
la $a0,space
syscall