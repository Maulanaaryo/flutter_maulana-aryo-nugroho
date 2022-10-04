# (21) Flutter State Management (Provider)

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Flutter State Management (Provider)

## 📚 Flutter Global State Management

### 📘 State
🖊️ Data yang dapat dibaca saat pembuatan widget

🖊️ Dapat berubah saat widget sedang aktif

🖊️ Hanya dimiliki oleh **StatefulWidget**

### 📖 Kenapa Perlu Global State?
Agar antara widget dapat memanfaatkan state yang sama dengan mudah

### 📖 Memanfaatkan State
- Dibuat sebagai property dari class
- Digunakan pada widget saat build

```dart
// property
var number = 0;

// build
Text('$number');
```
### 📖 Mengubah State
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
### 📙 Global State
🖊️ State biasa yang dapat digunakan pada seluruh widget

### 📖 Provider
- State Management
- Perlu di-install agar dapat digunakan

### 📖 Instalasi Provider
- Menambahkan package provider pada bagian dependencies dalam file pubspec.yaml
- Jalankan perintah **flutter pub get**

### 📖 Membuat State Provider
- Buat file bernama contact.dart
- Definisikan state dalam bentuk class

### 📖 Mendaftarkan State Provider
- Import dalam file **main.dart**
- Daftarkan pada **runApp** dengan **MultiProvider**

### 📖 Menggunakan State dari Provider
- Simpan provider dalam variable
- Ambil data dari provider melalui getter
