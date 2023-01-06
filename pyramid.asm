##Increment pyramid 
.data 
starik : .asciiz "*"
endl: .asciiz "\n"
space: .asciiz " "
.text
###############################
addi $s0 , $s0 ,0 	#i
addi $s1 , $s1 ,0	#j
addi $t0 , $t0 ,6	#size
###############################

for1:
blt $s0 , $t0 , print1		#for loop to print n number of starik
j for2

print1:
addi $s0 ,$s0 ,1		#i++
li $v0 ,4
la $a0 ,starik		#print starik
syscall
j for1

for2:

li $v0 , 4			#printing endl
la $a0 , endl
syscall
sub $s0 , $s0 , $s0		#setting i to 0 ****
sub $s1 , $s1 , $s1		#setting j to 0
subi $t1 ,$t0 ,1		#subtracting 1 from size

point3:
beq $s1 ,0 ,print2		#if j = 0 print starik
beq $s1 ,$t1 ,print2		#if j = size-1 print starik
blt $s1 , $t0 ,print_space
beq $s1 , $t0 point3		#if j < size return to top 
j exit			#if j > size exit

print2:
addi $s1 ,$s1 ,1		#j++
li $v0 ,4
la $a0 ,starik		#printing starik
syscall
j point3			#jump to for2

print_space:
li $v0 ,4
la $a0 ,space
syscall
addi $s1 , $s1 ,1		#if non of the above then j++
j point3

exit:
li $v0 ,10			#terminate loop
syscall
