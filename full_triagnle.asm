.data 
starik : .asciiz "*"
space: .asciiz " "
endl: .asciiz "\n"
.text 
li $s1, 1#i
li $s2, 1#j
li $s3, 0#k
li $s4, 6#rows
li $t1 , 2#temp_val
for1:
li $v0 ,4
la $a0 ,endl	#print space
syscall
sub $s2 , $s2 ,$s2
sub $s3 , $s3 ,$s3
sub $t0 , $s4 , $s1	#row -i
mult $t1 , $s1	#2*i
mflo $t2		
subi $t2 ,$t2 ,1 	#2*i-1
ble  $s1 , $s4,for2	#i <=rows
j exit
for2:
ble $s2 , $t0 , print_space	#j < row-i
j while
print_space:
li $v0 ,4
la $a0 , space
syscall
addi $s2 ,$s2 ,1		#j++
j for2

while:
bne $s3 , $t2, print_starik	#k!=2*i-1
addi $s1 , $s1 ,1		#i++
j for1
print_starik:
li $v0 , 4
la $a0 , starik		#print starik
syscall
addi $s3 , $s3 ,1		#k++
j while
j exit 
exit :
li $v0 ,10
syscall
