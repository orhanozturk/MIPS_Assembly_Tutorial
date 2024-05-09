.data
	message:	.asciiz	"The numbers are equal."
	message1:	.asciiz	"The numbers are differentl."
	message2:	.asciiz	"Nothing happened."

.text
	main:
		addi	$t0,	$zero,	20
		addi 	$t1,	$zero,	20
		
		bne	$t0, $t1, numbersDifferent 		# not equal
	#	beq	$t0, $t1, numbersEqual 			# eşitse numbersEqual cagrılır
	
		b numbersDifferent
		# Syscall to end prograg
		li $v0, 10
		syscall
		
		
	numbersEqual:
		li	$v0, 	4
		la	$a0,	message
		syscall
		
	numbersDifferent:
		li	$v0, 	4
		la	$a0,	message1
		syscall
		
# .data bölümü: Bu bölümde, farklı senaryolar için mesajlar tanımlanmıştır.
# .text bölümü: Bu bölüm, kodun işlevselliğini içerir.
# İki Sayının Karşılaştırılması: İki tane sayı ($t0 ve $t1) önce belirlenir. Ardından, bne komutu kullanılarak bu iki sayı karşılaştırılır. Eğer $t0 ve $t1 eşit değilse (bne "branch not equal" anlamına gelir), numbersDifferent etiketinin olduğu yere atlanır ve farklılık mesajı yazdırılır.
# Eşit Sayılar: Eğer iki sayı eşitse, numbersEqual etiketinin olduğu yere atlanır ve eşitlik mesajı yazdırılır.
# Programın Sonlandırılması: Son olarak, programın sonlanması için bir sistem çağrısı yapılır. $v0'ya 10 atanarak ($v0'daki 10, programın sonlandırılması için sistem çağrısı numarasını temsil eder) syscall çağrısı gerçekleştirilir. Bu, programın sonlandırılmasını sağlar.
# Ancak, numbersEqual etiketine atlamak için beq komutu kullanılmış gibi görünüyor, ancak bu kısım yorum satırı haline getirilmiş. Eğer eşitlik durumuna göre de işlem yapmak istiyorsanız, bu kısmı yorum satırından çıkartarak, beq komutunu kullanarak, numbersEqual etiketine doğrudan atlayabilirsiniz.	