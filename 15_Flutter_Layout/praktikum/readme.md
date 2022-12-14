# (15) Flutter Layout

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Flutter Layout

## π Flutter Layout

### π Apa itu Layout?
- Untuk mengatur tata letak
- Layout berbentuk widget yang mengatur widget di dalamnya

### π Single-child Layout

### π  Container
- Membuat sebuah box
- Membungkus widgat lain
- Box memiliki margin, padding, dan border

π Penggunaan Container :
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

### π Center
- Membuat sebuah box
- Membungkus widget lain
- Memenuhi lebar dan tinggi ruang di luarnya
- Meletakkan widget berada di bagian tengah

### π SizedBox
- Membuat sebuah box
- Membungkus widget lain
- Box dapat diatur lebar dan tingginya
- Lebih sederhana dari container

### π Multi-child Layout

### π Column
- Mengatur widgets secara vertikal

π Penggunaan Column
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

### π Row
- Mengatur widgets secara horizontal

π Penggunaan Row
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

### π ListView
- Mengatur widgets dalam bentuk list
- Memiliki kemampuan scroll

### π GridView
- Mengatur widgets dalam bentuk galeri

π Penggunaan GridView
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
## π Task
### [Task 01 π](#descriptive-)
Pada task_01 ini mengerjakan tugas pilihan ganda yang terdapat di website ALTA, terdapat 5 soal mengenai materi yang sudah dijelaskan sebelumnya, berikut untuk bukti pengerjaannya
![image](/15_Flutter_Layout/screenshot/image_01.png)

### [Task 02 π](#descriptive-)
Pada task_02 diberikan 2 soal yaitu soal pertama ditugaskan membuat tampilan menggunakan ListView dan soal kedua membuat tampilan menggunakan GridView. pada soal pertama ini menggunakan ```ListView.Builder``` dan soal kedua ini menggunakan ```GridView.Builder```, ditambahkan juga bottom bar untuk memilih tampilan yang diinginkan. Berikut ini ada contoh output dalam tampilan yang sudah dibuat, serta untuk code nya bisa diliat di folder praktikum.
![image](/15_Flutter_Layout/screenshot/image_02.png)
![image](/15_Flutter_Layout/screenshot/image_03.png)