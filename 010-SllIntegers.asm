.data
	
.text
	addi	$s0, $zero, 4
	
	sll	$t0, $s0, 2
	
	#Print it
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
# .data bölümü: Veri tanımlamak için kullanılmadığı için bu bölümde herhangi bir şey bulunmamaktadır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# addi $s0, $zero, 4: Bu komut, $s0 register'ına 4 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# sll $t0, $s0, 2: Bu komut, $s0'daki değeri 2 bit sola kaydırır ve sonucu $t0 register'ına koyar. Yani, bu komut 4 sayısını 2 bit sola kaydırır ve sonuç olarak 16 değeri $t0 register'ına atanır.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# add $a0, $zero, $t0: Bu komut, $t0'daki tamsayı değerini yazdırılacak argüman olarak belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.