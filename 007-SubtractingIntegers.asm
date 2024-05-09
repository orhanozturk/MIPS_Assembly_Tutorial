.data
	number1:	.word	20
	number2:	.word	8
.text
	lw	$s0,	number1  # s0 = 20
	lw	$s1,	number2  # s1 = 8
	
	sub 	$t0, 	$s0, $s1 # t0 = 20 -8
	
	li	$v0,	1
	move	$a0, 	$t0
	syscall
	
# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. "number1" ve "number2" adında iki tamsayı değişkeni tanımlanır ve sırasıyla 20 ve 8 değerleriyle başlatılır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# lw $s0, number1: Bu komut, "number1" değişkeninin bellek adresinden bir tamsayı değerini yükler ve bunu $s0 register'ına koyar.
# lw $s1, number2: Bu komut, "number2" değişkeninin bellek adresinden bir tamsayı değerini yükler ve bunu $s1 register'ına koyar.
# sub $t0, $s0, $s1: Bu komut, $s0'daki değerden $s1'deki değeri çıkarır ve sonucu $t0 register'ına koyar.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# move $a0, $t0: Bu komut, $t0'daki tamsayı değerini yazdırılacak argüman olarak belirler. move komutu, değeri bir register'dan diğerine kopyalar.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.