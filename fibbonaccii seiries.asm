#fibonacciii sieries

.data 
endl: .asciiz "\n"
.text 

li $v0 ,5
syscall
move $s0 , $v0

li $v0 ,4
la $a0 ,endl
syscall

li $v0 ,5
syscall
move $s1 , $v0

li $v0 ,4
la $a0 ,endl
syscall

add $t0 , $s0, $s1
move $s0 , $s1
move $s1 , $t0 

li $v0 , 1
move $a0 , $t0
syscall

li $v0 ,4
la $a0 ,endl
syscall

add $t0 , $s0, $s1
move $s0 , $s1
move $s1 , $t0 

li $v0 , 1
move $a0 , $t0
syscall
li $v0 ,4
la $a0 ,endl
syscall

add $t0 , $s0, $s1
move $s0 , $s1
move $s1 , $t0 

li $v0 , 1
move $a0 , $t0
syscall
li $v0 ,4
la $a0 ,endl
syscall

add $t0 , $s0, $s1
move $s0 , $s1
move $s1 , $t0 

li $v0 , 1
move $a0 , $t0
syscall
li $v0 ,4
la $a0 ,endl
syscall

add $t0 , $s0, $s1
move $s0 , $s1
move $s1 , $t0 

li $v0 , 1
move $a0 , $t0
syscall
li $v0 ,4
la $a0 ,endl
syscall

add $t0 , $s0, $s1
move $s0 , $s1
move $s1 , $t0 

li $v0 , 1
move $a0 , $t0
syscall

 