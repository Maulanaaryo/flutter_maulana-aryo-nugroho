# (16) Assets

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Assets

### 📘 Assets
~~~
🖊️ File yang di bundled dan di deployed bersamaan dengan aplikasi
🖊️ Tipe-tipe assets, seperti: static data (JSON files), icons, images, dan font file (ttf)
~~~

### 📖 Menentukan Assets
- Flutter menggunakan pubspec.yaml
- Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
- Gunakan karakter "/" untuk memasukan semua assets dibawah satu directory name
~~~
assets:
 - assets/my_icon.png
 - assets/background.jpg
~~~
~~~
assets:
 - assets/
~~~ 

### 📙 Image
~~~ 
🖊️ image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
🖊️ Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIP, PNG, BMP, dan WBMP
🖊️ Menampilkan gambar dari project asset dan internet
~~~

### 📖 Loading Images
- Gunakan widget Image
- Membutuhkan properti image dengan nilai class AssetImage()
- Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
- Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya

### 📗 Font
~~~
🖊️ Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
🖊️ Penentuan font yang mau dipakai biasa nya oleh UI designer
🖊️ Penerapan font menggunakan custom font atau dari package
~~~

### 📖 Custom Font
Cara menggunakan custom font:

1. Cari dan download font
2. Import file .ttf
3. Daftarkan font di pubspec.yaml
4. Mengatur font sebagai default
5. Gunakan font di spesifik widget

### 📖 Font dari Package
Cara menggunakan font dari package:

1. Tambahkan package google_fonts di dependencies
2. Import package di file dart
3. Gunakan font dengan memanggil GoogleFonts.namaFont()

### 📘 Aplikasi Task Management (Continue)
Menambahkan Image
- Menambahkan image pada empty_task_screen.dart
- Membuat profile picture di profile_sheet.dart, menggunakan widget CircleAvatar
- Menambahkan font pada setiap text
- (profile_sheet.dart) menambahkan konten lain
- (empty_task_screen,dart) menambahkan text di bawah image empty screen