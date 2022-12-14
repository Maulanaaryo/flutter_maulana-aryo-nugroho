# (22) Flutter State Management (BloC)

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Flutter State Management (BloC)

## π State Management

### π Declarative UI
ποΈ Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini

### π State
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
- Ada 2 jenis state dalam flutter, ephemeral state dan app state

### π Ephemeral State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya:
1. PageView
2. BottomNavigationBar
3. Switch Button
- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

### π App State
- Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya:
1. Login info
2. Pengaturan preferensi pengguna
3. Keranjanga belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

### π Pendekatan State Management
- setState :
Lebih cocok pengunaan nya pada ephemeral state
- Provider :
Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan inin direkomendasikan oleh tim flutter karena mudah dipelajari
- Bloc :
Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis login nya

### π setState

### π Latihan - Membuat Aplikasi Shop Cart

- Menggunakan pendekatan state management dengan setState

βοΈ Step 1: Membuat Project Flutter Baru
- (main.dart) pada bagian main.dart buat kode nya seperti ini
```dart
MaterialApp(
    debugShowCheckedModeBanner: false,
    title 'Shop Cart',
    theme: ThemeData(
        primarySwatch: Colors.orange,
    ),
    home: const ProductPage(),
);
```
βοΈ Step 2: Membuat Halaman Utama
- Buatlah folder baru screens, di dalam nya tambahkan file dart baru product_page.dart
- (product_page.dart) tambahkan AppBar dan IconButton
```dart
Scaffold(
    appBar: AppBar(
        title: const Text('Laptop Shop'),
        centerTitle: true,
        actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_rounded),
            ),
        ],
    ),
);
```
βοΈ Step 3: Membuat Widget Untuk Product List
- (product_page.dart) buat StatelessWidget baru ProductList dibawah StatelessWidget ProductPage, dan panggil widget ProductList nya di properti body ProductPage

βοΈ Step 4: Membuat Class Product
- Buat folder baru Models, di dalam nya buat file dart baru product.dart
- (product.dart) buat class product yang memiliki list nama-nama product

βοΈ Step 5: Menambahkan GridView
- (product_page.dart) tambahkan GridView.builder()
- (product_page.dart) buat variabel final baru productList

βοΈ Step 6: Membuat Widget ProductCards
- (product_page.dart) buat StatelessWidget baru ProductCards
- (product_page.dart) tambahkan constructor productName dan widget Card dengan child Column

βοΈ Step 7: Membuat Tampilan Cards
- (product_page.dart) tambahkan 2 Expanded widget di dalam Column, satu untuk Image.network kedua untuk nama produk dan icon cart

βοΈ Step 8: Membuat Halaman Cart Page
- Buat file dart baru cart_page.dart dan tambahkan Appbar dan Container widget pada body

βοΈ Step 9: Membuat Navigasi ke Cart Page
- (product_page.dart) buat navigasi di IconButton yang ada di bagian action AppBar

βοΈ Step 10: Mengubah ke StateFullWidget
- (product_page.dart) ubah ProductList menjadi StateFullWidget, karena disini menyimpan state yang dapat berubah dan tambahkan variabel cartList yang menjadi state nya

βοΈ Step 11: Membuat Constructor di ProductCards
- (product_page.dart) membuat constructor di ProductCards untuk mengirim perubahan state ke ProductList
- (product_page.dart) pada IconButton nya tambahkan properti constructor nya

βοΈ Step 12: Mengubah pmeanggilan di ProductCards
- (product_page.dart) menambahkan properti yang dibutuhkan widget ProductCards

βοΈ Step 13: Memahami hierarki widget
- Bagaimana mengirimkan data state ke CartPage?

βοΈ Step 14: Memahami hierarki widget
- Melakukan lift the state up, yaitu dengan memindahkan state ke hierarki di atasnya supaya dapat digunakan oleh widget-widget di bawahnya

βοΈ Step 15: Melakukan Drilling

βοΈ Step 16: Membuat Constructor di ProductList
- Buat constructor cartList di ProductList dan memperbaiki pemanggilan widget nya

βοΈ Step 17: Membuat Constructor di CartPage
- (cart_page.dart) buat constructor cartList di CartPage dan memperbaiki pemanggilan widget nya di navigasi yang ada di product_page.dart

βοΈ Step 18: Menambahkan Tampilan di CartPage
- (cart_page.dart) buat Column yang terdapat ListView dan Button

### π Provider

### π Latihan - Membuat Aplikasi Shop Cart
- Menggunakan pendekatan state management dengan Provider

βοΈ Step 1: Install Package Provider
- Tambahkan package Provider di dependencies

π Deskripsi
Class yang perlu diperhatikan dalam penggunaan provider, yaitu:
- Dari Package Provider
1. ChangeNotifierProvider
2. MultiProvider
3. Consumer

- Built In class dari Flutter SDK
1. ChangeNotifier

ποΈ ChangeNotifier
- Class yang menambah dan menghapus listeners
- Digunakan dengan cara meng-extends
- Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang

βοΈ Step 2: Membuat Provider Manager
- Buat file dart baru di dalam folder Models dengan nama cart_manager.dart
- (cart_manager.dart) pindahkan variabel cartList yang menyimpan data state di dalam class CartManager

βοΈ Step 3: Membuat Method
- (cart_manager.dart) buat method complete() di dalam class, yang digunakan untuk menambahkan data baru ke dalam list cartList 

ποΈ ChangeNotifierProvider
- Widget yang membungkus sebuah class
- Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UI nya
- Menggunakan create, provider yang akan menyimpan model yang telah dibuat

ποΈ MultiProvider
- Jika kita membutuhkan lebih dari satu provider

βοΈ Step 4: Menambahkan ChangeNotifierProvider
- (main.dart) bungkus MaterialApp dengan ChangeNotifierProvider

ποΈ Consumer
- Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
- Membangun ulang widget yang dibungkus Consumer saja
- Penting untuk meletakan Consumer pada lingkup sekecil mungkin
- Membutuhkan properti builder yang berisi context, model dan child

βοΈ Step 5: Menambahkan Consumer
- (product_page.dart) bungkus widget ProductCards dengan Consumer

βοΈ Step 6: Akses Data dengan Provider.of
- (card_page.dart) buat variabel baru yang menampung data dari provider

βοΈ Step 7: Hapus Kode Yang Tidak Dibutuhkan
- Hapus variabel dan constructor yang tidak dibutuhkan lagi

### π BloC
ποΈ BLoc(Business Logic Component)

ποΈ Memisahkan antara business logic dengan UI

### π Kenapa Bloc ?
1. Simple
2. Powerful
3. Testable

### π Cara Kerja Bloc
- Menerima event sebagai input
- Dianalisa dan Dikelola di dalam Bloc
- Menghasil state sebagai output

### π Stream 
- Rangkaian proses secara asynchronous
- Actor utama di dalam Bloc

### π Latihan Bloc
- Membuat counter app dengan pendekatan state management Bloc

βοΈ Step 1: Install Package

βοΈ Step 2: Membuat Folder Bloc
- Buat 3 file dart baru, counter_bloc.dart, counter_event.dart, counter_state.dart
- Bisa buat secara manual atau buat dengan extensions di code editor

βοΈ Step 3: Menambahkan Event
- Tambahkan event di counter_event.dart 

βοΈ Step 4: Menambahkan State
- Tambahkan state untuk menyimpan nilai counter di counter_state.dart

βοΈ Step 5: Menambahkan Logika Bisnis
- Tambahkan logika bisnis di counter_bloc.dart
- Gunakan fungsi emit untuk mengirim state terbaru

βοΈ Step 6: Menambahkan BlocProvider
- Tambahkan BlocProvider di main.dart

βοΈ Step 7: Membangun UI
- Buat folder baru screens, di dalam nya buat file dart baru home_page.dart

βοΈ Step 8: Menambahkan BlocBuilder
- Tambahkan BlocBuilder di home_page.dart

βοΈ Step 9: Mengganti Text
- Menampilkan nilai terbaru yang dimiliki state

βοΈ Step 10: Menambahkan context.read
- Tambahkan context.read pada fungsi onPressed ElevatedButton