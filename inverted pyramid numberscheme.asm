.data
starik : .asciiz "*"
endl: .asciiz "\n"
space: .asciiz " "
.text

li $t0 ,5	#rows
li $s0 ,5	#i
li $s2 ,1	#j
li $t3 ,10	#temp
while:
ble $s0 , $0 , exit	#i>0
li $s1 , 0	#j=0
sub $t1 , $t0 , $s0 # row -i
while2:
bge $s1 , $t1 ,reset	#j <= row-i
li $v0 ,4
la $a0 , space	#print soace
syscall
addi $s1 , $s1 ,1	#j++
j while2

reset :
add $s1 ,$0 ,$s0	# j = i
li $t1 , 2	#temp = 2
mul $t2 , $t1,$s0	
subi $t2 , $t2 ,1 #k = 2*i-1
while3:
bge $s1 , $t2 , resetcmp #j<=k	
bge $s2 , $t3 ,set0
return:
li $v0 ,1
move $a0 , $s2	#print val
syscall
addi $s1 , $s1 ,1	#j++
addi $s2 , $s2 ,1	#temp++
j while3

set0:
li $s2 ,0
j return
resetcmp:
subi $s0 , $s0 ,1	#i++

#move $t3 , $s2	#temp = k
li $v0 ,4 
la $a0 , endl
syscall

j while
exit :
li $v0 ,10
syscall
