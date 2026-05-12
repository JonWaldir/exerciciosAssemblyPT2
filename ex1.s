.data
	msg1: .asciiz"\Digite o comprimento do  paralelepípedo: "
	msg3: .ascii"\nDgite a largura do  paralelepípedo: "
	msg2: .asciiz"\nDigite a altura do  paralelepípedo: "
	msg4: .asciiz"\n volume total = "
.text
main:

	li $v0 , 4
	la $a0 , msg1
	syscall
	li $v0 , 5
	syscall
	add $t0 , $v0,0 #t0 = comprimento
	
	li $v0 , 4
	la $a0 , msg2
	syscall
	li $v0 ,5
	syscall
	add $t1 , $v0 0 #t1 = largura
	
	li $v0 , 4
	la $a0, msg3
	syscall
	li $v0 , 5
	syscall
	add $t2, $v0 , 0 #t2 = altura
	
	#calculo
	mul $t3, $t0, $t1 #falta altura
	mul $t3 ,$t3, $t2
	
	li $v0 , 4
	la $a0 , msg4
	syscall
	
	li $v0 , 1
	add $a0 , $t3, 0
	syscall
	
	
