Start: 
	addi $t2, $zero, 82
	addi $s0, $zero, -10
	addi $t0, $zero, 0
	addi $t1, $zero, 1
	addi $t4, $zero, 0
	addi $s1, $zero, 15
	and $t3, $a1, $t1
	beq $t3, $zero, Termine
	slt $t3, $a1, $t2
	beq $t3, $zero, Termine
	
	Loop: 
		beq $a1, $s1, Termine
		add $t0, $t0, $s1
		addi $s1, $s1, 15
		addi $t4, $t4, 1
		j Loop
Termine: 
	add $v0, $t0, $zero
	add $v1, $t4, $zero