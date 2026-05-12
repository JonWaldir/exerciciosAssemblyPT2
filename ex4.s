.data
	msg1:.asciiz "\nDigite sua nota 1: "
	msg2:.asciiz "\nDigite sua nota 2: "
	msg3:.asciiz "\nDigite sua nota 3: "
	msg4:.asciiz "\nDigite sua nota 4: "
	aprovado: .asciiz"aprovado!"
	exame: .asciiz"exame"
	retido:.asciiz"retido"
.text
main:
	# --------Recebe as 4 notas
	li $v0 , 4 
	la $a0 , msg1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	li $v0 , 4 
	la $a0 , msg2
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	li $v0 , 4 
	la $a0 , msg3
	syscall
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
	li $v0 , 4 
	la $a0 , msg4
	syscall
	li $v0, 5
	syscall
	add $t3, $v0, 0
	
	#calculo de media
	add $t4 , $t0, $t1
	add $t4, $t2, $t4
	add $t4 , $t4, $t3
	div $t4, $t4, 4
	#t4 e a nota final
	
	bge $t4, 6 , aprovados
	bge $t4 , 3, exames
	j retidos
	
	aprovados:
	li $v0 , 4
	la $a0, aprovado
	syscall
	j final
	
	exames:
	li $v0, 4
	la $a0, exame
	syscall
	j final
	
	retidos:
	li $v0, 4
	la $a0, retido
	syscall
	j final
	final:
	
	
	