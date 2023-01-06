.data
starik : .asciiz "*"
endl: .asciiz "\n"
space: .asciiz " "
.text

li $t0 ,5	#rows
li $s0 ,0	#i
li $s2 ,1	#j
li $t3 ,1	#temp
while:
bge $s0 , $t0 , exit	#i>0
li $s1 , 0	#j=0
sub $t1 , $t0 , $s0 # row -i
while2:
bge $s1 , $t1 ,resetcmp	#j <= row-i
li $v0 ,4
la $a0 , starik #print soace
syscall
addi $s1 , $s1 ,1	#j++
j while2


resetcmp:
subi $s0 , $s0 ,1	#i++
addi $s2 , $s2 ,1	#k
move $t3 , $s2	#temp = k
li $v0 ,4 
la $a0 , endl
syscall
j while
exit :
li $v0 ,10
syscall
