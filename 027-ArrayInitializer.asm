.data
	myArray:	.word	100:3
	newLine:	.asciiz	"\n"
.text
	main:
	
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
