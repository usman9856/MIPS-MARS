.data
endl: .asciiz "\n"
int: .asciiz "Printing Integer \n"
float: .asciiz "Printing Float \n"
char: .asciiz "Printing Character \n"
string: .asciiz "Printing String \n"
double: .asciiz "Printing Double \n"
inum: .word 100
fnum: .float 9.5
dnum: .double 3.142
st: .asciiz "This is string printed \n"
ch: .byte 'U'

.text
 
#endl
li $v0 ,4
la $a0 , endl
syscall
######################################
#integer 
li $v0 ,4
la $a0 , int
syscall

li $v0 , 1
lw $a0 ,inum
syscall

#endl
li $v0 ,4
la $a0 , endl
syscall
########################################
#float
li $v0 ,4
la $a0 , float
syscall

li $v0 , 2
lwc1 $f12 ,fnum
syscall

#endl
li $v0 ,4
la $a0 , endl
syscall
########################################
#double
li $v0 ,4
la $a0 , double
syscall

li $v0 , 3
ldc1 $f12 ,dnum
syscall

#endl
li $v0 ,4
la $a0 , endl
syscall
#########################################
#String
li $v0 ,4 
la $a0 ,string
syscall

li $v0 ,4
la $a0, st
syscall

#endl
li $v0 ,4
la $a0 , endl
syscall
#########################################
#Character
li $v0 , 4
la $a0 ,char
syscall

li $v0, 4 
la $a0 ,ch
syscall

#endl
li $v0 ,4
la $a0 , endl
syscall

#########################################




