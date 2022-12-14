# (21) Flutter State Management (Provider)

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Flutter State Management (Provider)

## π Flutter Global State Management

### π State
ποΈ Data yang dapat dibaca saat pembuatan widget

ποΈ Dapat berubah saat widget sedang aktif

ποΈ Hanya dimiliki oleh **StatefulWidget**

### π Kenapa Perlu Global State?
Agar antara widget dapat memanfaatkan state yang sama dengan mudah

### π Memanfaatkan State
- Dibuat sebagai property dari class
- Digunakan pada widget saat build

```dart
// property
var number = 0;

// build
Text('$number');
```
### π Mengubah State
- Menggunakan method **setState**
```dart
ElevatedButton(
    child: const Text('Tambah'),
    onPressed: () {
        setState(() {
            number = number + 1;
        });
    },
);
```
### π Global State
ποΈ State biasa yang dapat digunakan pada seluruh widget

### π Provider
- State Management
- Perlu di-install agar dapat digunakan

### π Instalasi Provider
- Menambahkan package provider pada bagian dependencies dalam file pubspec.yaml
- Jalankan perintah **flutter pub get**

### π Membuat State Provider
- Buat file bernama contact.dart
- Definisikan state dalam bentuk class

### π Mendaftarkan State Provider
- Import dalam file **main.dart**
- Daftarkan pada **runApp** dengan **MultiProvider**

### π Menggunakan State dari Provider
- Simpan provider dalam variable
- Ambil data dari provider melalui getter
