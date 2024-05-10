.data
	myArray:	.space	12
.text
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
	
	lw	$t6,	myArray($zero)	#	t6 = myArray + 0
	
	li	$v0,	1
	addi	$a0,	$t6,	0	# print
	syscall
