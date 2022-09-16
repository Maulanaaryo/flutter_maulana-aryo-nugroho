# (7) Branching - Looping - Function

# 👨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# 📔Summary
Pada section ini belajar tentang Branching, Looping, Function.

## 📘 Pengambilan Keputusan
``` Menentukan alur program pada kondisi tertentu ```

### 📖 IF
- Memerlukan nilai bool (dari operator logical atau comparison)
- Menjalankan bagian proses jika nilai bool bernilai true

### 📖 IF-ElSE
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false

### 📖 Sisipkan ELSE-IF
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false
- Menambah pengujian nilai bool lain

## 📗 Perulangan
``` Menjalankan proses berulang kali ```

### 📖 For
- Diketahui berapa kali perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

### 📖 While
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan

### 📖 Do-While
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

## 📙 Break & Continue
``` Cara lain menghentikan perulangan ```
- Perulangan menggunakan nilai bool untuk lanjut atau berhenti
- Break and Continue dapat menghentikan perulangan dengan mengabaikan nilai bool
- Continue dapat menghentikan satu kali proses

### 📑 Perbedaan Break & Continue
Break
- Menghentikan seluruh proses perulangan

Continue
- Menghentikan satu kali proses perulangan

## 📘 Fungsi
``` Kumpulan kode yang dapat digunakan ulang ```
- Kumpulan perintah
- Dapat digunakan berkali-kali
- Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah

### 📖 Membuat Fungsi
~~~ 
tipe_data nama_fungsi () {
    // Perintah yang dijalankan saat fungsi dipanggil
}
~~~

### 📖 Memanggil Fungsi
~~~ 
nama_fungsi();
~~~

### 📖 Fungsi Dengan Parameter
Mengirim data saat menjalankan fungsi
~~~ 
tipe_data nama_fungsi(tipe_data nama_parameter) {
    // Perintah yang dijalankan saat fungsi dipanggil
}
~~~

### 📖 Fungsi Dengan Return
Memberi nilai pada fungsi saat dipanggil
~~~
tipe_data nama_fungsi(tipe_data nama_parameter) {
    // Perintah yang dijalankan saat fungsi dipanggil
    return nilai;
}