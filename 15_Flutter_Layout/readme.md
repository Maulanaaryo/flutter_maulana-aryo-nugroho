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