.data # campo para armazenar os dados na memoria principal.
	msg: .asciiz "Ola Mundo!" # criacao da variavel (msg) para armazenar a String.

.text # campo onde sera feito toda as intrucoes do programa.

	li $v0, 4 # Comando (li) de impressao do valor do registrador($v0, 4).
	
	la $a0, msg # comando para armazenar a String(msg) no registrador($a0). 
	
	syscall # Coamando para imprimir o registrador ($a0).				
