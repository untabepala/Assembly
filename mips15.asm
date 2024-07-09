.data 
        myArray: .space 12 #3 elements *4 bytes(index)
        newline: .asciiz "\n"
.text
.globl main

main:
       addi $s0,$zero,4
       addi $s1,$zero,8
       addi $s2,$zero,12
       
       addi $t0,$zero,0
       
       sw $s0,myArray($t0)#myArray[0]=4
                 addi $t0,$t0,4#t0=t0+4
       sw $s1,myArray($t0)#myArray[1]=8  
                 addi $t0,$t0,4
       sw $s2,myArray($t0)#myArray[2]=12 
       
       #lw $t6,myArray($t0)                     
       addi $t1,$zero,0 #int i=0
       
    while:
       beq $t1,12,exit #if(i>=12)
       
       lw $t6,myArray($t1)
       
       addi $t1,$t1,4
       
       li $v0,1
       move $a0,$t6
       syscall   
       
       li $v0,4
       la $a0,newline
       syscall    
    j while
    
exit:
    li $v0,10
    syscall