.data 
arr: .space 40
space: .asciiz " "
endl: .asciiz "\n"
.text
li $t0 ,0	#i
li $t1 ,40	#size
li $t2 ,4	#i+4
li $s0 ,0	#var
li $s1 ,0	#temp
li $t3 ,0 	#count
while:		#cin >> arr[i]
bge $t0 , $t1 , sort	#i <size
li $v0 ,5		#input to var
syscall
move $s0 , $v0		
sw $s0, arr($t0)	#arr[i] = var
addi $t0 , $t0 ,4	#i=i+4
j while

sort:
li $t0 ,0	#i = 0
while2:
bge $t3 ,$t1 , setzero 	#count<size
while3:
bge $t0 ,$t1 , setzero2	# i<size
lw $s0 , arr($t0)	#var = arr[i]
lw $s1 , arr($t2)	#temp = arr[i+4]
bgt $s0,$s1,swap
addi $t0 , $t0,4	#i=i+4
addi $t2 , $t2,4	#i=(i+4)+4
j while3
swap:
move $s2 , $s0	#temp1 = var
move $s0 , $s1	#var = temp
move $s1 , $s2	#temp = temp1
sw $s0 , arr($t0)	#var = arr[i]
sw $s1 , arr($t2)	#temp = arr[i+4]
addi $t0 , $t0,4	#i=i+4
addi $t2 , $t2,4	#i=(i+4)+4
j while3
setzero2:
li $t0 ,0	#i = 0
li $t2 ,4	#(i+4) = 4
addi $t3 ,$t3,1	#count = count+4
j while2

setzero:
li $t0 ,0	#i = 0
display:
bge $t0 , $t1 , showmax	#i<size
lw $s0 , arr($t0)	#var = arr[i]
li $v0 ,1
move $a0 , $s0
syscall			#cout <<var 
li $v0 ,4
la $a0,space
syscall			# cout << " " 
addi $t0 ,$t0 ,4	# i = i + 4
j display
##############################
showmax:
li $v0 ,4
la $a0,endl
syscall
li $t0 ,36
lw $s0 ,arr($t0)
li $v0 ,1
move $a0 , $s0
syscall			#cout <<max1 
li $v0 ,4
la $a0,space
syscall			# cout << " " 
li $t0 ,32
lw $s0 ,arr($t0)
li $v0 ,1
move $a0 , $s0
syscall			#cout <<max2
li $v0 ,4
la $a0,space
syscall			# cout << " " 
li $t0 ,28
lw $s0 ,arr($t0)
li $v0 ,1
move $a0 , $s0
syscall			#cout <<max3 
#################################
showmin:
li $v0 ,4
la $a0,endl
syscall
li $t0 ,0
lw $s0 ,arr($t0)
li $v0 ,1
move $a0 , $s0
syscall			#cout <<min1 
li $v0 ,4
la $a0,space
syscall			# cout << " " 
li $t0 ,4
lw $s0 ,arr($t0)
li $v0 ,1
move $a0 , $s0
syscall			#cout <<min2
li $v0 ,4
la $a0,space
syscall			# cout << " " 
li $t0 ,8
lw $s0 ,arr($t0)
li $v0 ,1
move $a0 , $s0
syscall			#cout <<min3 


exit:
li $v0 ,10
syscall