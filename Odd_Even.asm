.data
even: .asciiz "The number is even\n"
odd: .asciiz "The number is odd\n"
.text
addi $t0 , $t0 , 2

li $v0 , 5 		#system get ready for integer input
syscall 		

move $s0 , $v0	#system move user input from v0 to s0 
divu $s0 , $t0	#divide user input by 2
mfhi $s1		#move remainder from the division to s1
beq $s1 ,$zero , ev	#compare weather the reamainder is equal to zero
li $v0 , 4		#system get ready to print string /char 
la $a0 , odd
syscall
li $v0 ,10		#system terminate process by force 
syscall
ev:
li $v0 , 4		#system get ready to print string / char
la $a0 , even
syscall