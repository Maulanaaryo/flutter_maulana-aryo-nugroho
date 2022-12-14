# (25) Introduction REST API - JSON & REST API 2

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Introduction REST API - JSON

## π REST API Client

### π REST API (Representational State Transfer Application Programming Interface)
ποΈ Arsitektural yang memisahkan tampilan dengan proses bisnis

ποΈ Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

### π HTTP
ποΈ Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web

### π Pola Komunikasi
- Client mengirim request
- Server mengolah dan membalas dengan memberi response

![image](/25_Introduction-REST-API-JSON/screenshot/image_sub.png)

### π Dio
ποΈ Sebagai HTTP Client

ποΈ Dimanfaatkan untuk melakukan REST API

### π Instalasi
- Tambahkan dependency pada **pubspec.yaml**
- Jalankan perintah **flutter pub get** pada terminal

### π Penggunaan
- Mengambil data menggunakan Dio dan menampilkan hasilnya pada console

### π Serialisasi JSON
ποΈ Cara penulisan data

ποΈ Javascript Object Notation

ποΈ Umum digunakan pada REST API

### π Serialisasi JSON
- Mengubah struktur data ke bentuk JSON
- Menggunakan fungsi **jsonEncode** dari package **dart:covert**

### π Deserialisasi JSON
- Menggunakan fungsi **jsonDecode** dari package **dart:convert**

### π Introduction REST API 2

### π Pengunaan Method GET
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_02.png)

### π Pengunaan Method POST
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_03.png)

### π Pengunaan Method PUT
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_04.png)

### π Pengunaan Method DELETE
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_05.png)