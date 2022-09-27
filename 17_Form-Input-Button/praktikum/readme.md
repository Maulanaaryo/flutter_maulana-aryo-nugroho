# (17) Form Input Button

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah sebuah halaman dengan spesifikasi berikut:
- berjudul **Contacts**
- menampilkan data nama dan nomor telepon (hardcore) dalam List View

2. Dari halaman di atas tambahkan tombol yang mengarah ke halaman baru dengan spesifikasi berikut:
- berjudul **Create New Contact**
- menampilkan sebuah form input nama dan nomer telepon
- menampilkan tombol **Submit**

## 📒 Task
### [Task 01 🗒](#descriptive-)
Pada pembuatan ini menggunakan AppBar dengan judul tersebut dan untuk menampilkan data nama + nomer telepon menggunakan data dummy serta menggunakan ListView.separated
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
          itemCount: personList.length,
          itemBuilder: (context, index) {
            final person = personList[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(person.imageAsset),
              ),
              title: Text(
                person.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                person.phone,
                style: const TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            );
          },
        ),
      ),
```

## 📒 Task
### [Task 02 🗒](#descriptive-)
Untuk Task_02 menambahkan tombol floatingactionbutton, serta membuat tampilan dengan judul tersebut. Dalam tampilan baru saat diklik akan terdapat form input nama, nomor telpon, email, dan jenis kelamin. Serta terdapat tombol Submit

### FloatingActionButton
```dart
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed(AddPersonPage.routeName, arguments: addPerson);
        },
        child: const Icon(Icons.add_circle),
      ),
```

### Judul di halaman baru
```dart
Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
```

### Form Input Nama,Telpon,Email,Jenis Kelamin
```dart
body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  controller: inputName,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.person),
                    label: Text('Masukan Nama'),
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
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email),
                    label: Text('Masukan Email'),
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
                  controller: inputPhone,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.phone),
                    label: Text('Masukan Nomer Telpon'),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Masukan Nomer Telpon Anda!';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Jenis Kelamin: ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    Radio(
                      value: 'Laki-laki',
                      groupValue: jenisKelamin,
                      onChanged: (value) {
                        if (value != null) {
                          setState(
                            () {
                              jenisKelamin = value;
                            },
                          );
                        }
                      },
                    ),
                    const Text(
                      'Laki-laki',
                      style: TextStyle(fontSize: 15),
                    ),
                    Radio(
                      value: 'Perempuan',
                      groupValue: jenisKelamin,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            jenisKelamin = value;
                          });
                        }
                      },
                    ),
                    const Text(
                      'Perempuan',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
```

### Tombol Submit
```dart
ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Data Tersimpan'),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18,),
                  ),
                ),
```