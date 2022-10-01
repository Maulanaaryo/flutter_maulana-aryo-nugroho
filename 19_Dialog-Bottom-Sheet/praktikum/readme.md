# (19) Dialog Bottom Sheet

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

---
## 📑 Soal 
1. Buatlah gallery yang menampilkan gambar-gambar!
2. Buatlah agar tiap gambar dapat ditampilkan pada bottom sheet saat ditekan!
3. Buatlah agar tiap gambar dapat ditampilkan pada dialog saat ditekan!

## 📒 Task
### [Task 01 🗒](#descriptive-)
Pada pengerjaan membuat tampilan gallery yang berisi gambar-gambar yang akan di proses. Gambar di kumpulkan pada folder model
```dart
class ImageModel {
  String imageUrls;

  ImageModel({
    required this.imageUrls,
  });
}
```
Gambar yang sudah dikumpulkan lalu ditampilkan pada halaman pertama
```dart
                  child: GridTile(
                    child:
                        Image.network(imageGallery.imageUrls, fit: BoxFit.cover),
                  ),
```
![image](/19_Dialog-Bottom-Sheet/screenshot/image_05.png)

Selanjutnya gambar akan ditampilkan pada bottom sheet saat ditekan
```dart
return InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      )),
                      context: context,
                      builder: (context) => ProfileScreen(imageGallery),
                    );
                  },
```
```dart
Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            height: 390,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(_imageModel.imageUrls),
                fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(15)
            ),
          ),
        ],
      ),
    );
```
![image](/19_Dialog-Bottom-Sheet/screenshot/image_03.png)
Jika tampilan di tekan lama akan memunculkan dialog
```dart
onLongPress: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content:
                            const Text('Apakah anda ingin menghapus?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Yes'),
                          ),
                        ],
                      ),
                    );
                  },
```
![image](/19_Dialog-Bottom-Sheet/screenshot/image_04.png)