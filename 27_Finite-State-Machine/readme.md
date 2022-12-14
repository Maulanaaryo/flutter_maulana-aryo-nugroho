# (27) Finite State Machine

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Finite State Machine

## π Finite State Machine

### π Apa itu Finite State Machine?
- Mesin yang memiliki sejumlah state
- Tiap state menunjukan apa yang terjadi sebelumnya

### π Contoh
Terdapat 3 state yang menunjukan kejadian dalam suatu proses.
- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diselesaikan

### π Contoh Sukses
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDDLE saat proses selesai

### π Contoh Gagal
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDDLE

### π Implementasi pada View-Model

### π Menambah Enum
Membuat enum untuk masing-masing state:
- none saat IDDLE
- loading saat RUNNING
- error saat ERROR
```dart
enum ContactViewState {
    none,
    loading,
    error
}
```

### π Menambah Getter-Setter
Membuat getter-setter untuk menyimpan state dari widget
```dart
class ContactViewModel with ChangeNotifier {
    ContactViewState _state = ContactViewState.none;
    ContactViewState get state => _state;

    changeState(ContactViewState s) {
        _state = s;
        notifyListeners();
    }
}
```

### π Gunakan State
Tiap proses yang perlu state tersebut, dapat memanfaatkannya
```dart
class ContactViewModel with ChangeNotifier {
    
    // ...

    getAllContacts() async {
        changeState(ContactViewState.loading);

        try {
            final c = await ContactAPI.getAllContacts();
            _contacts = c;
            notifyListeners();
            changeState(ContactViewState.none);
        } catch (e) {
            changeState(ContactViewState.error);
        }
    }
}
```

### π Implementasi pada Widget

### π Perbedaan Tampilan Tiap State
Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan
```dart
Widget body(ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if (isLoading) {
        return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
        return const Center(child: Text('Gagal mengambil data.'));
    }

    return listView(viewModel);
}
```

Saat state menunjukan RUNNING, maka tampilkan progress indicator

Saat state menunjukan IDDLe setelah RUNNING, maka ditampilkan data yang didapatkan

Saat state menunjukan ERROR, maka ditampilkan pesan yang menunjukan bahwa proses tidak dapat diselesaikan

## π Unit Test

### π Apa itu Unit Test? 
- Salah satu jenis pengujian pada perangkat lunak
- Pengujian dilakukan pada unit dalam perangkat lunak
- Unit yang dimaksud umumnya adalah fungsi atau method

### π Tujuan Unit Test
- Memastikan fungsi dapat mengolah berbagai jenis input
- Memastikan hasil dari suatu fungsi atau method sudah sesuai
- Menjadikan dokumentasi

### π Bagaimana Melakukan Unit Test?
**Manual**
- Unit dijalankan dan dicek hasilnya secara manual

**Automated**
- Menulis script yang dapat dijalankan berkali-kali menggunakan test runner

### π Menambahkan Dependencies
- Tambahkan **test**, pada bagian **dev_dependencies** dalam file **pubspec.yaml**
- Jalankan **flutter pub get** pada terminal

### π Membuat File Test
- Pada folder **test**, tambahkan folder baru **model/api**
- Dalam folder tersebut, tambahkan file baru **contact_api_test.dart**

### π Menulis Test Script
- Import package test
- Membuat test case
- Menjalankan fungsi
- Cek hasil dengan expect
```dart
import 'package:test:test.dart';

void main() {
    test('get all contacts return data', () async {
        var contacts = await ContactAPI.getAllContacts();
        expect(contact.isNotempty, true);
    });
}
```

### π Menjalankan Test
- Menggunakan perintah **flutter test**

### π Mengelompokan Test
- Beberapa test dengan subjek yang sama diletakkan dalam sebuah kelompok
- Dilakukan dengan menggunakan Group
```dart
import 'package:test:test.dart';

void main() {

    group('ContactAPI', () {
        
        test('get all contacts return data', () async {
            var contacts = await ContactAPI.getAllContacts();
            expect(contact.isNotempty, true);
        });
    });
}
```

### π Mocking

### π Apa itu Mocking?
- Proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian
- Pengaruh tersebut dapat menggangu proses pengujian
- Dilakukan mocking untuk menghindari masalah-masalah tersebut

### π Bagaimana Cara Kerja Mocking?
- Suatu object dibuat bentuk tiruannya
- Bentuk tiruan tersebut memiliki input dan output yang sama dengan yang asli
- Bentuk tiruan menghilangkan ketergantungan pada sistem eksternal

### π Menambah Dependencies
- Tambahkan **mockito** dan **build_runner**, pada bagian **dev_dependencies** dalam file **pubspec.yaml**
- Jalankan **flutter pub get** pada terminal

### π Melakukan Mocking
- Mengubah kode agar dapat dilakukan mocking
```dart
class ContactAPI{
    Future<List<Contact>> getAllContacts() async {
        final response = ...;
        List<Contact> contacts = ...;
        return contacts;
    }
}
```
- Memasang annotation untuk membuat mock
```dart
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([ContactAPI])
void main() {
    group('ContactAPI', () {
        
        test('get all contacts return data', () async {
            var contacts = await ContactAPI.getAllContacts();
            expect(contact.isNotempty, true);
        });
    });
}
```
- Membuat file mock dengan menjalankan perintah **flutter pub run build_runner build**
- Menggunakan mock yang telah dibuat
```dart
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import 'contact_api_test.mocks.dart';

@GenerateMocks([ContactAPI])
void main() {
    group('ContactAPI', () {
        ContactAPI contactAPI = MockContactAPI();

        test('get all contacts return data', () async {
            when(contactAPI.getAllContacts()).thenAnswer(
                (_) async => <Contact>[
                    Contact(id: 1, name: 'a', phone: '0'),
                ],
            );
            var contacts = await ContactAPI.getAllContacts();
            expect(contact.isNotempty, true);
        });
    });
}
```

### π Menjalankan Test
- Dengan mocking, test berjalan lebih cepat