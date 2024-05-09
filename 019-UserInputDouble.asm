.data
	prompt:	.asciiz	"Enter the value of e: "
.text
	#Display message to the user
	li	$v0,	4
	la	$a0,	prompt
	syscall
	
	# Get the double from the user
	li	$v0, 7
	syscall
	
	# Display the user's input
	li	$v0,	3
	add.d	$f12, $f0, $f10
	syscall
	
	
# .data bölümü: Bu bölümde, kullanıcıya e sayısının değerini girmesi istenen bir mesaj tanımlanmıştır.
# .text bölümü: Bu bölüm, kodun işlevselliğini içerir.
# Mesajın Gösterilmesi: Öncelikle, kullanıcıya e sayısının değerini girmesi istenir. Bu, $v0 register'ına 4 atanarak yazdırma sistem çağrısının yapılmasını sağlar ($v0'daki 4, bir karakter dizisini yazdırmak için sistem çağrısı numarasını temsil eder). Ardından, kullanıcıya e sayısının değerini girmesi için bir mesajı içeren prompt adlı karakter dizisinin adresi, $a0 register'ına yüklenir ve syscall çağrısı gerçekleştirilir.
# Çift Hassaslıklı Ondalıklı Sayının Alınması: Kullanıcıdan bir çift hassaslığı (double precision) ondalıklı sayı girişi alınır. Bu, li $v0, 7 komutuyla $v0 register'ına 7 atanır, bu da bir çift hassaslığı (double precision) ondalıklı sayı girişi almak için bir sistem çağrısının yapılmasını sağlar. Kullanıcının girdiği değer $f10'da saklanır.
# Kullanıcının Girdiğinin Gösterilmesi: Son olarak, kullanıcının girdiği değer ile e sayısının değeri toplanır ve sonuç $f12'ye atanır. Ardından, $v0'ya 3 atanır, bu da bir çift hassaslıklı (double precision) ondalıklı sayıyı yazdırmak için bir sistem çağrısı yapılmasını sağlar. $f12'deki sonuç $f0'a yüklenir ve syscall çağrısı gerçekleştirilir. Bu, kullanıcının girdiği değer ve e sayısının değerini ekleyerek elde edilen sonucun ekrana yazdırılmasını sağlar.