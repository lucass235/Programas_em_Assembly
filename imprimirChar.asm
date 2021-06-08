.data
	
	caracter: .byte 'A' # Criacao da variavel para armazenar o char (A).

.text

	li $v0, 4 # imprimir um char ou String.
	
	la $a0, caracter # armazena o (caracter) em ($a0).
	
	syscall # imprimir o registrador $a0.
	
	li $v0, 10 # Encerrar programa
	
	syscall # Coamando para imprimir o registrador ($a0).