.data
	age: .word 23  # this is a word or integer
.text 
	# Prints an integer to the screen
	li $v0, 1
	lw $a0, age
	syscall
	
#.data bölümü: Bu bölümde, verilerin depolandığı bölümdür. Burada, "age" adında bir tamsayı (4 byte) değişkeni tanımlanır ve değeri 23 olarak ayarlanır.
#.text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
#li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 1 değeri, bir tamsayıyı yazdırmak için print_integer sistem çağrısını temsil eder.
#lw $a0, age: Bu komut, "age" değişkeninin bellek adresinden (4 byte) bir tamsayı değerini yükler ve bunu $a0 register'ına koyar. Bu, yazdırılacak tamsayı değeridir.
#syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki tamsayı değerini yazdırmak için bir sistem çağrısı gerçekleştirilir.