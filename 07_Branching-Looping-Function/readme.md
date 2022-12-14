# (7) Branching - Looping - Function

# π¨Data Diri
- Nomor Urut : 1_016FLB_36
- Nama : Maulana Aryo Nugroho

# πSummary
Pada section ini belajar tentang Branching, Looping, Function.

## π Pengambilan Keputusan
``` Menentukan alur program pada kondisi tertentu ```

### π IF
- Memerlukan nilai bool (dari operator logical atau comparison)
- Menjalankan bagian proses jika nilai bool bernilai true

### π IF-ElSE
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false

### π Sisipkan ELSE-IF
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false
- Menambah pengujian nilai bool lain

## π Perulangan
``` Menjalankan proses berulang kali ```

### π For
- Diketahui berapa kali perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

### π While
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan

### π Do-While
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

## π Break & Continue
``` Cara lain menghentikan perulangan ```
- Perulangan menggunakan nilai bool untuk lanjut atau berhenti
- Break and Continue dapat menghentikan perulangan dengan mengabaikan nilai bool
- Continue dapat menghentikan satu kali proses

### π Perbedaan Break & Continue
Break
- Menghentikan seluruh proses perulangan

Continue
- Menghentikan satu kali proses perulangan

## π Fungsi
``` Kumpulan kode yang dapat digunakan ulang ```
- Kumpulan perintah
- Dapat digunakan berkali-kali
- Cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah

### π Membuat Fungsi
~~~ 
tipe_data nama_fungsi () {
    // Perintah yang dijalankan saat fungsi dipanggil
}
~~~

### π Memanggil Fungsi
~~~ 
nama_fungsi();
~~~

### π Fungsi Dengan Parameter
Mengirim data saat menjalankan fungsi
~~~ 
tipe_data nama_fungsi(tipe_data nama_parameter) {
    // Perintah yang dijalankan saat fungsi dipanggil
}
~~~

### π Fungsi Dengan Return
Memberi nilai pada fungsi saat dipanggil
~~~
tipe_data nama_fungsi(tipe_data nama_parameter) {
    // Perintah yang dijalankan saat fungsi dipanggil
    return nilai;
}