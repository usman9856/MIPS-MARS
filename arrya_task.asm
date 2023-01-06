.data 
array: .space 24
guide_user: .asciiz "Enter data into array\n"
guide_user2: .asciiz "Data from array\n"
endl: .asciiz "\n"
.text
li $v0 ,4
la $a0 , guide_user #user question
syscall
addi $t0 ,$0 , 0 #delcarin array -4 later addition to make it 0
insert_loop:
beq $t0 ,24 ,reset #if space limit reached then end insertion
li $v0 ,7	#take user input
syscall
mov.d $f2 , $f0 #move input value to s0
swc1  $f2 , array($t0) #store s0 value to array position
addi $t0 , $t0 ,8 #increment spaces for the array
j insert_loop
reset:
addi $t0 ,$0,0 	#reseting array to 0 position by adding -4+4



display:
bge $t0 , 28, exit

li $v0 ,4
la $a0 , endl
syscall

li $v0 ,4
la $a0 , guide_user2
syscall

li $v0 ,4
la $a0 , endl
syscall

lwc1  $f8 , array($t0)

li $v0 , 3 
mov.d $f12 ,$f8
syscall
addi $t0 ,$t0,8
j display



exit:
li $v0 ,10		#end system program
syscall
