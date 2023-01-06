.data
starik:.asciiz"*"
space:.asciiz" "
endl:.asciiz"\n"
.text
addi $t0,$0,5                          #e=$t0=0
addi $t1,$0,1                          #a=$t1=1
addi $t2,$0,0                          #b=$t2=0
loop:
ble $t1 ,5,label	# a=1;a<=5
j exit
label:
addi $t2,$0,0                           #b=$t2=0
loop2:
blt $t2,$t0,label2
li $v0,4
la $a0,endl
syscall
subi $t0,$t0,2
j shift
label2:
li $v0,4
la $a0,starik
syscall
addi $t2,$t2,1
j loop2
shift:
addi $t3,$0,0                 #c=$t3=0
loop3:
blt $t3,$t1,label3
j shift2
label3:
li $v0,4
la $a0,space
syscall
addi $t3,$t3,1
j loop3
shift2:
addi $t1,$t1,1
j loop
exit:
li $v0,10
syscall
