.data 
starik : .asciiz "*"
endl : .asciiz "\n"

.text
li $s0,0 	#i
li $s1,0	#j
li $t0,6	#n

while:	#for loop with i
bge $s0 , $t0 , exit
li $s1 ,0 
while2:
bge $s1 ,$s0 ,adds0
li $v0 ,4
la $a0 ,starik
syscall
addi $s1 , $s1,1
j while2

adds0:
li $v0 ,4
la $a0 ,endl
syscall
addi $s0 , $s0,1
j while

exit :
li $v0 ,10
syscall