.data
	number1:  .word 5
	number2:  .word 10
.text
	lw $t0,	number1($zero)
	lw $t1,	number2($zero)
	
	add $t2, $t0, $t1	#t2 = t0 + t1
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	

# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. Burada, "number1" ve "number2" adında iki tamsayı değişkeni tanımlanır ve sırasıyla 5 ve 10 değerleri ile başlatılır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# lw $t0, number1($zero): Bu komut, "number1" değişkeninin bellek adresinden bir tamsayı değerini yükler ve bunu $t0 register'ına koyar. $zero register'ı adres ofsetini temsil eder ve bu durumda ofset 0 olduğu için doğrudan "number1" değişkeninin değerine erişilir.
# lw $t1, number2($zero): Bu komut, "number2" değişkeninin bellek adresinden bir tamsayı değerini yükler ve bunu $t1 register'ına koyar. Benzer şekilde, $zero register'ı adres ofsetini temsil eder ve bu durumda ofset 0 olduğu için doğrudan "number2" değişkeninin değerine erişilir.
# add $t2, $t0, $t1: Bu komut, $t0 ve $t1 register'larındaki tamsayı değerlerini toplar ve sonucu $t2 register'ına koyar.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 1 değeri, bir tamsayıyı yazdırmak için print_integer sistem çağrısını temsil eder.
# add $a0, $zero, $t2: Bu komut, $t2'deki tamsayı değerini yazdırılacak argüman olarak belirler. $zero register'ı, değerin kendisi olarak kabul edilir ve $t2 register'ındaki değeri $a0 register'ına yükler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.