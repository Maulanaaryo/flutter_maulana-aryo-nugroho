# (21) Flutter State Management (Provider)

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah halaman Home & halaman Create Contact, dengan detail sebagai berikut:
- Halaman Home akan menampilkan daftar kontak yang sudah didaftarkan dan sebuah tombol untuk navigasi ke halaman pembuatan kontak
- Halaman Create Contact terdiri dari 2 kolom untuk mengisi nama dan nomor dan tombol untuk menyimpan kontak yang baru dibuat.
- Simpan hasil kontak yang baru dibuat dalam sebuah Map untuk nama dan emailnya, kemudian dibawa kembali ke halaman Home, lalu simpan ke sebuah List yang berisi daftar kontak yang sudah dibuat
- Gunakan List diatas untuk menampilkan daftar kontak pada halaman Home
- Ubah state di UI dengan setState()

2. Buatlah projek daftar kontak seperti soal nomor 1, dengan menggunakan state management Provider untuk mengubah state di UI

## 📒 Task
### [Task 🗒](#descriptive-)
Membuat tampilan sesuai dengan yang diberikan, selanjutnya membuat tombol untuk mengarahkan ke halaman ke-2 yaitu penginputan nama dan no telpon, setelah penginputan selesai, data yang sudah diinput muncul di halaman pertama, dan data tersebut bisa dihapus

### main.dart
```dart
ChangeNotifierProvider(
      create: (_) => Contact(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
```

### model
```dart
class Contact with ChangeNotifier {
  final List<ContactModel> _contacts = [];
  List<ContactModel> get contacts => _contacts;

  void addContact(ContactModel contact) {
    _contacts.add(contact);
    notifyListeners();
  }

    void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}
```
### Halaman Pertama
```dart
return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Consumer<Contact>(
        builder: (context, contact, child) {
          if (contact.contacts.isNotEmpty) {
            return ContactPage(contact: contact);
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.people),
                  Text('Your contact is empty')
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const AddContactPage();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
```
![image](/21_Flutter-State-Management-Provider/screenshot/image_02.png)
### Halaman Kedua
```dart
final contactProvider = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Contact'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: inputName,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    label: Text('Name')),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Name!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: inputPhone,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.phone),
                  label: Text('Phone Number'),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Input Phone Number!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(40)),
                  onPressed: () {
                    setState(() {
                      formKey.currentState!.validate();
                    });
                    if (inputName.text.isEmpty || inputPhone.text.isEmpty) {
                      return;
                    }
                    final contactItem = ContactModel(
                      id: const Uuid().v1(),
                      name: inputName.text,
                      phone: inputPhone.text,
                    );
                    contactProvider.addContact(contactItem);
                    Navigator.pop(context);
                  },
                  child: const Text('CREATE CONTACT'))
            ],
          ),
        ),
      ),
    );
```
![image](/21_Flutter-State-Management-Provider/screenshot/image_03.png)
### Halaman pertama setelah menginput data
```dart
final contactItem = contact.contacts;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.separated(
          itemBuilder: (context, index) {
            final item = contactItem[index];
            return Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person_pin,
                      size: 40,
                      color: Colors.grey[600],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          item.phone,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        contact.deleteContact(
                          index,
                        );
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.grey[600],
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: contactItem.length),
    );
```
![image](/21_Flutter-State-Management-Provider/screenshot/image_04.png)