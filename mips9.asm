.data
mychar: .byte 'a'

.text
.global main

main:
li $v0,4
la $a0,mychar
syscall