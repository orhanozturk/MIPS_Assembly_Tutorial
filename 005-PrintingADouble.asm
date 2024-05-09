.data
	myDouble:	.double 5.202
	zeroDouble:	.double 0.0
.text
	ldc1	$f2,	myDouble
	ldc1	$f0, 	zeroDouble
	
	li 	$v0, 	3
	add.d	$f12,	$f2, $f0
	syscall
	
# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. Burada, "myDouble" adında bir çift hassaslıkta kayan nokta (double) değişkeni tanımlanır ve değeri 5.202 olarak ayarlanır. Ayrıca, "zeroDouble" adında başka bir çift hassaslıkta kayan nokta değişkeni tanımlanır ve değeri 0.0 olarak ayarlanır.
# .text bölümü: Bu bölüm, asıl işlevin yer aldığı bölümdür.
# ldc1 $f2, myDouble: Bu komut, "myDouble" değişkeninin bellek adresinden bir çift hassaslıkta kayan nokta değerini yükler ve bunu $f2 register'ına koyar. Bu, toplanacak olan ilk çift hassaslıkta kayan nokta değeridir.
# ldc1 $f0, zeroDouble: Bu komut, "zeroDouble" değişkeninin bellek adresinden bir çift hassaslıkta kayan nokta değerini yükler ve bunu $f0 register'ına koyar. Bu, toplanacak olan ikinci çift hassaslıkta kayan nokta değeridir.
# li $v0, 3: Bu komut, bir çift hassaslıkta kayan nokta sayısını ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 3 değeri, bir çift hassaslıkta kayan nokta sayısını yazdırmak için print_double sistem çağrısını temsil eder.
# add.d $f12, $f2, $f0: Bu komut, $f2 ve $f0 register'larındaki çift hassaslıkta kayan nokta sayılarını toplar ve sonucu $f12 register'ına koyar.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0'daki sistem çağrısı numarasına bağlı olarak, $f12'deki çift hassaslıkta kayan nokta sayısını yazdırmak için bir sistem çağrısı gerçekleştirilir.