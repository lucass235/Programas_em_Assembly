# Proc1 retorna um valor inteiros armazenado em ($v0).
# Usaremos os registradores ($t0, $t1, $t2, $t3, $t4, $t5, $t6, $t7).
Proc1:
	# Matriz[] = $a0.
	# Vetor[] = $a1.
	# i = $a2.
	# j = $a3.
	add $t4, $a2, $a2
	add $t4, $t4, $t4
	add $t4, $t4, $t4	
	# $t4 = 8*i.
	add $t5, $a3, $a3
	add $t5, $t5, $a3
	# $t5 = 3*j.	
	add $t6, $t4, $t5		
	# $t6 = 8*i + 3*j.
	add $t6, $t6, $t6
          add $t6, $t6, $t6
          # multiplicando o endereco $t6 por 4.
          add $t6, $t6, $a1
          # armazenando o novo endereco do vetor de $a1 em $t6.
          lw $t2, 0($t6)	
          #guarda valor de V[8i+3j]= $t6 em $t2
	add $t7, $a3, $a3
	add $t7, $t7, $t7
	# $t7 = 4*j
	add $t7, $t7, $t7
	add $t7, $t7, $t7		
	#multiplicando o endereco $t7 por 4.
	add $t7, $t7, $a0		
	# armazenando o novo endereco da matriz de $a0 em $t6.
      Loop:
	
	lw $t3, 0($t7)	#guarda valor de M[4j] em $t3
	slt $t4, $t3, $t2	#se M[4j] < V[8i+3j] =1
	beq $t4, $zero, Exit #se $t4 == 0, finaliza o loop
	addi $sp, $sp, -24	#cria espaço na pilha
	sw $a2, 0($sp)	#salva i na pilha
	sw $a3, 4($sp)	#salva j na pilha
	sw $a0, 8($sp)	#salva M[] na pilha
	sw $a1, 12($sp)	#salva V[] na pilha
	sw $ra, 16($sp)	#salva retorno
	sw $t7, 20($sp)	#salva M[4j] na pilha
	add $a2, $t2, $zero	#adiciona valor de $t2 em $a2
	jal Proc2		#pula para proc2	
	lw $a3, 4($sp)	#guarda valor de j
	lw $t7, 20($sp)	#guarda valor de M[4j]
	sw $v0, 0($t7)	#atualiza valor de M[4j]
	add $a0, $a3, $zero	#adiciona valor de $a3 em $a0
	jal Proc3	 #pula para proc3
	lw $a2, 0($sp)	#guarda valor de i
	lw $a3, 4($sp)	#guarda valor de j
	lw $a0, 8($sp)	#guarda valor de M[]
	lw $a1, 12($sp)	#guarda valor de V[]
	lw $ra, 16($sp)	#guarda valor de retorno
	addi $sp, $sp, 24	#quebra a pilha
	add $a3, $a2, $v0	#j=i+proc3(j)
	j Loop		#continua o loop
     Exit:
	add $v0, $a3, $zero	#guarda valor de j em $v0
	jr $ra		#retorna $ra