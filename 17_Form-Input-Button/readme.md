# (17) Form Input Button

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Form Input Button

### 📘 Form
- Menerima Isian data dari pengguna
- Isian data dapat lebih dari satu

### 📖 Membuat Form
- Menggunakan StatefulWidget
- Keadaan form disimpan menggunakan GlobalKey
```dart
// property
var formKey = GlobalKey<FormState>();

// build
Form(
    key: formKey,
    child: inputWidgets,
);
```

### 📙 Input

### 📑 TextField
- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu

### 📖 Membuat TextField
- Data diambil menggunakan TextEditingController
- Isian data berupa teks

### 📑 Radio
- Memberi opsi pada pengguna
- Hanya dapat memilih satu opsi

### 📖 Membuat Radio
- Data diambil menggunakan property dengan tipe data sesuai value pada radio

### 📑 Checkbox
- Memberi opsi pada pengguna
- Dapat memilih beberapa opsi

### 📖 Membuat Checkbox
- Data diambil menggunakan property bertipe bool

### 📑 Dropdown Button
- Memberi opsi pada pengguna
- Hanya dapat memilih satu opsi
- Opsi tidak ditampilkan di awal, hanya ditampilkan jika ditekan

### 📖 Membuat Dropdown Button
- Data diambil menggunakan property dengan tipe data sesuai value pada Dropdown MenuItem

### 📗 Button
- Bersifat seperti tombol
- Dapat melakukan sesuatu saat ditekan

### 📖 Elevated Button
- Tombol yang timbul
- Jika ditekan, akan menjalankan onPressed

### 📖 IconButton
- Tombol yang hanya menampilkan icon
- Jika ditekan, akan menjalankan onPressed