.data
	message:	.asciiz	"Hello, "
	userInput:	.space	20

.text
	main:
		# getting user's input as text
		li	$v0, 8		#read user text data
		la	$a0, userInput
		li	$a1,	20
		syscall
		
		# Displays hello
		li	$v0,	4
		la	$a0,	message
		syscall
		
		# Displays the name
		li	$v0, 4
		la	$a0,	userInput
		syscall
	
	#Tell the system this is the end of main
	li $v0,	10	#exit
	syscall
	
	
# .data bölümü: Bu bölümde, kullanıcıya selam vermek için bir mesaj ve kullanıcıdan alınacak metin girdisi için bir alan tanımlanmıştır.
# .text bölümü: Bu bölüm, kodun işlevselliğini içerir.
# Kullanıcı Girişi Alınması: İlk olarak, kullanıcıdan metin verisi girişi alınır. Bu, li $v0, 8 komutuyla $v0 register'ına 8 atanır, bu da bir metin verisi girişi almak için bir sistem çağrısının yapılmasını sağlar. Ardından, kullanıcıdan alınacak metin için ayrılmış bellek alanının adresi $a0 register'ına yüklenir ve alınacak en fazla karakter sayısı (20 burada) $a1 register'ına yüklenir. Son olarak, syscall çağrısı gerçekleştirilir.
# Selamın Gösterilmesi: Ardından, önceden tanımlanmış olan "Hello, " mesajı ekrana yazdırılır. Bu, $v0'ya 4 atanarak yazdırma sistem çağrısının yapılmasını sağlar ($v0'daki 4, bir karakter dizisini yazdırmak için sistem çağrısı numarasını temsil eder). Ardından, mesajın adresi $a0 register'ına yüklenir ve syscall çağrısı gerçekleştirilir.
# Kullanıcı Girişinin Gösterilmesi: Son olarak, kullanıcıdan alınan metin girişi ekrana yazdırılır. Bu, yine $v0'ya 4 atanarak yazdırma sistem çağrısının yapılmasını sağlar. Ancak bu sefer $a0 register'ına, kullanıcıdan alınan metnin bulunduğu bellek alanının adresi yüklenir ve syscall çağrısı gerçekleştirilir.
# Ana Programın Sonlandırılması: Programın sonlandırılması için bir sistem çağrısı yapılır. $v0'ya 10 atanarak ($v0'daki 10, programın sonlandırılması için sistem çağrısı numarasını temsil eder) syscall çağrısı gerçekleştirilir. Bu, programın sonlandırılmasını sağlar.