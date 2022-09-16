# (12) Introduction Flutter, Widget

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Introduction Flutter, Widget

## 📚 Apa itu Flutter ?
``` Alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobilem dekstop, dan web ```

### 📖 Keunggulan Flutter
~~~
🖊️ Mudah digunakan dan dipelajari
🖊️ Produktivitas tinggi
🖊️ Dokumentasi lengkap
🖊️ Komunitas yang berkembang
~~~

### 📖 Bagian dari Flutter
~~~
🖊️ SDK (Software Development Kit)
Alat untuk membantu proses pengembangan aplikasi
🖊️ Framework
Perlengkapan untuk membuat aplikasi yang dapat dikustomisasi
~~~

### 📖 Membuat Project
- Dilakukan dengan menjalankan perintah :
``` flutter create <nama_project> ```

### 📖 Menjalankan Project
- Masuk ke direktori project
- Jalankan perintah :
``` flutter run ```

### 📖 Struktur Direktori
Direktori platform
- android
- ios
- web

Direktori project
- lib - ruang kerja utama
- test - aktivitas pengujian

### 📖 File Utama
- Pertama kali dibaca dan dijalankan
- Dalam direktori ``` lib ```

### 📘 Widget
~~~
🖊️ Digunakan untuk membentuk antarmuka (UI)
🖊️ Berupa class
🖊️ Dapat terdiri dari beberapa widget lainnya
~~~

### 📖 Jenis
Stateless
- Tidak bergantung pada perubahan data
- Hanya fokus pada tampilan
- Dibuat dengan extends pada class StatelessWidget

Stateful
- Mementingkan pada perubahan data
- Dibuat dengan extends pada class StatefullWidget
- 1 widget menggunakan 2 class (widget dan state)

### 📗 Built in Widget
~~~
🖊️ Widget yang dapat langsung digunakan
🖊️ Sudah ter-install bersama Flutter
~~~

### 📖 MaterialApp
``` Membangun aplikasi dengan desain material ```

### 📖 Scaffold
``` Membentuk sebuah halaman ```

### 📖 AppBar
``` Membentuk application bar yang terletak pada bagian atas halaman ```

### 📖 Text
``` Menampilkan teks ```