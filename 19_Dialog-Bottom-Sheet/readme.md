# (19) Dialog Bottom Sheet

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Dialog Bottom Sheet

### 📘 Aplikasi Task Management
🖊️ Menambahkan dan menghapus kegiatan

### 📖 Aplikasi Task Management
-  TODO 1: Membuat model untuk informasi yang mau disimpan, buat folder models dan di dalam nya buat file dart baru task_model.dart
```dart
class TaskModel{
    final String id;
    final String taskName;

    TaskModel({
        required this.id,
        required this.taskName,
    });
}
```
- TODO 2: Membuat Task Screen, buat folder screens di dalam nya buat file dart baru task_screen.dart
```dart
class TaskScreen extends StatelessWidget {
    const TaskScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Task Management'),
                centerTitle: true,
            ),
        );
    }
}
```
- TODO 3: Membuat Empty Screen, buat file dart baru empty_task_screen.dart di folder screens
```dart
class TaskScreen extends StatelessWidget {
    const TaskScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(color: Colors.amber);
    }
}
```
- TODO 4: Tambahkan package provider di pubspec.yaml
- TODO 5: Membuat Task Manager, buat file dart baru task_manager.dart di dalam folder models. Tambahkan method deleteTask dan addTask
```dart
class TaskManager extends ChangeNotifier {
    final _taskModels = <TaskModel>[];
    List<TaskModel> get taskModels => List.unmodifiable(_taskModels);

    void deleteTask(int index) {
        _taskModels.removeAt(index);
        notifyListeners();
    }

    void addTask(TaskModel task) {
        _taskModels.add(task);
        notifyListeners();
    }
}
```
- TODO 6: (main.dart) menambahkan TaskManager sebagai provider
- TODO 7: (task_screen.dart) membuat fungsi buildTaskScreen, akan me-return antara Task Screen yang ada data nya atau yang kosong dan panggil fungsi nya di body
- TODO 8: Membuat Task Item Screen, buat file dart baru task_item_screen.dart di dalam folder screens dan tambahkan properti onCreate
- TODO 9: (task_screen.dart) buat FloatingActionButton, untuk navigasi ke TaskItemScreen
- TODO 10: (task_item_screen.dart) menambahkan state properti, initState, dan dispose
- TODO 11: (task_item_screen.dart) membuat buildNameField dan panggil fungsi nya di dalam ListView
- TODO 12: (task_item_screen.dart) membuat buildButton dan panggil fungsi nya di dalam ListView
```dart
Widget buildButton() {
    return ElevatedButton(
        child: const Text('Create Task'),
        onPressed: () {},
    );
}
```
- TODO 13: Membuat Task Item Card, buat folder baru components lalu didalam nya buat file dart baru task_item_card.dart
- TODO 14: (task_item_screen.dart) menambahkan call back handler di ElevatedButton pada buildButton, dan menambahkan package uuid
- TODO 15: Membuat Task List Screen, dalam folder screens buat file dart baru task_list_screen.dart Dan tambahkan di buildTaskScreen(task_screen.dart)
- TODO 16: (task_list_screen.dart) menambahkan properti yang dibutuhkan pada TaskItemCard untuk melihat task yang sudah dibuat.
```dart
return TaskItemCard(
    key: Key(item.id),
    task: item,
);
```

### 📙 AlertDialog
🖊️ Untuk tampilan android, dari material design
🖊️ Menginformasikan pengguna tentang situasi terterntu
🖊️ Bisa digunakan untuk mendapatkan input dari user
🖊️ Membutuhkan helper method showDialog

### 📖 Cara membuat Alert Dialog
- TODO 17: (task_item_card.dart) menambahkan Alert Dialog
- Memanggil fungsi showDialog di dalam fungsi onPressed pada IconButton
- showDialog membutuhkan context dan builder
- Di builder nya akan me-return AlertDialog
- AlertDialog menyediakan properti seperti content dan actions
- Content bisa dimasukan widget text, gambar dan animasi gambar
- Actions bisa ditambahkan button untuk menerima respon dari user
- TODO 18: (task_item_card.dart) membuat properti onPressed
- TODO 19: (task_list_screen.dart) menambahkan fungsi onPressed pada TaskItemCard, pada body fungsi nya tambahkan method deleteTask, Navigator.pop(context), dan ScaffoldMessenger

### 📖 Hasil Akhir
- Ketika icon delete nya ditekan maka akan menampilkan alert dialog seperti gambar disamping ini

### 📗 Bottom Sheet
🖊️ Seperti dialog tetapi muncul dari bawah layar aplikasi
🖊️ Menggunakan fungsi bawaan flutter showModalBottomSheet
🖊️ Membutuhkan dua properti, yaitu context dan builder

### 📖 Cara Membuat Bottom Sheet
- TODO 20: (task_screen.dart) membuat Bottom Sheet
- TODO 21: buat file dart baru profile_sheet.dart di dalam folder components dan buat konten-konten nya
- TODO 22: (task_screen.dart) mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()
``` builder: (context) => const ProfileSheet(), ```