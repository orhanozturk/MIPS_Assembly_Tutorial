.data
	message:	.asciiz	"Hi, everybody. \nMy name is Ameil.\n"
.text
	main:
		addi	$a1,	$zero,	50
		addi	$a2,	$zero,	100
		
		jal	addNumbers
		
		li	$v0,	1
		addi	$a0, $v1, 0
		syscall
		
		#Tell the system that the program is done
		li	$v0, 10 	#exit
		syscall	
		
	addNumbers:
		add	$v1, $a1, $a2
		
		jr 	$ra
		
# main:: main etiketi, programın başlangıcını işaret eder.
# addi $a1, $zero, 50: Bu komut, $a1 register'ına 50 değerini atar. $zero register'ı, sabit 0 değerini temsil eder.
# addi $a2, $zero, 100: Bu komut, $a2 register'ına 100 değerini atar.
# jal addNumbers: Bu komut, addNumbers adlı alt programa atlar ve alt programın başlangıç adresini $ra (return address) register'ında saklar.
# li $v0, 1: Bu komut, bir tamsayı değerini ekrana yazdırmak için kullanılacak olan sistem çağrısı numarasını belirler.
# addi $a0, $v1, 0: Bu komut, $a0 register'ına toplam değeri ($v1) yükler. $v1 register'ı, alt programın sonucunu tutar.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, $a0 register'ındaki değeri yazdırmak için bir sistem çağrısı gerçekleştirilir.
# li $v0, 10: Bu komut, programın sonlanması için kullanılacak olan sistem çağrısı numarasını belirler.
# syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0 register'ındaki sistem çağrısı numarasına bağlı olarak, programın sonlandırılması için bir sistem çağrısı gerçekleştirilir.
# addNumbers:: addNumbers etiketi, alt programın başlangıcını işaret eder.
# add $v1, $a1, $a2: Bu komut, $a1 ve $a2 register'larındaki değerleri toplar ve sonucu $v1 register'ına atar. $v1 register'ı, toplam değeri saklar.
# jr $ra: Bu komut, alt programı çağıran ana programa geri döner. $ra register'ında saklanan adres, alt programdan çıkış adresidir.