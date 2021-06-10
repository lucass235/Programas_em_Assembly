.data

	msg1: .asciiz "Ola qual e seu nome? "
	msg2: .asciiz "ola, "
	nome: .space 25 # variavel para armazenar uma string de tamanho 25
.text
	# coamandos de impressao da msg1.
	li $v0, 4
	la $a0, msg1
	syscall 
	
	#Comandos de leitura da String.
	li $v0, 8 # ler a string.
	la $a0, nome # armazena o nome no $a0
	la $a1, 25 # informa o tamanho de leitura
	syscall
	
	# coamandos de impressao da msg2.
	li $v0, 4
	la $a0, msg2
	syscall  
	
	# coamandos de impressao do nome.
	li $v0, 4
	la $a0, nome
	syscall
	
	