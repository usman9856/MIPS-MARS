.data 
starik : .asciiz "*"
space : .asciiz " "
endl : .asciiz "\n"

.text
li $s0,0 	#i
li $s1,0	#j
li $t0,6	#n

while:	#for loop with i
bgt $s0 , $t0 ,exit
sub $t1 , $t0 , $s0
li $s1,0
while2:
bgt $s1 , $t1 , adds0
if:
beq $s0 ,$0 ,print
beq $s1 , $t1,print
beq $s1 , $0,print
else:
li $v0 , 4
la $a0 ,space
syscall
addi $s1 ,$s1 ,1
j while2
print:
li $v0 , 4
la $a0 ,starik
syscall
addi $s1 ,$s1 ,1
j while2


adds0:
addi $s0 , $s0 ,1
li $v0 , 4
la $a0 ,endl
syscall
j while

exit :
li $v0 ,10
syscall