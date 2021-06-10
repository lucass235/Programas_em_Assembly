.data

.text
	li $t0, 32
	li $t1, 5
	div $t0, $t1 # comando que faz a divisao de $t0/$t1
	# o  resultado vai pra o registrador (lo) e o resto para o (hi) 
	
	mflo $s0 #comando para mover o valor de (lo) para outro registrador.
	mfhi $s1 #comando para mover o valor de (hi) para outro registrador.
	
	srl $s2, $t1, 2 # coamndo para mover o binario (2) casas para a direita
	# ou seja, e a mesma coisa que dividir ($t1)/(4).