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
		
		#Print value
		li	$v0,	1
		move	$a0, $s0
		syscall
	
	#This line is going to signal end of program.
	li	$v0,	10 	#exit
	syscall
	
	increaseMyRegister:
		addi	$sp,	$sp,	-4	# 4 byte lık yer açılır
		sw	$s0,	0($sp)		#save stack  sp = s0
		
		addi	$s0,	$s0,	30
		
		#Print new value in function
		li	$v0,	1
		move	$a0,	$s0
		syscall
		
		lw	$s0,	0($sp)  	#save register s0 = sp 
		addi	$sp,	$sp,	4	# # 4 byte lık yer geri verilir
		
		jr	$ra
		
# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. Burada sadece bir satır sonu karakter dizisi tanımlanmıştır.
# .text bölümü: Bu bölüm, asıl işlevin (main) ve alt programın (increaseMyRegister) yer aldığı bölümdür.
# main:: main etiketi, programın başlangıcını işaret eder.
# addi $s0, $zero, 10: Bu komut, $s0 register'ına 10 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# jal increaseMyRegister: Bu komut, increaseMyRegister adlı alt programa atlar ve alt programın başlangıç adresini $ra (return address) register'ında saklar.
# li $v0, 4: Bu komut, bir karakter dizisini (string) ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 4 değeri, bir karakter dizisini yazdırmak için print_string sistem çağrısını temsil eder.
# la $a0, newLine: Bu komut, $a0 register'ına "newLine" adlı karakter dizisinin adresini yükler. Bu, yeni satır karakter dizisinin adresini sağlar.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, $a0 register'ındaki karakter dizisini yazdırmak için bir sistem çağrısı gerçekleştirilir.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# move $a0, $s0: Bu komut, $s0 register'ındaki değeri ekrana yazdırmak için kullanılacak olan argümanı belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, $a0 register'ındaki değeri yazdırmak için bir sistem çağrısı gerçekleştirilir.
# li $v0, 10: Bu komut, programın sonlanması için kullanılacak olan sistem çağrısı numarasını belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, programın sonlandırılması için bir sistem çağrısı gerçekleştirilir.
# increaseMyRegister:: increaseMyRegister etiketi, alt programın başlangıcını işaret eder.
# addi $sp, $sp, -4: Bu komut, yığıt (stack) alanını genişletir ve $sp register'ını 4 birim (4 bayt) azaltır. Yığıtta yeni bir değer saklamak için alan açılır.
# sw $s0, 0($sp): Bu komut, $s0 register'ındaki değeri yığıta (stack) kaydeder. Böylece, alt programda değiştirilen değeri geçici olarak saklamak için yığıt kullanılır.
# addi $s0, $s0, 30: Bu komut, $s0 register'ındaki değeri 30 artırır.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# move $a0, $s0: Bu komut, $s0 register'ındaki değeri ekrana yazdırmak için kullanılacak olan argümanı belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, $a0 register'ındaki değeri yazdırmak için bir sistem çağrısı gerçekleştirilir.
# lw $s0, 0($sp): Bu komut, yığıttan (stack) $s0 register'ına önceki değeri geri yükler.
# addi $sp, $sp, 4: Bu komut, yığıt (stack) alanını tekrar eski boyutuna getirir ve $sp register'ını 4 birim (4 bayt) artırır. Artık kullanılmayan alanı geri verir.
# `jr $ra
		