# (22) Flutter State Management (BloC)

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah halaman Home & halaman Create Contact, dengan detail sebagai berikut:
- Halaman Home akan menampilkan daftar kontak yang sudah didaftarkan dan sebuah tombol untuk navigasi ke halaman Create Contact.
- Halaman Create Contact terdiri dari 2 kolom untuk mengisi nama, nomor telepon, dan sebuah tombol untuk menyimpan kontak yang baru dibuat.
- Simpan hasil kontak yang baru dibuat dalam sebuah Map untuk nama dan emailnya.
- Simpanlah hasil kontak baru di atas, menggunakan bloc. Detail bloc terdiri dari:
- Sebuah Event sebagai perintah untuk menyimpan hasil kontaknya
Beberapa State seperti: 
- Initial (State ini ditampilkan di UI ketika bloc tidak melakukan apa-apa atau dalam status idle).
- Loading (State ini ditampilkan di UI ketika bloc mulai melakukan penambahan kontak hingga selesai prosesnya)
- Loaded (State ini ditampilkan di UI ketika bloc selesai melakukan penambahan kontak baru, dan menampilkan daftar kontak tersebut ke dalam UI). 
- Failed (State ini ditampilkan di UI ketika terjadi error pada saat melakukan penambahan kontak baru di bloc).
2. Buatlah sebuah bloc baru pada aplikasi Contact List sebelumnya. (Bloc baru ini tujuannya bebas, misal untuk menampilkan data diri setelah login dan lain-lain).

## 📒 Task
### [Task 🗒](#descriptive-)
Project diambil dari section 21 yaitu provider, selanjutnya tinggal di migrasi dari Provider ke BloC berikut untuk code nya

```dart
 BlocProvider(
      create: (context) => ContactBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
```
```dart
body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if (state.contacts.isNotEmpty) {
            return const ContactPage();
          }
```
![image](/22_Flutter-State-Management-BloC/screenshot/image_02.png)
```dart
BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          return ListView.separated(
              itemBuilder: (context, index) {
                final item = state.contacts[index];
```
![image](/22_Flutter-State-Management-BloC/screenshot/image_05.png)
```dart
Form(
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
              const SizedBox(
                height: 10,
              ),
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
                    context.read<ContactBloc>().add(AddContact(contactItem));
                    Navigator.pop(context);
                  },
                  child: const Text('CREATE CONTACT'))
            ],
          ),
        ),
      ),
```
![image](/22_Flutter-State-Management-BloC/screenshot/image_03.png)
![image](/22_Flutter-State-Management-BloC/screenshot/image_04.png)