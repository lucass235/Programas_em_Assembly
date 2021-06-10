.text

	li $t0, 12
	addi $t1, $zero, 10
	mul $s0, $t0, $t1 # coamndo para multiplicar valores.
	sll $s1, $t1, 10 # comando (sll) para multiplicacao de potencias.
	
	li $v0, 1 #comandado para imprimir inteiros
	move $a0, $s0 # comando para mover valores de um para outro registrador.
	syscall 