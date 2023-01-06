.data 
starik : .asciiz "*"
endl : .asciiz "\n"

.text
li $s0,0 	#i
#li $s1,0	#j
li $t0,6	#n

while:	#for loop with i
bge $s0 , $t0 ,exit
sub $s1 , $t0 , $s0
while2:
ble $s1 , $0 , adds0
li $v0 , 4
la $a0 ,starik
syscall
subi $s1 ,$s1 ,1
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