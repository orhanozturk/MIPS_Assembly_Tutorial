.data
	message:	.asciiz	"Hi, how are you?"

.text
	main:
		addi	$s0,	$zero,	14
		addi	$s1,	$zero,	10
	
		bgt	$s0,	$s1, 	displayHi # s0 > s1 ise
		
		# bgtz	$s0,	displayHi  # zerodan buyukse
	
	#end of main
	li	$v0,	10
	syscall

	displayHi:
		li $v0,	4
		la $a0, message
		syscall