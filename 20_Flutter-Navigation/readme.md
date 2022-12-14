# (20) Flutter Navigation

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Flutter Navigation

## π Flutter Navigation

### π Apa itu Navigation?
ποΈ Berpindah dari halaman satu ke halaman lain

### π Navigation Dasar

ποΈ Perpindahan halaman menggunakan ``` Navigator.push() ```

ποΈ Kembali ke halaman sebelumnya menggunakan ``` Navigato.pop() ```

### π Perpindahan Halaman
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
### π Mengirim Data ke Halaman Baru
- Menggunakan parameter pada constructor halaman

### π Navigation dengan Named Routes
Tiap Halaman memiliki alamat yang disebut route

ποΈ Perpindahan halaman menggunakan ``` Navigator.pushNamed() ```

ποΈ Kembali ke halaman sebelumnya menggunakan ``` Navigator.pop() ```

### π Mendaftarkan Route
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

### π Perpindahan Halaman
```dart
ElevatedButton(
    child: const Text('Go To About Page'),
    onPressed: () {
        Navigator.of(context).pushNamed('/about');
    },
);
```
### π Mengirim Data ke Halaman Baru
- Menggunakan arguments saat melakukan pushNamed
