.data
	
.text
	
	li $t0, 75 # armazenamento do inteiro (75) no registrador ($t0).
	li $t1, -25 # armazenamento do inteiro (25) no registrador ($t1).
	add $s0, $t0, $t1 # somatorio do valor do registrador ($s0)=($t1)+($t0).
	addi $s1, $s0, 36 # somatorio do valor de um registrador com um inteiro.
	
	#OBS: li $t0, 75
	#          =
	#     addi $zero, 75    
	# $zero = 0
