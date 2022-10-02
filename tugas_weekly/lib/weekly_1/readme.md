# Tugas Weekly (1)

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📒 Weekly
### [Weekly 01 🗒](#descriptive-)
Tugas untuk membuat halaman terdapat gambar dan kata-kata yang menarik dan halaman tersebut dapat dilakukan scroll serta terdapat beberapa kriteria lainnya, seperti :
1. membuat 3 form (username, email, dan message)
2. Memiliki button submit
3. (optional) jika menekan tombol submit maka keluar alert yang berisikan data yang kita masukkan pada form
---
### Berikut source code dalam pembuatan header, terdapat app bar, serta gambar dan kata-kata, untuk header terdapat appbar yang terdiri dari drawer nama project dan logo(diambil dari asset/lokal), serta terdapat hiasan gambar yang diambil dari network dan kata-kata yang menarik.
```dart
Scaffold(
      appBar: AppBar(
        title: const Text('AskMin'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                child: Image.asset('assets/image_01.jpg'),
              ),
            ],
          ),
        ],
      ),
      drawer: const DrawerScreen(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.network(
              'https://unsplash.com/photos/W3DJSagu-a0/download?ixid=MnwxMjA3fDB8MXxhbGx8NHx8fHx8fDJ8fDE2NjM5MzgwMTA&force=true&w=1920',
              fit: BoxFit.cover,
              height: 400,
              width: 400,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.android),
                  title: Center(
                    child: Text(
                      'Welcome to AskMin!\n Feeling mixed up? Dont worry. AskMin is here to help convey your request',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.android),
                ),
              ),
            ),
```
![image](/lib/weekly_1/screenshot/image_03.jpeg)
### DRAWER
```dart
Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(''),
            accountEmail: Text(''),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1663711935287-4a7323fea555?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80'),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1663953009099-a83b8c8d065b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  onPressed: () {},
                  child: const Text('Contact us'),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const AboutUsScreen();
                          },
                        ),
                      );
                    },
                    child: const Text('About us')),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () {},
                    child: const Text('Login')),
              ),
            ],
          ),
        ],
      ),
    );
```
![image](/lib/weekly_1/screenshot/hasil_image_06.png)
### Berikut ini source code pada pembuatan 3 form (Username, Email, dan Message). Pada form dibuat menggunakan textformfield, untuk nama,email dan message sudah sesuai dengan kriteria yang diberikan.
```dart
Container(
              padding: const EdgeInsets.only(top: 500),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: inputName,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        labelText: 'Masukan Nama',
                        labelStyle:
                            TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Nama Anda!';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: inputEmail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        labelText: 'Masukan Email',
                        labelStyle:
                            TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Masukan Email Anda!';
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: inputHelp,
                      keyboardType: TextInputType.text,
                      scrollPadding: const EdgeInsets.only(left: 20),
                      maxLines: 5,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        filled: true,
                        labelText: 'What can we help you with?',
                        labelStyle:
                            TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                    ),
```
![image](/lib/weekly_1/screenshot/image_02.jpeg)
### Pada source code berikut yaitu button submit, jika username, email, dan message diisi akan muncul tampilan pada kolom yang diisi

```dart
ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: SizedBox(
                                    width: 400,
                                    height: 400,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Nama : ${inputName.text}\n',
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'Email : ${inputEmail.text}\n',
                                            style:
                                                const TextStyle(fontSize: 20),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            'What can we help you with?\n ${inputHelp.text}',
                                            style:
                                                const TextStyle(fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Color(0xff0096ff),
                                content: Text(
                                  'Berhasil Memasukan Data',
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                            );
                          }
                        },
                        child: const Text('Masukan Data'))
```
![image](/lib/weekly_1/screenshot/image_01.jpeg)