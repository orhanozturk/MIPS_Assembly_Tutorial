.data

.text
	addi	$t0,	$zero, 30
	addi	$t1,	$zero, 5
	
	div	$s0, $t0, $t1
	
	#print it
	li	$v0, 1
	add 	$a0, $zero, $s0
	syscall
	
	
# .data bölümü: Veri tanımlamak için kullanılmadığı için bu bölümde herhangi bir şey bulunmamaktadır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# addi $t0, $zero, 30: Bu komut, $t0 register'ına 30 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# addi $t1, $zero, 5: Bu komut, $t1 register'ına 5 değerini atar.
# div $s0, $t0, $t1: Bu komut, $t0'daki değeri $t1'deki değere böler. Bölme işlemi sonucu, bölüm $s0 register'ına atanır.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# add $a0, $zero, $s0: Bu komut, $s0'daki tamsayı değerini yazdırılacak argüman olarak belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.