.data
	msg1: .asciiz"digite um numero: "
	msg2: .asciiz"Digite outro numero: "
	msg3: .asciiz"A soma do impares entres eles e: "
	
.text
main:
	li $v0 , 4
	la $a0, msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0 , 4
	la $a0, msg2	
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	bgt $t0, $t1, faixa1
	j faixa2
faixa1: # t2 e o menro e t3 e o maior
	add $t2, $t1, 0
	add $t3, $t0, 0
	j iniciarsoma
faixa2: 
	add $t2, $t0 , 0
	add $t3, $t1 , 0
	j iniciarsoma
iniciarsoma: 
	li $t5, 0
loop:
	bgt $t2, $t3, imprimir
	rem $t4, $t2, 2
	beq $t4, 0, proximo
	add $t5, $t5, $t2
proximo:
	add $t2, $t2, 1
	j loop
imprimir:
	li $v0 , 4
	la $a0 , msg3
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall