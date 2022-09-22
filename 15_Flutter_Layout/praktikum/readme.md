# (15) Flutter Layout

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Flutter Layout

## 📚 Flutter Layout

### 📖 Apa itu Layout?
- Untuk mengatur tata letak
- Layout berbentuk widget yang mengatur widget di dalamnya

### 📘 Single-child Layout

### 📖  Container
- Membuat sebuah box
- Membungkus widgat lain
- Box memiliki margin, padding, dan border

📝 Penggunaan Container :
~~~
Container(
    margin: const EdgeInsets.all(),
    padding: const Edgeinsets.adll(),
    decoration: BoxDecoration(
        border: Border.all(),
    ),
    child: const Text('Halo'),
    ),
);
~~~

### 📖 Center
- Membuat sebuah box
- Membungkus widget lain
- Memenuhi lebar dan tinggi ruang di luarnya
- Meletakkan widget berada di bagian tengah

### 📖 SizedBox
- Membuat sebuah box
- Membungkus widget lain
- Box dapat diatur lebar dan tingginya
- Lebih sederhana dari container

### 📙 Multi-child Layout

### 📖 Column
- Mengatur widgets secara vertikal

📝 Penggunaan Column
~~~
Column(
    children: [
        Container(
            margin: const EdgeInsets.all(),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(''),
        ),
    ],
);
~~~

### 📖 Row
- Mengatur widgets secara horizontal

📝 Penggunaan Row
~~~
Row(
    children: [
        Container(
            margin: const EdgeInsets.all(),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(''),
        ),
    ],
);
~~~

### 📖 ListView
- Mengatur widgets dalam bentuk list
- Memiliki kemampuan scroll

### 📖 GridView
- Mengatur widgets dalam bentuk galeri

📝 Penggunaan GridView
~~~
GridView.count(
    crossAxisCount: 2,
    children: [
        Container(
            margin: const EdgeInsets.all(),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(''),
        ),
    ],
);
~~~

---
## 📒 Task
### [Task 01 🗒](#descriptive-)
Pada task_01 ini mengerjakan tugas pilihan ganda yang terdapat di website ALTA, terdapat 5 soal mengenai materi yang sudah dijelaskan sebelumnya, berikut untuk bukti pengerjaannya
![image](/15_Flutter_Layout/screenshot/image_01.png)

### [Task 02 🗒](#descriptive-)
Pada task_02 diberikan 2 soal yaitu soal pertama ditugaskan membuat tampilan menggunakan ListView dan soal kedua membuat tampilan menggunakan GridView. pada soal pertama ini menggunakan ```ListView.Builder``` dan soal kedua ini menggunakan ```GridView.Builder```, ditambahkan juga bottom bar untuk memilih tampilan yang diinginkan. Berikut ini ada contoh output dalam tampilan yang sudah dibuat, serta untuk code nya bisa diliat di folder praktikum.
![image](/15_Flutter_Layout/screenshot/image_02.png)
![image](/15_Flutter_Layout/screenshot/image_03.png)