# (23) Flutter Animation

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah sebuah halaman dengan spesifikasi berikut :
- menampilkan sebuah gambar kecil di posisi tengah,
- jika gambar diklik akan membesar,
- jika diklik kembali, akan mengecil(ukuran semula),
- proses perubahan gambar menggunakan animasi
2. Tambahkan transisi saat perpindahan halaman **Contact** ke **Create Contact**!

## 📒 Task_01
### [Task_01 🗒](#descriptive-)

Membuat sebuah halaman dengan gambar kecil diposisi tengah, dan proses perpindahan gambar menggunakan animasi, halaman kedua dibuat menggunakan bottom navigation bar
```dart
class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List<Widget> screen = [const HomePage(), const AnimationPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: _createBottomNavigationBar(),
    );
  }

  Widget _createBottomNavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff0096ff), Color(0xff6610f2)],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        showUnselectedLabels: false,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 30,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: 'Animation',
          ),
        ],
      ),
    );
  }
}
```
![image](/23_Flutter-Animation/screenshot/image_02.png)
![image](/23_Flutter-Animation/screenshot/image_03.png)

### Disini pembuatan gambar ditengah dan jika diklik akan membesar
```dart
Center(
          child: Stack(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                  width: selected ? 400 : 200,
                  height: selected ? 400 : 200,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1665070122183-7811591250bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80'),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(selected ? 200 : 0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
```
![image](/23_Flutter-Animation/screenshot/image_04.png)

## 📒 Task_02
### [Task_02 🗒](#descriptive-)
Untuk membuat transisi pada project Contact ke Create Contact dengan memberikan perintah di floatingactionbuttonnya, berikut untuk code nya : 
```dart
PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const AddContactPage();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                );
                return SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                );
              },
            ),
```

