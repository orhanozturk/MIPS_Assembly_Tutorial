.data
	newLine:	.asciiz	"\n"
.text
	main:
		addi	$s0,	$zero,	10
		
		jal	increaseMyRegister
		
		# Print a new line
		li  	$v0, 4
		la	$a0, newLine
		syscall
		
		jal 	printTheValue
	
	#This line is going to signal end of program.
	li	$v0,	10 	#exit
	syscall
	
	increaseMyRegister:
		addi	$sp,	$sp,	-8	# 8 byte lık yer açılır
		sw	$s0,	0($sp)		#save stack  sp = s0
		sw	$ra,	4($sp)		#save stack  sp+4 = ra
		
		addi	$s0,	$s0,	30
		
		# Nested Procedure
		jal	printTheValue
						
		lw	$s0,	0($sp)  	#save register s0 = sp 
		lw	$ra,	4($sp)		#save register s0 = sp + 4
		addi	$sp,	$sp,	4	# # 4 byte lık yer geri verilir
		
		jr	$ra

	printTheValue:
		#Print new value in function
		li	$v0,	1
		move	$a0,	$s0
		syscall
		
		jr	$ra
		
# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. Burada sadece bir satır sonu karakter dizisi tanımlanmıştır.
# .text bölümü: Bu bölüm, asıl işlevin (main), alt programların (increaseMyRegister ve printTheValue) ve alt programları çağıran ana programın yer aldığı bölümdür.
# main:: main etiketi, programın başlangıcını işaret eder.
# addi $s0, $zero, 10: Bu komut, $s0 register'ına 10 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# jal increaseMyRegister: Bu komut, increaseMyRegister adlı alt programa atlar ve alt programın başlangıç adresini $ra (return address) register'ında saklar.
# li $v0, 4: Bu komut, bir karakter dizisini (string) ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 4 değeri, bir karakter dizisini yazdırmak için print_string sistem çağrısını temsil eder.
# la $a0, newLine: Bu komut, $a0 register'ına "newLine" adlı karakter dizisinin adresini yükler. Bu, yeni satır karakter dizisinin adresini sağlar.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, $a0 register'ındaki karakter dizisini yazdırmak için bir sistem çağrısı gerçekleştirilir.
# jal printTheValue: Bu komut, printTheValue adlı alt programa atlar ve alt programın başlangıç adresini $ra (return address) register'ında saklar.
# li $v0, 10: Bu komut, programın sonlanması için kullanılacak olan sistem çağrısı numarasını belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, programın sonlandırılması için bir sistem çağrısı gerçekleştirilir.
# increaseMyRegister:: increaseMyRegister etiketi, alt programın başlangıcını işaret eder.
# addi $sp, $sp, -8: Bu komut, yığıt (stack) alanını genişletir ve $sp register'ını 8 birim (8 bayt) azaltır. Yığıtta yeni bir değer saklamak için alan açılır. İki register ($s0 ve $ra) için yer ayrılır.
# sw $s0, 0($sp): Bu komut, $s0 register'ındaki değeri yığıta (stack) kaydeder. Böylece, alt programda değiştirilen değeri geçici olarak saklamak için yığıt kullanılır.
# sw $ra, 4($sp): Bu komut, $ra (return address) register'ındaki değeri yığıta (stack) kaydeder. Böylece, alt programda çağrılan alt programın dönüş adresini saklamak için yığıt kullanılır.
# addi $s0, $s0, 30: Bu komut, $s0 register'ındaki değeri 30 artırır.
# jal printTheValue: Bu komut, printTheValue adlı alt programa atlar. Alt programın çalışması bitene kadar ana programa geri dönmez.
# lw $s0, 0($sp): Bu komut, yığıttan (stack) $s0 register'ına önceki değeri geri yükler.
# lw $ra, 4($sp): Bu komut, yığıttan (stack) $ra register'ına önceki değeri geri yükler.
# addi $sp, $sp, 8: Bu komut, yığıt (stack) alanını tekrar eski boyutuna getirir ve $sp register'ını 8 birim (8 bayt) artırır. Artık kullanılmayan alanı geri verir.
# jr $ra: Bu komut, alt programı çağıran ana programa geri döner. $ra register'ında saklanan adres, alt programdan çıkış adresidir.
# printTheValue:: printTheValue etiketi, alt programın başlangıc