# (16) Assets

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal Task
1. Carilah minimum 3 gambar dari internet, lalu tampilkan menggunakan GridView!
2. Tambah fungsionalitas berikut :
- ketika sebuah gambar ditekan, akan terbuka halaman baru
- halaman tersebut menampilkan gambar yang ditekan
- gambar ditampilkan memenuhi halaman

## 📒 Jawaban Task
### [Task 01 🗒](#descriptive-)
Pada task_01 mencari gambar dari internet dan urL dimasukan kedalam folder model, setelah itu dimasukin kedalam code yang membutuhkan image, selanjutnya untuk source code GridView sebagai berikut :
```dart
GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final _image = imageList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(_image),
                      ),
                    );
                  },
                  child: GridTile(
                    child: Image.network(_image.imageUrls,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: imageList.length,
            ),
```
![image](/16_Assets/screenshot/image_02.png)

### [Task 02 🗒](#descriptive-)
Pada task_02 menampilkan gambar penuh pada gambar yang dipilih, untuk source code nya sebagai berikut :
```dart
return Scaffold(
      body: Stack(
        children: [
          Image.network(
            _desain.imageUrls,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          IconButton(
            padding: const EdgeInsets.only(top: 30, left: 20),
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
              size: 50,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
```
![image](/16_Assets/screenshot/image_03.png)    
![image](/16_Assets/screenshot/image_04.png)    
![image](/16_Assets/screenshot/image_05.png)    
