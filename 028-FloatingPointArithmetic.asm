.data
	#number1:	.float	3.14
	#number2:	.float	2.45
	
	number3:	.double	5.14
	number4:	.double	6.45
.text
	#floating point
	#lwc1	$f2,	number1
	#lwc1	$f4,	number2
	
	#add.s	$f12,	$f2,	$f4
	
	
	#double point
	ldc1	$f6,	number3
	ldc1	$f8,	number4
	
	add.d	$f14,	$f6,	$f8
	
	
	li	$v0,	3	
	syscall
	