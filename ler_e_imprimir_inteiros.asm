.data

	msg1: .asciiz "Ola, forneca sua idade: "
	msg2: .asciiz "Sua idade e: "
	
.text
	# comandos para exibir a msg1.
	li $v0, 4 # Imprimir String
	la $a0, msg1 # armazena a String no registrador.
	syscall # Coamando para imprimir o registrador ($a0).
	
	#coamndo para ler o valor inteiro.
	li $v0, 5 # comando para ler inteiros.
	syscall 	# Coamando para imprimir o registrador ($a0).
	
	#comando para mover valores de registradores.
	move $t0, $v0 # armazenar o valor de ($v0) em ($t0)	
	
	#coamndos para exibir a String msg2.
	li $v0, 4 # Imprimir String
	la $a0, msg2 # armazena a String no registrador.
	syscall 	# Coamando para imprimir o registrador ($a0).																									
	
	li $v0, 1 # imprimir um inteiro no $v0
	move $a0, $t0 # armazenar o valor de ($t0) em ($a0)
	syscall # Coamando para imprimir o registrador ($a0).