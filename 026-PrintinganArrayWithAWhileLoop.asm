.data
	myArray:	.space	12
	newLine:	.asciiz	"\n"
.text
	main:
	addi	$s0,	$zero,	5
	addi	$s1,	$zero,	10
	addi	$s2,	$zero,	12
	
	#index = $t0
	addi	$t0,	$zero,	0
	
	sw	$s0,	myArray($t0)	#	myArray+0 = s0
	addi	$t0,	$t0,	4
	sw	$s1,	myArray($t0)	#	myArray+4 = s1
	addi	$t0,	$t0,	4
	sw	$s2,	myArray($t0)	#	myArray+8 = s2
	
	# clear $t0 to 0
	addi	$t0,	$zero,	0
	
	
	while:
		beq	$t0,	12,	exit
		
		lw	$t6,	myArray($t0)
		
		addi	$t0,	$t0,	4
		
		#print current number
		li	$v0,	1
		move	$a0,	$t6
		syscall
		
		#print new line
		li	$v0,	4
		la	$a0,	newLine
		syscall
		
		j while
	
	exit:
		#Tell system this end of program
		li	$v0,	10
		syscall
