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