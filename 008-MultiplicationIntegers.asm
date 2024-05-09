.data
	
.text
	addi	$s0,	$zero,	10
	addi	$s1,	$zero,	4
	
	mul	$t0,	$s0,	$s1
	
	# Display the product
	li	$v0,	1
	add 	$a0,	$zero, $t0
	syscall
	
	
# .data bölümü: Veri tanımlamak için kullanılmadığı için bu bölümde herhangi bir şey bulunmamaktadır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# addi $s0, $zero, 10: Bu komut, $s0 register'ına 10 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# addi $s1, $zero, 4: Bu komut, $s1 register'ına 4 değerini atar.
# mul $t0, $s0, $s1: Bu komut, $s0 ve $s1 register'larındaki tamsayı değerlerini çarpar ve sonucu $t0 register'ına koyar.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# add $a0, $zero, $t0: Bu komut, $t0'daki tamsayı değerini yazdırılacak argüman olarak belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.