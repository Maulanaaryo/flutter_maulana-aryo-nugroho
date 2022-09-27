# (18) Form Picker

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Form Picker

## 📚 Basic Layouting

### 📘 Row dan Column
🖊️ Row meletakkan widget children nya secara horizontal

🖊️ Column meletakkan widget children nya secara vertikal

### 📙 MainAxisSize Properti

### 📖 MainAxisSize
- Menentukan seberapa banyak space menempati main axis
- Main axis dari Row adalah horizontal
- Main axis dari Column adalah vertical
- Properti mainAxisSize memiliki dua values, MainAxisSize.man dan MainAxisSize.Min
- MainAxisSize.max menempati semua space dari main axis
- MainAxisSize.min tidak memiliki extra space, hanya untuk children nya saja

Contoh MainAxisSize.max (Row)
```dart
    body: Row(
        mainAxisSize: MainAxisSize.max,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```

Contoh MainAxisSize.max (Column)
```dart
    body: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
Contoh MainAxisSize.min (Row)
```dart
    body: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```

Contoh MainAxisSize.min (Column)
```dart
    body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```

### 📗 MainAxisAlignment Properti

### 📖 MainAxisAlignment
- Properti ini digunakan Row dan Column untuk memposisikan children mereka di extra space yang ada
- Memiliki 6 values :
1. MainAxisAlignment.start
2. MainAxisAlignment.end
3. MainAxisAlignment.center
4. MainAxisAlignment.spaceBetween
5. MainAxisAlignment.spaceEvenly
6. MainAxisAlignment.spaceAround

Contoh MainAxisAlignment
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```

### 📘 CrossAxisAlignment Properti
- Properti ini digunakan Row dan Column untuk memposisikan children mereka pada cross axis
- Cross Axis dari Row adalah vertikal dan Cross Axis dari Column adalah horizontal
- Memiliki 5 values :
1. CrossAxisAlignment.start
2. CrossAxisAlignment.end
3. CrossAxisAlignment.center
4. CrossAxisAlignment.stretch
5. CrossAxisAlignment.

Contoh CrossAxisAlignment
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAlignment.center
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAlignment.start
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAlignment.end
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```
```dart
    body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAlignment.stretch
        children: const [
            BlueBox(),
            BlueBox(),
            BlueBox(),
        ],
    ),
```

### 📙 Flexible Widget
🖊️ Membungkus widget lain sehingga child dari Flexible widget menjadi flexible atau resizable
🖊️ Sangat berguna untuk membuat aplikasi yang responsif
🖊️ Harus berada dalam turunan parent widget Row atau Column
🖊️ Perubahan ukuran ditentukan dengan properti fit dan flex

### 📖 Fit Properti
- Menentukan apakah flexible widget memenuhi extra space yang tersedia di main axis nya
- Menerima nilai values berupa FlexFit.loose atau FlexFit.tight
- FlexFit.loose akan memiliki ukuran minimum
- FlexFit.tight akan memiliki ukuran maximum

### 📖 Flex Properti
- Menentukan perbandingan ukuran dari child widgetnya
- Menerima nilai values berupa integer
- Membandingkan nilai nya dengan flex properti lain

### 📗 Expanded Widget
🖊️ Membungkus widget lain sehingga ukuran dari child Expanded widget akan dipaksa untuk memenuhi ruang yang tersedia
🖊️ Sangat berguna untuk membuat aplikasi yang responsif
🖊️ Harus berada dalam turunan parent widget Row atau Column
🖊️ Memiliki default value FlexFit.tight
🖊️ Perubahan ukuran ditentukan dengan properti flex

---
## 📚 Advance Form Input

### 📘 Interactive Widgets
🖊️ Interaksi antara aplikasi dan user
🖊️ Mengumpulkan input dan feedback dari user

### 📖 Menambahkan Layout
- Layout untuk menyusun interactive widget

```dart
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Interactive Widgets'),
            centerTitle: true,
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: ListView(
                children: const [

                ],
            ),
        ),
    );
}
```
### 📙 Date Picker
🖊️ Wiget dimana user bisa memasukan tanggal
🖊️ Tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting, dll

### 📖 Cara Membuat Date Picker
- Menggunakan fungsi bawaan flutter showDatePicker
- Fungsi showDatePicker memiliki tipe data future
- Menampilkan dialog material design date picker
```dart
final selectDate = await showDatePicker(
    context: context,
    initialDate: currentDate,
    firstDate: DateTime(1990),
    lastDate: DateTime(currentDate.year + 5),
);
```
- Menambahkan package intl di pubspec.yaml
```dart
dependencies:
    flutter:
      sdk: flutter
    intl: ^0.17.0
```
- Mempersiapkan variabel
```dart
class _HomePageState extends State<HomePage> {
    DateTime _dueDate = DateTime.now();
    final currentDate = DateTime.now();
}
```
- Membangun UI
```dart
Widget buildDatePicker(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    const Text('Date'),
                    TextButton(
                        child: const Text('Select'),
                        onPressed: () {},
                    ),
                ],
            ),
            Text(DateFormat('dd-MM-yyyy').format(_dueDate)),
        ],
    );
}
```
- Menambahkan fungsi showDatePicker di dalam onPressed
```dart
onPressed: () async {
    final selectDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(currentDate.year + 5),
    );
}
```
- Memanggil fungsi setState di dalam onPressed
```dart
setState(() {
    if (selectDate != null) {
        _dueDate = selectDate;
    }
});
```

### 📖 Hasil Akhir
- Saat select button di tekan akan muncul dialog date picker
- Tanggal yang ada di UI akan berubah sesuai dengan tanggal yang dipilih

### 📗 Color Picker
🖊️ Widget dimana user bisa memilih color
🖊️ Penggunaan color picker bisa digunakan untuk berbagai macam kondisi

### 📖 Cara Membuat Color Picker
- Menggunakan packages *flutter_collor*picker
- Menambahkan packages *flutter_color*picker di pubspec.yaml
```dart
dependencies:
    flutter:
       sdk: flutter
    intl: ^0.17.0
    flutter_colorpicker: ^1.0.3
```
- Mempersiapkan variabel
```dart
Color _currentColor = Colors.orange;
```
- Membangaun UI
```dart
Widget buildColorPicker(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text('Color'),
            const SizedBox(height: 10),
            Container(
                height: 100,
                widtg: double.infinity,
                color: _currentColor,
            ),
            const SizedBox(height: 10),
            Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(_currentColor),
                    ),
                    child: const Text('Pick Color'),
                    onPressed: () {},
                ),
            ),
        ],
    );
}
```
- Menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog
```dart
onPressed: () {
    showDialog(
        context: context,
        builder: (context) {
            return AlertDialog(
                title: const Text('Pick Your Color'),
                actions: [
                    TextButton(
                        onPressed: () {
                            Navigator.pop(context);
                        },
                        child: const Text('Save'),
                    ),
                ],
            );
        },
    );
},
```
- Import packages *flutter_color*picker dalam file dart
```dart
import 'package:flutter_colorpicker/flutter_colorpicker.dart'
```
- Membuat kode untuk penggunaan packages *flutter_color*picker
```dart
return AlertDialog(
    title: const Text('Pick Your Color'),
    content: BlockPicker(
        pickerColor: _currentColor,
        onColorChanged: (color) {
            setState(() {
                _currentColor = color;
            });
        },
    ),
```

### 📖 Hasil Akhir 
- Packages flutter_colorpicker memiliki custom widget yang dapat digunakan, seperti BlockPicker, ColorPicker, dan SlidePicker

### 📘 File Picker
🖊️ Kemampuan widget untuk mengakses storage
🖊️ Memilih dan membuka file

### 📖 Cara Membuat File Picker
- Menggunakan packages *file_picker* dan *open_file*
- Menambahkan packages *file_picker* dan *open_file* di pubspec.yaml
```dart
dependencies:
    flutter:
       sdk: flutter
    intl: ^0.17.0
    flutter_colorpicker: ^1.0.3
    file_picker: ^4.3.3
    open_file: ^3.2.1
```
- import packages file_picker* dan *open_file* dalam file dart
```dart
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
```
- Membangun UI
```dart
Widget buildFilePicker() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            const Text('Pick Files'),
            const SizedBox(height: 10),
            Center(
                child: ElevatedButton(
                    child: const Text('Pick and Open File'),
                    onPressed: () {},
                ),
            ),
        ],
    );
}
```
- Membuat fungsi untuk mengexplore dan memilih files dari storage
```dart
void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;
}
```
- Memanggil fungsi _pickFile di dalam onPressed
```dart
Center(
    child: ElevatedButton(
        child: const Text('Pick and Open File'),
        onPressed: () {
            _pickFile();
        },
    ),
),
```
- Membuat fungsi untuk membuka files yang telah dipilih
```dart
void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
}
```
- Mengambil file dari object result dan Memanggil fungsi _openFile di dalam fungsi _pickFile
```dart
void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    _openFile(file);
}
```

### 📖 Hasil Akhir 
- Ketika button ditekan maka akan membuka storage device dan file yang dipilih akan terbuka