# (17) Form Input Button

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Form Input Button

### π Form
- Menerima Isian data dari pengguna
- Isian data dapat lebih dari satu

### π Membuat Form
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

### π Input

### π TextField
- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu

### π Membuat TextField
- Data diambil menggunakan TextEditingController
- Isian data berupa teks

### π Radio
- Memberi opsi pada pengguna
- Hanya dapat memilih satu opsi

### π Membuat Radio
- Data diambil menggunakan property dengan tipe data sesuai value pada radio

### π Checkbox
- Memberi opsi pada pengguna
- Dapat memilih beberapa opsi

### π Membuat Checkbox
- Data diambil menggunakan property bertipe bool

### π Dropdown Button
- Memberi opsi pada pengguna
- Hanya dapat memilih satu opsi
- Opsi tidak ditampilkan di awal, hanya ditampilkan jika ditekan

### π Membuat Dropdown Button
- Data diambil menggunakan property dengan tipe data sesuai value pada Dropdown MenuItem

### π Button
- Bersifat seperti tombol
- Dapat melakukan sesuatu saat ditekan

### π Elevated Button
- Tombol yang timbul
- Jika ditekan, akan menjalankan onPressed

### π IconButton
- Tombol yang hanya menampilkan icon
- Jika ditekan, akan menjalankan onPressed