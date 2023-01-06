.data
msg1: .asciiz "Multiplication Table of : "
endl: .asciiz "\n"
.text
addi $t1 , $t1 , 0
addi $t2 , $t2 ,11
li $v0 , 5 
syscall 
move $t0 , $v0
li $v0 , 4
la $a0 , msg1
syscall 
li $v0 , 1
move $a0 , $t0
syscall 
while :
addi $t1 , $t1 ,1
beq $t1 , $t2,exit
li $v0 , 4
la $a0 , endl
syscall 
mult $t0 , $t1
mflo $s0
li $v0 , 1
move $a0 , $s0
syscall 
j while
exit :
li $v0 ,10
syscall