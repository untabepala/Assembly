.text
.global main

main:
li $v0,1
addi $t0,$zero,30
addi $t1,$zero,8

div $t0,$t1
mflo $s0 #store answer
mfhi $s1 #store reminder

add $a0,$zero,$s0
syscall