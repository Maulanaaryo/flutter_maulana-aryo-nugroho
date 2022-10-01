# (20) Flutter Navigation

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah halaman **Contacts** yang menampilkan data contacts menggunakan ListView dan letakkan button untuk membuka halaman **Create Contact!**
2. Lakukan navigation di atas dengan dan tanpa named routes!

## 📒 Task
### [Task 01 🗒](#descriptive-)
Pada pengerjaan pertama yaitu membuat halaman contact menggunakan ListView serta menambahkan floatingactionbutton untuk melalukan navigasi ke halaman selanjutnya yang nama Create Contact.Navigasi yang digunakan tanpa named routes karena project sebelumnya sudah menggunakan named routes
![image](/20_Flutter-Navigation/screenshot/image_02.png)
```dart
Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            color: Colors.grey,
          ),
```
![image](/20_Flutter-Navigation/screenshot/image_03.png)
```dart
      floatingActionButton: FloatingActionButton(
        // onPressed: () {
        //   Navigator.of(context)
        //       .pushNamed(AddPersonPage.routeName, arguments: addPerson);
        // },
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddPersonPage(),
            ),
          );
        },
```
```dart
const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: ContactScreen.routeName,
      // routes: {
      //   ContactScreen.routeName: (context) => const ContactScreen(),
      //   AddPersonPage.routeName:(context) => const AddPersonPage(),
      // },
      home: ContactScreen(),
    );
```
![image](/20_Flutter-Navigation/screenshot/image_04.png)
```dart
class AddPersonPage extends StatefulWidget {
  // static const routeName = 'addPerson';
  const AddPersonPage({super.key});

  @override
  State<AddPersonPage> createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddPersonPage> {
  final formKey = GlobalKey<FormState>();
  String? jenisKelamin;
  TextEditingController inputName = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
```
```dart
ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Data Tersimpan'),
                        ),
                      );
                      Navigator.of(context).pop();
                    }
                  },
```
