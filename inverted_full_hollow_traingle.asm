.data 
endl :.asciiz "\n"
space :.asciiz " "
sterik: .asciiz "*"
.text
addi $s0,$s0,0
addi $s1,$s1,7
addi $s2,$s2,1
addi $s3,$s3,1
start:
sub $s1,$s1,$s1
sub $s2,$s2,$s2
addi $s1,$s1,7
addi $s2,$s2,1

addi $s0,$s0,1
blt $s0,7,label
j label8


label:
bgt $s1,$s0,label2
li $v0,4
la $a0,sterik
syscall
j label3

label2:
subi $s1,$s1,1
li $v0,4
la $a0,space
syscall
j label

label3:
bne $s0,1,label4
j label6
label4:
ble $s2,$s3,label5
j label6

label5:
li $v0,4
la $a0,space
syscall
addi $s2,$s2,1
j label4

label6:
li $v0,4
la $a0,sterik
syscall
addi $s3,$s3,2
j label7

label7:
li $v0,4
la $a0,endl
syscall
j start

label8:
sub $s0,$s0,$s0
addi $s0,$zero,0
addi $s4,$s3,1
j label9

label9:
ble $s0,$s4,label10
li $v0,10
syscall
label10:
li $v0,4
la $a0,sterik
syscall
addi $s0,$s0,1
j label9