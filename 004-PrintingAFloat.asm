.data
	PI:	.float 3.14
.text
	li 	$v0, 	2
	lwc1 	$f12, 	PI
	syscall
	
# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. Burada, "PI" adında bir kayan nokta (float) değişkeni tanımlanır ve değeri 3.14 olarak ayarlanır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# li $v0, 2: Bu komut, bir kayan nokta değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 2 değeri, bir kayan nokta sayısını yazdırmak için print_float sistem çağrısını temsil eder.
# lwc1 $f12, PI: Bu komut, "PI" değişkeninin bellek adresinden bir kayan nokta değerini yükler ve bunu $f12 register'ına koyar. Bu, yazdırılacak kayan nokta değeridir.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0'daki sistem çağrısı numarasına bağlı olarak, $f12'deki kayan nokta değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.