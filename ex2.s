.data
	msg1: .asciiz"Digite o raio: "
	msg2: .asciiz"Comprimento da circunferencia: "
.text
main:
	li $v0 , 4
	la $a0 ,msg1
	syscall
	
	li $v0 , 5
	syscall
	add $t0, $v0, 0
	
	#formua c = 2pi*raio
	#pi = 3 ou seja 2pi = 9
	li $t2 , 9
	mul $t1 , $t2, $t0
	
	li $v0 , 4
	la $a0 , msg2
	syscall
	
	li $v0 , 1
	add $a0 , $t1 ,0
	syscall