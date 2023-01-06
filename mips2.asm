.data 
n1: .word 5
n2: .word 10

.text
lw $t1 , n1
lw $t2 , n2

add $t3 , $t1 , $t2
sub $t3 , $t1 , $t2
mult $t1 , $t2
mflo $a0
div $t3 , $t2, $t1
li $v0 ,1
move $a0 , $t3
syscall