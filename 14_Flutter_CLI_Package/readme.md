# (14) Flutter Command Line Interface (CLI) and Flutter package management

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Flutter Command Line Interface (CLI) and Flutter package management

### 📗 Flutter CLI
~~~
🖊️ Alat yang digunakan untuk berinteraksi dengan Flutter SDK
🖊️ Perintah dijalankan dalam terminal
~~~

### 📓 Important CLI Commands
- Flutter Doctor
- Flutter Create
- Flutter Run
- Flutter Emulator
- Flutter Channel
- Flutter Pub
- Flutter Build
- Flutter Clean

### 📖 Flutter Doctor
Perintah untuk menampilkan informasi software yang dibutuhkan flutter, perintah yang digunakan :
- ```flutter doctor```

### 📖 Flutter Create
Perintah untuk membuat project aplikasi flutter baru di directory tertentu, perintah yang digunakan :
- ```flutter create <APP_NAME>```

### 📖 Flutter Run
Perintah untuk menjalankan project aplikasi di device yang tersedia, perintah yang digunakan :
- ```flutter run <DART_FILE>```

### 📖 Flutter Emulator
Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru, perintah yang digunakan :
- ```flutter emulators```
- ```flutter emulators --launch <EMULATOR_ID>```
- ```flutter emulator --create [--name xyz]```

### 📖 Flutter Channel
Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini, perintah yang digunakan :
- ```fluter channel```

### 📖 Flutter Pub
📝 Ada dua syntax yang bisa kita gunakan, yaitu :

🖍️ Flutter pub add, untuk menambahkan packages ke dependencies yang ada di pubspec.yaml, perintah yang digunakan :
- ```flutter pub add <package_name>```

🖍️ Flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubscpec.yaml, perintah yang digunakan :
- ```flutter pub get```

### 📖 Flutter Build
Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll. Perintah yang digunakan :
- ```flutter build <DIRECTORY>```

### 📖 Flutter Clean
🖍️ Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator
🖍️ Perintah ini akan memperkecil ukuran project tersebut
- ```flutter clean```

### 📙 Packages Management
~~~
🖊️ Flutter mendukung sharing packages
🖊️ Packages dibuat developers lain
🖊️ Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
🖊️ Mendapatkan packages di website pub.dev
~~~

### 📖 Cara Menambahkan Packages
1. Cari package di pub.dev
2. Copy baris dependencies yang di bagian installing
3. Buka pubspec.yaml
4. Paste barisnya dibawah dependencies pubspec.yaml
5. Run flutter pub get di terminal
6. Import package di file dart agar bisa digunakan
7. Stop atau restart aplikasi jika dibutuhkan

### 📖 Menggunakan Packages
- Hanya membutuhkan beberapa baris kode untuk menghasilkan UI yang kompleks