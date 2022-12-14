# (16) Assets

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Assets

### π Assets
~~~
ποΈ File yang di bundled dan di deployed bersamaan dengan aplikasi
ποΈ Tipe-tipe assets, seperti: static data (JSON files), icons, images, dan font file (ttf)
~~~

### π Menentukan Assets
- Flutter menggunakan pubspec.yaml
- Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi
- Gunakan karakter "/" untuk memasukan semua assets dibawah satu directory name
~~~dart
assets:
 - assets/my_icon.png
 - assets/background.jpg
~~~
~~~dart
assets:
 - assets/
~~~ 

### π Image
~~~ 
ποΈ image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik
ποΈ Flutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIP, PNG, BMP, dan WBMP
ποΈ Menampilkan gambar dari project asset dan internet
~~~

### π Loading Images
- Gunakan widget Image
- Membutuhkan properti image dengan nilai class AssetImage()
- Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
- Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya

### π Font
~~~
ποΈ Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi
ποΈ Penentuan font yang mau dipakai biasa nya oleh UI designer
ποΈ Penerapan font menggunakan custom font atau dari package
~~~

### π Custom Font
Cara menggunakan custom font:

1. Cari dan download font
2. Import file .ttf
3. Daftarkan font di pubspec.yaml
4. Mengatur font sebagai default
5. Gunakan font di spesifik widget

### π Font dari Package
Cara menggunakan font dari package:

1. Tambahkan package google_fonts di dependencies
2. Import package di file dart
3. Gunakan font dengan memanggil GoogleFonts.namaFont()

### π Aplikasi Task Management (Continue)
Menambahkan Image
- Menambahkan image pada empty_task_screen.dart
- Membuat profile picture di profile_sheet.dart, menggunakan widget CircleAvatar
- Menambahkan font pada setiap text
- (profile_sheet.dart) menambahkan konten lain
- (empty_task_screen,dart) menambahkan text di bawah image empty screen