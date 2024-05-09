.data
	prompt:	.asciiz	"Enter your age : "
	message:	.asciiz	"\nYour age is "

.text
	# Prompt the user to enter age
	li 	$v0,	4
	la 	$a0,	prompt
	syscall
	
	
	# Get the user's age
	li	$v0, 	5
	syscall
	
	# Store the result in $t0
	move $t0, $v0
	
	# Display
	li 	$v0,	4
	la 	$a0, 	message
	syscall
	
	#Print or show the age
	li	$v0, 	1
	move	$a0,	$t0
	syscall
	
	
# .data bölümü: Bu bölüm, kullanılacak olan sabit verileri (metin dizileri gibi) depolamak için kullanılır. Burada, kullanıcıya yaşını girmesi için bir soru ve yaşın gösterileceği bir mesaj tanımlanmıştır.
# .text bölümü: Bu bölüm, kodun işlevselliğini içerir.
# Prompting: İlk olarak, kullanıcıya yaşını girmesi istenir. Bu, $v0 register'ına 4 atanarak yazdırma sistem çağrısının yapılmasını sağlar ($v0'daki 4, bir karakter dizisini yazdırmak için sistem çağrısı numarasını temsil eder). Ardından, kullanıcıya yaşını girmesi için bir mesajı içeren prompt adlı karakter dizisinin adresi, $a0 register'ına yüklenir ve syscall çağrısı gerçekleştirilir.
# Getting Input: Kullanıcı yaşını girdikten sonra, li $v0, 5 komutuyla $v0 register'ına 5 atanır. Bu, bir tamsayı girişi almak için bir sistem çağrısının yapılmasını sağlar. Kullanıcının girdiği değer $v0'daki sonuç olarak döner.
# Storing Result: Kullanıcının girdiği yaş değeri, $v0 register'ından $t0 register'ına taşınır. Bu, yaş değerini geçici olarak saklar.
# Displaying: Kullanıcıya yaşını göstermek için, öncelikle $v0'ya 4 atanır ve bu, bir karakter dizisini yazdırmak için bir sistem çağrısı yapılmasını sağlar. Ardından, yaşın gösterileceği message adlı karakter dizisinin adresi, $a0 register'ına yüklenir ve syscall çağrısı gerçekleştirilir.
# Printing or Showing the Age: Son olarak, $v0'ya 1 atanır, bu da bir tamsayı değerini yazdırmak için bir sistem çağrısı yapılmasını sağlar. Ardından, yaş değeri $a0'dan $t0'a taşınır ve syscall çağrısı gerçekleştirilir. Bu, kullanıcının girdiği yaş değerinin ekrana yazdırılmasını sağlar.