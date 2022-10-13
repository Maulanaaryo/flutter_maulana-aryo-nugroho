# (26) MVVM Architecture

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang MVVM Architecture

### 📘 MVVM Architecture 
🖊️ Memisahkan logic dengan tampilan(View) ke dalam ViewModel

### 📖 Keuntungan
1. Reusability
- Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama
2. Maintainability
- Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
3. Testability
- Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

### 📙 Melakukan MVVM

### 📖 Struktur Direktori
- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
- Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

### 📖 Model
- Bentuk data yang akan digunakan, dibuat dalam bentuk class
- Data-data yang dimuat, diletakkan pada property
```dart
class Contact {
    final int id;
    final String name;
    final String phone;

    Contact({required this.id, required this.name, required this.phone});
}
```

### 📖 Model API
```dart
class ContactAPI {
    // getContacts digunakan untuk mengambil data dari server
    // dengan metode REST API
    // dan mengubah data tersebut ke dalam bentuk class Contact
    static Future<List<Contact>> getContacts() async {
        
        final response = await Dio().get('https://my-json-server.typicode.com/hadimmurabi/flutter-webservice/contacts');

        List<Contact> contacts = (response.data as List).map((e) => Contact(id: e['id'], name: e['name'], phone: e['phone'])).toList();
        return contacts;
    }
}
```

### 📖 ViewModel
- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga
```dart
// ViewModel untuk halaman ContactScreen
class ContactViewModel with ChangeNotifier {

    // property untuk menyimpan seluruh data Contact
    List<Contact> _contacts = [];

    // getter untuk mengambil data dari property _contacts
    List<Contact> get contacts => _contacts;

    // fungsi getAllContacts untuk :
    //  mengambil data contacts melalui Contact API
    //  menyimpan data contact pada property _contacts
    getAllContact() async {
        final c = await ContactAPI.getContacts();
        _contacts = c;
        notifyListeners();
    }
}
```

### 📖 Mendaftarkan ViewModel
- Menggunakan **MultiProvider** agar dapat menggunakan banyak ViewModel
- **MaterialApp** sebagai child utama
```dart
runApp(
    MultiProvider(
        providers: [
            ChangeNotifierProvider(
                create: (_) => ContactCiewModel(),
            )
        ],
        child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ContactScreen(),
        ),
    ),
);
```

### 📖 View
- Menggunakan StatefulWidget
```dart
// menjalankan getAllContacts
// setelah halaman ditampilkan dan siap berinteraksi dengan pengguna
@override
void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
        Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
}
```

### 📖 Menampilkan Data di View
- Letakkan pada bagian build
- Menggunakan getters yang ada pada ViewModel
- Data dapat langsung ditampilkan pada 
```dart
// pada bagian build
//  gunakan ViewModel
//  ambil data contacts
//  tampilkan pada ListView
final modelView = Provider.of<ContactViewModel>(context);

return Scaffold(
    appBar: AppBar(
        title: const Text('Contacts'),
    ),
    body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index) {
            final contact = modelView.contacts[index];
            return ListTile(
                title: Text(contact.name),
                subtitle: Text(contact.phone),
            );
        },
    ),
);
```

### 📖 Hasil Akhir
- Sebuah halaman aplikasi
- Terdapat **AppBar** yang berjudul Contacts
- Terdapat list data contact berupa nama dan nomor telepon