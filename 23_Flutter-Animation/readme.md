# (23) Flutter Animation

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Flutter Animation

### 📘 Animation
🖊️ Animasi membuat aplikasi terlihat hidup

🖊️ Widget yang bergerak menambah daya tarik

🖊️ Pergerakan dari kondisi A ke kondisi B

### 📙 Implicit Animation
🖊️ Versi animasi dari widget yang sudah ada

### 📖 Tanpa Animation
- Perubahan ukuran container tampak kaku
```dart
// state
bool isBig = false;

// container berubah ukuran
// jika isBig = true, tinggi dan lebar menjadi 200
// jika isBig = false, tinggi dan lebar menjadi 100
Container(
    width: isBig? 200 : 100,
    height: isBig? 200 : 100,
    color: Colors.red
);
```
### 📖 Dengan Animation
- Perubahan ukuran container menjadi lebih hidup dan nyaman dilihat
```dart
// state
bool isBig = false;

// container berubah ukuran
// jika isBig = true, tinggi dan lebar menjadi 200
// jika isBig = false, tinggi dan lebar menjadi 100
Container(
    width: isBig? 200 : 100,
    height: isBig? 200 : 100,
    color: Colors.red
    duration: const Duration(milliseconds: 300),
);
```
### 📗 Transition
🖊️ Animasi yang terjadi saat perpindahan halaman

🖊️ Dilakukan pada bagian Navigator.push()

### 📖 Melakukan Tansition
```dart
Navigator.of(context).push(

    // mengatur proses Navigasi terjadi
    PageRouteBuilder(

        // proses pembuatan halaman AboutScreen
        pageBuilder: (context, animation, secondaryAnimation) {
            return const AboutScreen();
        },

        // proses mengatur transition
        // halaman AboutScreen muncul dari tengah halaman
        // menuju ke halaman penuh dengan transisi bergeser (slide)
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final tween = Tween(begin: const Offset(0, .5), end: Offset.zero);

            return SlideTransition(
                position: animation.drive(tween),
                child: child,
            );
        },
    ),
);
```
### 📘 Transition Yang Umum

### 📖 FadeTransition
- Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh
```dart
final tween = Tween(begin: 0.0, end: 1.0);
return FadeTransition(
    opacity: animation.drive(tween),
    child: child,
);
```
### 📖 ScaleTransition
- Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruh
```dart
final tween = Tween(begin: 0.0, end: 1.0);
return ScaleTransition(
    scale: animation.drive(tween),
    child: child,
);
```
