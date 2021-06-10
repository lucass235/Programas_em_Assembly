.data

	saudacao: .asciiz "ola. Por favor, forneca sua idade: "
	saida: .asciiz "Sua idade e: "
.text

	li $v0, 4	#imprimir string
	la $a0, saudacao # armazena a string no registrador ($a0)
	syscall 
	
	li $v0, 5 # leitura de inteiro
	syscall # apartir desse comando a entrada de inteiro sera armazenada em ($v0).
	
	move $t0, $v0
	
	li $v0, 4	#imprimir string
	la $a0, saida # armazena a string no registrador ($a0)
	syscall 
	
	li $v0, 1 # imprimir inteiro
	move $a0, $t0 # como o syscall exibir o registrador $a0, precisamos mover o valor de $t0 para o $a0
	syscall 