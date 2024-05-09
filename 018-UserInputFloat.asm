.data
	message:		.asciiz		"Enter the valur of PI: "
	zeroAsFloat:		.float		0.0
.text
	lwc1	$f4	zeroAsFloat
	
	#Display message
	li	$v0,	4	#string ekrana yazdırma sistem cagrısı
	la	$a0,	message
	syscall
	
	# Read user's input
	li	$v0,	6	# ondalık girişi ve $f0 atanır
	syscall
	
	# Display value
	li	$v0,	2 	# ondalık sayı yazdırma sistem cagrısı
	add.s	$f12, $f0, $f4
	syscall
		
	
# .data bölümü: Bu bölümde, kullanıcının ondalıklı sayı girmesi istenen bir mesaj ve sıfır olarak başlatılacak bir ondalıklı sayı sabit olarak tanımlanmıştır.
# .text bölümü: Bu bölüm, kodun işlevselliğini içerir.
# Load Zero: İlk olarak, lwc1 komutu kullanılarak sıfır olarak başlatılan bir ondalıklı sayı $f4 register'ına yüklenir.
# Displaying Message: Kullanıcıya Pi'nin değerini girmesi istenir. Bu, $v0 register'ına 4 atanarak yazdırma sistem çağrısının yapılmasını sağlar ($v0'daki 4, bir karakter dizisini yazdırmak için sistem çağrısı numarasını temsil eder). Ardından, kullanıcıya Pi'nin değerini girmesi için bir mesajı içeren message adlı karakter dizisinin adresi, $a0 register'ına yüklenir ve syscall çağrısı gerçekleştirilir.
# Reading User Input: Kullanıcıdan bir ondalıklı sayı girişi alınır. Bu, li $v0, 6 komutuyla $v0 register'ına 6 atanır, bu da bir ondalıklı sayı girişi almak için bir sistem çağrısının yapılmasını sağlar. Kullanıcının girdiği değer $f0'da saklanır.
# Displaying Value: Son olarak, kullanıcının girdiği değer ile sıfır olarak başlatılan değer ($f4) toplanır ve sonuç $f12'ye atanır. Ardından, $v0'ya 2 atanır, bu da bir ondalıklı sayıyı yazdırmak için bir sistem çağrısı yapılmasını sağlar. $f12'deki sonuç $a0'a yüklenir ve syscall çağrısı gerçekleştirilir. Bu, kullanıcının girdiği değer ve Pi'nin değerini ekleyerek elde edilen sonucun ekrana yazdırılmasını sağlar.