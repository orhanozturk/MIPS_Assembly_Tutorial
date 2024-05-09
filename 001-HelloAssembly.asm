.data
    	myMessage: .asciiz "Hello World \n"

.text
	li $v0, 4
	la $a0, myMessage
	syscall


#Kodun ne yaptığını şöyle açıklayabilirim:

# .data bölümü: Bu bölüm, verilerin bildirildiği kısımdır. Bu durumda, .asciiz direktifi kullanılarak myMessage adında bir dize değişkeni bildirilir. Dize "Merhaba Dünya" yazısı ve ardından bir satır atlamayı ifade eden \n karakterini içerir.
# .text bölümü: Bu bölüm, ana kod için kullanılır.
# li $v0, 4: Hemen yükle - Bu komut, 4 değerini $v0 kaydırına yükler. MIPS'te, $v0 kaydı, bir dizenin yazdırılması için sistem çağrısı numarasını tutar.
# la $a0, myMessage: Adres yükle - Bu komut, myMessage dizesinin adresini $a0 kaydırına yükler. Bu kayıt, bu durumda yazdırılacak dizenin adresini içerir.
# syscall: Bu komut, $v0'da belirtilen işlemi, $a0, $a1, $a2 ve $a3'teki argümanlarla birlikte yürütmek için bir sistem çağrısı yapar. Bu durumda, $a0'daki adresteki diziyi yazdırmak için kullanılır.
# Yani, bu kod çalıştığında "Merhaba Dünya" yazısını ve ardından bir satır atlayarak ekrana yazdıracaktır.
#