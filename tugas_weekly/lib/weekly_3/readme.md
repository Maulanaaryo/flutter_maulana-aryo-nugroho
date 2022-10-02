# Tugas Weekly (3)

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📒 Weekly
### [Weekly 03 🗒](#descriptive-)
Pada weekly_03 menerapkan state manegement pada project sebelumnya. Pada bagian Drawer -> Contact Us dibuat form untuk user jika mengisi form yang terdapat di halaman pertama dengan menekan tombol Submit.

### Main
```dart
void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => contact_store.Contact(),
          ),
        ],
        child: const MyApp(),
      ),
    );
```
### Drawer
```dart
onPressed: () {
          Navigator.push(
            context,
              MaterialPageRoute(
                builder: (context) {
                    return const ContactUsScreen();
                },
              ),
          );
        },
```
### HomeScreen
```dart
 ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlue),
                      onPressed: () {
                        if (!formKey.currentState!.validate()) return;
                        formKey.currentState!.save();
                        contactProvider.addContact(GetContact(name: inputName.text, email: inputEmail.text));
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Berhasil Memasukan Data',
                            ),
                          ),
                        );
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
```
![image](/lib/weekly_3/screenshot/image_01.png)
### Tampilan pada Contact Us
```dart
      body: ListView.builder(
        itemCount: contactProvider.contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactProvider.contacts[index].name),
            subtitle: Text(contactProvider.contacts[index].email),
          );
        },
      ),
```
![image](/lib/weekly_3/screenshot/image_03.png)
### Menambahkan Data
```dart
class Contact with ChangeNotifier {
  final List<GetContact> _contact = [];
  List<GetContact> get contacts => _contact;

  void addContact(GetContact contact) {
    _contact.add(contact);
    notifyListeners();
  } 
}
```
![image](/lib/weekly_3/screenshot/image_02.png)