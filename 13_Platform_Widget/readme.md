# (13) Platform Widget

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Platform Widget

## π Flutter Platform Widget
### π Abstract
- Memanfaatkan widget dengan gaya berbeda pada ```Android``` dan ```iOS``` 

### π MaterialApp
### π Pengertian
- Widget dasar yang ```mengemas seluruh widget``` dalam aplikasi
- Widget yang digunakan pada sistem ```Android```
- Di-import dari ```package:flutter/material.dart```

### π Struktur
- Widget yang pertama kali dibuka, diletakkan pada bagian ```home```
- Mengatur halaman juga dapat dilakukan dengan menggunakan ```routes``` dan ```initialRoute```

### π Scaffold
### π Pengertian
- Widget dasar untuk membangun sebuah halaman pada MaterialApp

### π Struktur
- Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti

### π CupertinoApp
### π Pengertian
- Widget dasar yang ```mengemas seluruh widget``` dalam aplikasi
- Widget yang digunakan pada sistem ```iOS```
- Di-import dari ```package:flutter/cupertino.dart```

### π Struktur
- Variabel ```_themeDark``` dibuat untuk menyimpan tema
- Diperlukan karena Cupertino tidak menyediakan ThemeData.dark() seperti pada Material
- Widget yang pertama kali dibuka, diletakkan pada bagian ```home```

### π CupertinoPageScaffold
### π Pengertian
- Widget dasar untuk membangun sebuah halaman pada CupertinoApp
- Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti