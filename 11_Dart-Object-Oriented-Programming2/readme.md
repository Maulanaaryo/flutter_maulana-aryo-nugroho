# (11) Dart Object Oriented Programming 2

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Dart Object Oriented Programming 2

### π Constructor
~~~
ποΈ Method yang dijalankan saat pembuatan object
ποΈ Dapat menerima parameter
ποΈ Tidak memiliki return
ποΈ Nama sama dengan class
~~~

### π Inheritance
~~~ 
ποΈ Membuat class baru dengan memanfaatkan class yang sudah ada
ποΈ Class baru yang dibuat akan dapat memiliki kemampuan class yang sudah ada
~~~
### π Implementasi
- Menambah keyword extends saat membuat class baru.

Contoh: (Nama class baru) extends (class yang sudah ada) {}

### π Method Overriding
~~~
ποΈ Menulis ulang method yang berada pada super-class agar class memiliki method yang sama, namun dengan proses yang berbeda.
~~~

### π Implementasi
- Dilakukan pada class yang melakukan inheritance dengan cara menambahkan tanda @override di baris sebelum menulis ulang method.

### π Interface
~~~
ποΈ Merupakan sebuah class yang menunjukan method apa saja yang terdapat pada suatu class.
~~~

### π Implementasi
- Menggunakan keyword implements saat pembuatan class dan seluruh method wajib di-override.

### π Abstract Class
~~~
ποΈ Berupa class abstrack, menunjukan method apa saja yang terdapat pada suatu class, tidak dapat dibuat object, dan tidak semua method harus di-override.
~~~

### π Implementasi
- Menggunakan keyword extends

### π Polymophism
~~~
ποΈ Kemampuan data berubah menjadi bentuk lain
ποΈ Tipe data yang dapat digunakan adalah super class
ποΈ Dapat dilakukan pada class dengan extends atau implements
~~~

### π Implementasi
- Dapat dilakukan pada class yang di-inheritance maupun di-interface

### π Generics
~~~
ποΈ Dapat digunakan pada class atau fungsi
ποΈ Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda
ποΈ Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi
~~~

### π Membuat class dengan generics
- Class dapat dimasukan data dengan tipe tertentu dan tipe tersebut dapat digunakan di seluruh class

### π Menggunakan class dengan generics
- Setelah nama class, menjadi tempat tipe data yang diinginkan

### π Membuat fungsi dengan generics
- Setelah nama fungsi, menjadi tempat variabel generics

### π Menggunakan fungsi dengan generics
- Setelah nama fungsi, menjadi tempat tipe data yang diinginkan