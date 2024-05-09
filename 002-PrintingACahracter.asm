
.data
    	myCharacter: .byte 'm'

.text
	li $v0, 4
	la $a0, myCharacter
	syscall


#.data bölümü: Bu bölüm, verilerin bildirildiği kısımdır. .byte direktifi kullanılarak bir karakter değişkeni olan myCharacter tanımlanır. Bu karakter 'm' olarak belirlenir.
#.text bölümü: Bu bölüm, kodun asıl çalıştığı bölümdür.
#li $v0, 4: Bu komut, yazdırma işlemi için kullanılacak olan sistem çağrısı numarasını belirler. MIPS'te, 4 değeri, bir dizi karakterin yazdırılması için print_string sistem çağrısını temsil eder.
#la $a0, myCharacter: Bu komut, myCharacter değişkeninin bellek adresini $a0 kaydına yükler. Yazdırma işlemi için kullanılacak olan karakterin adresini sağlar.
#syscall: Bu komut, belirtilen işlemi gerçekleştirmek için sistem çağrısını yapar. Burada, $v0'daki sistem çağrısı numarasına bağlı olarak, $a0'daki karakteri yazdırmak için bir sistem çağrısı gerçekleştirilir.
#Yani, bu kod parçası, 'm' karakterini ekrana yazdıracaktır.

