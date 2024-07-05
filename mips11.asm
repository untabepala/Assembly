.data
questionMsg: .asciiz "Enter a NUMBER:"
answerMsg: .asciiz "The number is:"

.text
.globl main

main:
#print the msg
li $v0,4
la $a0, questionMsg
syscall

#get the user input
li $v0,7
syscall

move $t0, $v0

#display the msg
li $v0,4
la $a0,answerMsg
syscall

li $v0, 3
move $a0,$t0
syscall
