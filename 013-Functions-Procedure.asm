.data
	message:	.asciiz	"Hi, everybody. \nMy name is Ameil.\n"
.text
	main:
		jal	displayMessage
		
		##
		addi 	$s0, $zero, 5
		
		#Print number 5 to the screen
		li	$v0, 1
		add	$a0, $zero, $s0
		syscall
		##
		
		#Tell the system that the program is done
		li	$v0, 10 	#exit
		syscall	
		
	displayMessage:
		li	$v0,	4  # print-string
		la	$a0,	message
		syscall
		
		jr $ra

# .data bölümü: Bu bölümde, verilerin depolandığı bölümdür. "message" adında bir karakter dizisi (string) tanımlanır ve "Hi, everybody. \nMy name is Ameil.\n" değeri atanır.
# .text bölümü: Bu bölüm, asıl işlevin (main) ve alt programın (displayMessage) yer aldığı bölümdür.
# main:: main etiketi, programın başlangıcını işaret eder.
# jal displayMessage: Bu komut, displayMessage alt programını çağırır ve alt programın başlangıç adresini $ra register'ına kaydeder. Alt programın işi tamamlandığında, $ra register'ındaki adresi kullanarak ana programa geri döner.
# li $v0, 10: Bu komut, sistem çağrısı numarasını belirler. MIPS'te, 10 değeri, bir programın sonlandırılması için exit sistem çağrısını temsil eder.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, programın sonlandırılması için bir sistem çağrısı gerçekleştirilir.
# displayMessage:: displayMessage etiketi, alt programın başlangıcını işaret eder.
# li $v0, 4: Bu komut, bir karakter dizisini (string) ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 4 değeri, bir karakter dizisini yazdırmak için print_string sistem çağrısını temsil eder.
# la $a0, message: Bu komut, $a0 register'ına "message" adlı karakter dizisinin adresini yükler. Bu, yazdırılacak karakter dizisinin adresini sağlar.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, $a0 register'ındaki karakter dizisini yazdırmak için bir sistem çağrısı gerçekleştirilir.
# jr $ra: Bu komut, alt programı çağıran ana programa geri döner. $ra register'ında saklanan adres, alt programdan çıkış adresidir.
