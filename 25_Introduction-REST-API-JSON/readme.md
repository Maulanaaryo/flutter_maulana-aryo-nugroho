# (25) Introduction REST API - JSON & REST API 2

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Introduction REST API - JSON

## 📚 REST API Client

### 📗 REST API (Representational State Transfer Application Programming Interface)
🖊️ Arsitektural yang memisahkan tampilan dengan proses bisnis

🖊️ Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

### 📘 HTTP
🖊️ Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web

### 📖 Pola Komunikasi
- Client mengirim request
- Server mengolah dan membalas dengan memberi response

![image](/25_Introduction-REST-API-JSON/screenshot/image_sub.png)

### 📙 Dio
🖊️ Sebagai HTTP Client

🖊️ Dimanfaatkan untuk melakukan REST API

### 📖 Instalasi
- Tambahkan dependency pada **pubspec.yaml**
- Jalankan perintah **flutter pub get** pada terminal

### 📖 Penggunaan
- Mengambil data menggunakan Dio dan menampilkan hasilnya pada console

### 📗 Serialisasi JSON
🖊️ Cara penulisan data

🖊️ Javascript Object Notation

🖊️ Umum digunakan pada REST API

### 📖 Serialisasi JSON
- Mengubah struktur data ke bentuk JSON
- Menggunakan fungsi **jsonEncode** dari package **dart:covert**

### 📖 Deserialisasi JSON
- Menggunakan fungsi **jsonDecode** dari package **dart:convert**

### 📘 Introduction REST API 2

### 📖 Pengunaan Method GET
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_02.png)

### 📖 Pengunaan Method POST
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_03.png)

### 📖 Pengunaan Method PUT
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_04.png)

### 📖 Pengunaan Method DELETE
![image](/25_Introduction-REST-API-JSON/screenshot/image_sub_05.png)