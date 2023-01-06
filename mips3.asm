.data 
endl:.asciiz "\n"
float: .float 0.0
input: .asciiz "Input \n"
output:.asciiz "output \n"
.text
#cin for int 
.text
li $v0 , 4		#system get ready to print string 
la $a0 , input	
syscall
li $v0 , 5		#integer input system get ready
syscall
move $t0 , $v0	#moving data from v0 data from t0
li $v0 , 4		#system get ready to print string 
la $a0 , output	
syscall
li $v0 ,1		#system get ready to display integer value
move $a0 , $t0	
syscall


li $v0 , 4		#system get ready to print string 
la $a0 , endl	
syscall

#cin for float
li $v0 , 4		#system get ready to print string 
la $a0 , input	
syscall
li $v0 ,6		#system get ready to take float input
syscall
li $v0 , 4		#system get ready to print string 
la $a0 , output	
syscall 	
li $v0,2		#system get ready to print float value
mov.s $f12 , $f0	#system move input data in f0 to f12
syscall


li $v0 , 4		#system get ready to print string
la $a0 , endl
syscall


#cin for double 
li $v0 , 4		#system get ready to print string 
la $a0 , input	
syscall
li $v0 ,7		#system get ready to take float input
syscall 	
li $v0 , 4		#system get ready to print string 
la $a0 , output	
syscall
li $v0,3		#system get ready to print float value
mov.d $f12 , $f0	#system move input data in f0 to f12
syscall


li $v0 , 4		#system get ready to print string
la $a0 , endl
syscall