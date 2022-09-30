# (20) Flutter Navigation

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Flutter Navigation

## 📚 Flutter Navigation

### 📓 Apa itu Navigation?
🖊️ Berpindah dari halaman satu ke halaman lain

### 📘 Navigation Dasar

🖊️ Perpindahan halaman menggunakan ``` Navigator.push() ```

🖊️ Kembali ke halaman sebelumnya menggunakan ``` Navigato.pop() ```

### 📖 Perpindahan Halaman
```dart
class AboutScreen extends StatelessWidget {
    const AboutScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('About Screen'),
            ),
        );
    }
}
```
### 📖 Mengirim Data ke Halaman Baru
- Menggunakan parameter pada constructor halaman

### 📙 Navigation dengan Named Routes
Tiap Halaman memiliki alamat yang disebut route

🖊️ Perpindahan halaman menggunakan ``` Navigator.pushNamed() ```

🖊️ Kembali ke halaman sebelumnya menggunakan ``` Navigator.pop() ```

### 📖 Mendaftarkan Route
- Tambahkan initialRoute dan routes pada MaterialApp
- Tiap route adalah fungsi yang membentuk halaman
```dart
MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/',

    routes: {
        '/': (_) => const HomeScreen(),
        '/about': (_) => const AboutScreen(),
    },
);
```

### 📖 Perpindahan Halaman
```dart
ElevatedButton(
    child: const Text('Go To About Page'),
    onPressed: () {
        Navigator.of(context).pushNamed('/about');
    },
);
```
### 📖 Mengirim Data ke Halaman Baru
- Menggunakan arguments saat melakukan pushNamed
