# (25) Introduction REST API - JSON

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah sebuah halaman yang terdiri dari 4 tombol, 2 kolom teks (Textfield), dan satu text untuk menampilkan hasil request dari API, dengan detail sebagai berikut:
- Buatlah 2 kolom teks (Textfield) untuk input data name & job
- Tombol 1: gunakan tombol pertama untuk melakukan GET request menggunakan Dio, untuk request ke url: https://reqres.in/api/users. Tampilkan hasil responsenya ke dalam text
- Tombol 2: gunakan tombol kedua untuk melakukan POST request menggunakan Dio, untuk request ke url: https://reqres.in/api/users. Data request yang digunakan untuk url ini adalah dengan sebuah Map, dengan key berupa name & job. Gunakan data dari Texfield sebagai value untuk data request. Tampilkan hasil responsenya ke dalam text
- Tombol 3: gunakan tombol ketiga untuk melakukan PUT request menggunakan Dio, untuk request ke url: https://reqres.in/api/users/4. Data request yang digunakan untuk url ini adalah dengan sebuah Map, dengan key berupa name & job. Gunakan data dari Textfield sebagai value untuk data request. Tampilkan hasil responsenya ke dalam text
- Tombol 4: gunakan tombol keempat untuk melakukan DELETE request menggunakan Dio, untuk request ke url: https://reqres.in/api/users/4.

2. Buatlah sebuah Object/Map dari suatu Class(Model Class) menggunakan hasil/response dari soal nomor 1(b).

## 📒 Task_01
### [Task_01 🗒](#descriptive-)
Membuat halaman yang berisi 2 kolom teks name dan job, dan membuat 4 tombol GET, POST, PUT, DELETE
```dart
SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: jobController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Job',
                    prefixIcon: Icon(Icons.work)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().fetchUser();
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('GET'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().createUser(
                        name: nameController.text,
                        job: jobController.text,
                      );
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('POST'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().updateUser(
                        name: nameController.text,
                        job: jobController.text,
                      );
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('PUT'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final response = await UserService().deleteUser();
                      resultDio = response.toString();
                      setState(() {});
                    },
                    child: const Text('DELETE'),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Result',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(resultDio.toString())
          ],
        ),
      ),
```
![image](/25_Introduction-REST-API-JSON/screenshot/image_02.png)

Pada tombol Get menampilkan hasil response kedalam bentuk teks
```dart
Future fetchUser() async {
    try {
      final Response response = await dio.get('https://reqres.in/api/users');

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
```
![image](/25_Introduction-REST-API-JSON/screenshot/image_03.png)

Pada tombol Post data yang digunakan untuk sebuah map dengan key berupa name & job. Gunakan data dari Texfield sebagai value untuk data request
```dart
Future createUser({required String name, required String job}) async {
    try {
      final Response response = await dio.post(
        'https://reqres.in/api/users',
        data: {
          'name': name,
          'job': job,
        },
      );

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
```
![image](/25_Introduction-REST-API-JSON/screenshot/image_04.png)

Pada tombol Put data yang digunakan untuk sebuah map dengan key berupa name & job. Gunakan data dari Texfield sebagai value untuk data request
```dart
Future updateUser({required String name, required String job}) async {
    try {
      final Response response = await dio.put(
        'https://reqres.in/api/users/4',
        data: {
          'name': name,
          'job': job,
        },
      );

      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }
```
![image](/25_Introduction-REST-API-JSON/screenshot/image_05.png)

Pada tombol Delete untuk melakukan delete request
```dart
Future deleteUser() async {
    try {
      final Response response = await dio.delete(
        'https://reqres.in/api/users/4',
      );

      debugPrint(response.data.toString());
    } catch (e) {
      rethrow;
    }
  }
```
![image](/25_Introduction-REST-API-JSON/screenshot/image_06.png)

## 📒 Task_02
### [Task_02 🗒](#descriptive-)
Membuat halaman Object/Map dari suatu Class(Model Class) menggunakan hasil/response dari soal nomor 1.
```dart
class UserDio {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;
  UserDio({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  Map toJson() => {
        id: id,
        email: 'email',
        firstName: 'first_name',
        lastName: 'last_name',
        avatar: 'avatar',
      };

  UserDio.fromJson(Map json)
      : id = json['id'],
        email = json['email'],
        firstName = json['first_name'],
        lastName = json['last_name'],
        avatar = json['avatar'];
}
```
![image](/25_Introduction-REST-API-JSON/screenshot/image_07.png)