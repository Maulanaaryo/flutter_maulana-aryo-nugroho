# (26) MVVM Architecture

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Ubah seluruh halaman yang telah dibuat menjadi bentuk MVVM!
2. Tambahkan sebuah halaman baru yang menggunakan **ViewModel** dari halaman lain!

## 📒 Task
### [Task 🗒](#descriptive-)

Membuat halaman baru menjadi bentuk MVVM dan menggunakan ViewModel pada halaman lain
```dart

class HomeViewModel with ChangeNotifier {
  List<UserDio> _user = [];
  String _result = '';

  List<UserDio> get user => _user;
  String get result => _result;

  getAllUsers() async {
    final response = await UserApi().fetchUser();
    _result = response.toString();
    notifyListeners();
  }

  createUser(String name, String job) async {
    final response = await UserApi().createUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  updateUser(String name, String job) async {
    final response = await UserApi().updateUser(name: name, job: job);
    _result = response.toString();
    notifyListeners();
  }

  deleteUser() async {
    final response = await UserApi().deleteUser();
    _result = response.toString();
    notifyListeners();
  }

  getUsers() async {
    final response = await UserApi().fetchData();
    _user = response;
    notifyListeners();
  }
}
```
![image](/26_MVVM-Architecture/screenshot/image_02.png)
![image](/26_MVVM-Architecture/screenshot/image_03.png)