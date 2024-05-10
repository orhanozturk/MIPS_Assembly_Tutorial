.data
	message:	.asciiz	"After while loop is done."
	space:		.asciiz	"\n"
.text
	main:
		# i = 0
		addi	$t0,	$zero,	0
		
		while:
			bgt	$t0,	10 , 	exit	# t0 < 10
			jal	printNumber
			addi	$t0,	$t0,	1	#i++ or i + 1
			
			j 	while			# jump target
			
		exit:
			li	$v0, 	4
			la	$a0,	message
			syscall
		
		#end of program
		li	$v0, 	10
		syscall
	
	printNumber:
		li	$v0,	1			#system print_integer
		add	$a0,	$t0,	$zero		#print a0
		syscall
		
		li	$v0,	4
		la	$a0, space
		syscall
		
		jr $ra
		
# int i = 0;

# while(i < 10) {
	#i++;
#}