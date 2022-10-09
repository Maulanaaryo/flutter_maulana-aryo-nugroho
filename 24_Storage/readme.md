# (24) Storage

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Storage

### 📘 Penyimpanan Lokal
🖊️ Diperlukan untuk efisiensi penggunaan data internet

🖊️ Ada beberapa cara implementasi penyimpanan lokal, contoh nya seperti:
- Shared Preferences
- Local Database

### 📙 Shared Preference
🖊️ Menyimpan data yang sederhana

🖊️ Penyimpanan dengan format key-value

🖊️ Menyimpan tipe data dasar seperti teks, angka, dan boolean

🖊️ Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian

### 📖 Implementasi Shared Preference
Menambahkan shared preference pada fitur login
- STEP 1: Tambahkan package *shared_preference*
- STEP 2: Buat properti baru untuk TextEditingController dan tambahkan di setiap TextFormField
```dart
final _nameController = TextEditingController();
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
```
- STEP 3: Buat method dispose(), untuk menghindari kebocoran memori
```dart
@override
void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
}
```
- STEP 4: Buat variabel baru untuk menyimpan *SharedPreference* dan nilai bool newUser
- STEP 5: Buat method baru dengan nama checkLogin()
```dart
late SharedPreference logindata;
late bool newUser;
```
```dart
void checkLogin() async {
    logindata = await SharedPreference.getInstance();
    newUser = logindata.getBool('login') ?? true;

    if (newUser == false) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => const HomePage(),
            ),
            (route) => false,
        );
    }
}
```
- STEP 6: Panggil method checkLogin() di method initState()
```dart
@override
void initState() {
    super.initState();
    checkLogin();
}
```
- STEP 7: Di dalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user
```dart
ElevatedButton(
    onPressed: () {
        final isValidForm = formKey.currentState!.validate();

        String userName = _nameController.text;
        if (isValidForm) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomePage(),
                ),
                (route) => false,
            );
        }
    },
    child: const Text('Login'),
),
```
- STEP 8: Buat setBool dan setString baru didalam blok kode if, dan buat navigasi untuk ke halaman HomePage
```dart
ElevatedButton(
    onPressed: () {
        final isValidForm = formKey.currentState!.validate();

        String userName = _nameController.text;
        if (isValidForm) {
            logindata.setBool('login', false);
            logindata.setString('username', username);
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomePage(),
                ),
                (route) => false,
            );
        }
    },
    child: const Text('Login'),
),
```
- STEP 9: Buat file dart baru home_page.dart dan tambahkan UI nya
- STEP 10: (home_page.dart) buat variabel baru untuk menyimpan SharedPreference dan username
- STEP 11: (home_page.dart) buat method baru initial(), dan panggil di method initState()
```dart
late SharedPreference login data;
String username = '';
```
```dart
@override
void initState() {
    super.initState();
    initial();
}

void initial() async {
    logindata = await SharedPreference.getInstance();
    setState(() {
        username = logindata.getString('username').toString();
    });
}
```
- STEP 12: (home_page.dart) mengganti text 'username' menjadi variabel username
- STEP 13: (home_page.dart) tambahkan method setBool dan remove pada ElevatedButton
```dart
ElevatedButton(
    onPressed: () {
        logindata.setBool('login', true);
        logindata.remove('username');
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const LoginScreen(),
            ),
        );
    },
    child: const Text('Log Out'),
),
```
### 📖 Hasil Akhir
- Ketika akan menekan login maka akan masuk ke home page dan menampilkan text username sesuai yang di inputkan di text form field

### 📗 Aplikasi Task Management (Continue)
### 📖 Menambahkan Fitur Login
- TODO 28: Menambahkan login screen pada aplikasi Task Management, dan menambahkan shared_preference package, dan email_validator package
- TODO 29: (main.dart) mengganti home menjadi routes
- TODO 30: (profile_sheet.dart) menambahkan kode untuk shared preference di profile sheet
```dart
Text(
    username,
    style: GoogleFonts.poppins(
        fontSized: 20,
        fontWeight: FontWeight.w500,
    ),
),
```
```dart
ElevatedButton(
    onPressed: () {
        logindata.setBool('login', true);
        logindata.remove('username');
    }
),
```
### 📘 Local Database (SQLite)
🖊️ Menyimpan dan meminta data dalam jumlah besar pada local device

🖊️ Bersifat privat

🖊️ Menggunakan SQLite database melalui package sqflite

🖊️ SQLite adalah database open source yang mendukung inser, read, update dan remove data

### 📖 Implementasi SQLite
- TODO 31: Menambahkan package sqflite dan path(pubspec.yaml), pastikan import packages nya di file dart yang kita kerjakan
- TODO 32: (task_model.dart) membuat model/modifikasi model yang sudah ada, dan membuat fungsi toMap dan formMap
```dart
class TaskModel {
    late int? id;
    late String taskName;

    TaskModel({
        this.id,
        required this.taskName,
    });

    Map<String, dynamic> toMap() {
        return {
            'id' : id,
            'taskName' : taskName,
        };
    }

    TaskModel.fromMap(Map<String, dynamic> map) {
        id = map['id'];
        taskName = map['taskName'];
    }
}
```
- TODO 33: Buat folder baru helper, dan di dalam nya buat file dart baru database_helper.dart
- TODO 34: (database_helper.dart) buat kelas baru DatabaseHelper dan tambahkan factory constructor
```dart
class DatabaseHelper {
    static DatabaseHelper? _databaseHelper;

    DatabaseHelper._internal() {
        _databaseHelper = this;
    }

    factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();
}
```
- TODO 35: (database_helper.dart) membuat objek database
```dart
static late Database _database;
DatabaseHelper._internal() {
    _databaseHelper = this;
}
factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

Future<Database> get database async {
    _database = await _initializeDB();
    returun _database;
}
```
- TODO 36: (database_helper.dart) membuka koneksi ke database dan membuat tabel nya
```dart
final String _tableName = 'tasks';

Future<Database> _initialDb() async {
    var db = openDatabase(
        join(await getDatabasespath(), 'task_db.db'),
        onCreate: (db, version) async {
            await db.execute(
                '''CREATE TABLE $_tableName(
                    id INTEGER PRIMARY KEY,
                    taskName TEXT
                )''',
            );
        },
        version: 1,
    );
    return db;
}
```
- TODO 37: (database_helper.dart) membuat method untuk menambahkan data ke tabel
- TODO 38: (database_helper.dart) membuat method untuk membaca data
```dart
Future<void> insertTask(TaskModel taskModel) async {
    final Database db = await database;
    await db.insert(_tableName, taskModel.toMap());
}
```
```dart
Future<List<TaskModel>> getTasks() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(_tableName);
    return results.map((e) => TaskModel.fromMap(e)).toList();
}
```
- TODO 39: (database_helper.dart) membuat method untuk mengambil data dengan id
```dart
Future<TaskModel> getTaskById(int id) async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(
        _tableName,
        where: 'id = ?',
        whereArgs: [id],
    );
    return result.map((e) => TaskModel.fromMap(e)).first;
}
```
- TODO 40: (database_helper.dart) membuat method untuk memperbarui data
- TODO 41: (database_helper.dart) membuat method untuk menghapus data
```dart
Future<void> updateTask(TaskModel taskModel) async {
    final db = await database;
    await db.update(
        _tableName,
        taskModel.toMap(),
        where: 'id = ?',
        whereArgs: [taskModel.id],
    );
}
```
```dart
Future<void> deleteTask(int id) async {
    final db = await database;
    await db.delete(
        _tableName,
        where: 'id = ?',
        whereArgs: [id],
    );
}
```
- TODO 42: Membuat file dart baru db_manager.dart
- TODO 43: (db_manager.dart) membuat constructor untuk membuat instance kelas DatabaseHelper
```dart
class DbManager extends ChangeNotifier {
    List<TaskModel> _taskModels = [];
    late DatabaseHelper _dbHelper;

    List<TaskModel> get taskModels => _taskModels;

    DbManager() {
        _dbHelper = DatabaseHelper();
        _getAllTasks();
    }
}
```
- TODO 44: (db_manager.dart) membuat method _getAllTasks
```dart
void _getAllTasks() async {
    _taskModels = await _dbHelper.getTasks();
    notifyListeners();
}
```
- TODO 45: (db_manager.dart) membuat method addTask, getTaskById, updateTask, dan deleteTask
```dart
Future<void> addTask(TaskModel taskModel) async {
    await _dbHelper.insertTask(taskModel);
    _getAllTasks();
}

Future<TaskModel> getTaskById(int id) async {
    return await _dbHelper.getTaskById(id);
}

void updateTask(TaskModel taskModel) async {
    await _dbHelper.updateTask(taskModel);
    _getAllTasks();
}

void deleteTask(int id) async {
    await _dbHelper.deleteTask(id);
    _getAllTasks();
}
```
- TODO 46: (main.dart) mengganti provider nya menjadi DbManager
```dart
return MultiProvider(
    providers: [
        ChangeNotifierProvider(
            create: (context) => DbManager(),
        ),
    ],
),
```
- TODO 47: (task_screen.dart) mengganti Consumer yang ada di buildTaskScreen jadi DbManager
```dart
Widget buildTaskScreen() {
    return Consumer<DbManager>(
        builder: (context, manager, child) {
            if (manager.taskModels.isNotEmpty) {
                return TaskListScreen(
                    manager: manager,
                );
            } else {
                return const EmptyTaskScreen();
            }
        },
    );
}
```
- TODO 48: (task_screen.dart) mengganti kode yang ada di onPressed FloatingActionButton
```dart
floatingActionButton: FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const TaskItemScreen(),
            ),
        );
    },
),
```
- TODO 49: (task_item_screen.dart) menghapus properti onCreate dan membuat properti baru taskModel
```dart
class TaskItemScreen extends StatefulWidget {
    // final Function(TaskModel) onCreate;
    final TaskModel? taskModel;
    const TaskItemScreen({
        key? key,
        // required this.onCreate,
        this.taskModel,
    }) : super(key: key);
}
```
- TODO 50: (task_item_screen.dart) hapus properti _taskName, buat properti baru _isUpdate, dan ganti kode pada blok method initState()
```dart
// String _taskName = '';
bool _isUpdate = false;
@override
void initState() {
    super.initState();
    if (widget.taskModel != null) {
        _taskNameController.text = widget.taskModel!.taskName;
        _isUpdate = true;
    }
}
```
- TODO 51: (task_item_screen.dart) ganti kode yang ada di blok kode onPressed buildButton()
- TODO 52: (task_list_screen.dart) ganti TaskManager jadi 
```dart
class TaskListScreen extends StatelessWidget {
    // final TaskManager manager;
    final DbManager manager;
    const TaskListScreen({
        Key? key,
        required this.manager,
    }) : super(key: key);
}
```
- TODO 53: (task_list_screen.dart) bungkus ListView.separated dengan Consumer<DbManager>(). Dan pindahkan variabel taskItems di dalam builder Consumer
```dart
Widget build(BuildContext context) {
    // final taskItems = manager.taskModels;
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<DbManager>(
            builder: (context, manager, child) {
                final taskItems = manager.taskModels;
                return ListView.separated(),
            }
        )
    )
}
```
- TODO 54: (task_list_screen.dart) hapus key yang ada di widget TaskItemCard. Dan ganti index untuk deleteTask nya menggunakan item.id!
- TODO 55: (task_list_screen.dart) bungkus widget TaskItemCard dengan widget InkWell dan gunakan onTap dengan fungsi async. Di dalam blok fungsi nya tambahkan variabel selectedTask yang menampung item.id!, dan tambahkan navigasi ke TaskItemScreen
```dart
return InkWell(
    onTap: () async {
        final selectedTask = await manager.getTaskById(item.id);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => TaskItemScreen(
                    taskModel: selectedTask,
                ),
            ),
        );
    },
    child: TaskItemCard(),
),
```