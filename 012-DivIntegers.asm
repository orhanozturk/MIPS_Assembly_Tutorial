.data

.text
	addi	$t0,	$zero, 30
	addi	$t1,	$zero, 8
	
	div	$t0, $t1
	mflo	$s0	# Quotiet / bölüm
	mfhi	$s1	# Remainder / kalan
	
	#print it
	li	$v0, 1
	add 	$a0, $zero, $s1
	syscall
	
# .data bölümü: Veri tanımlamak için kullanılmadığı için bu bölümde herhangi bir şey bulunmamaktadır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# addi $t0, $zero, 30: Bu komut, $t0 register'ına 30 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# addi $t1, $zero, 8: Bu komut, $t1 register'ına 8 değerini atar.
# div $t0, $t1: Bu komut, $t0'daki değeri $t1'deki değere böler. Bölme işlemi sonucu, bölüm (quotient) $s0 register'ına ve kalan (remainder) $s1 register'ına atanır.
# mflo $s0: Bu komut, bölüm (quotient) register'ını ($s0) alır.
# mfhi $s1: Bu komut, kalan (remainder) register'ını ($s1) alır.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# add $a0, $zero, $s1: Bu komut, kalan (remainder) değerini yazdırılacak argüman olarak belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.