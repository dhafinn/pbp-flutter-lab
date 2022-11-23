# Proyek Flutter PBP
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

Nama: Dhafin Raditya Juliawan

NPM: 2106650304

Kelas: PBP F

Kode Asdos: RD

# Assignment 7
## Pertanyaan
### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah sebuah widget yang tidak pernah berubah. Sedangkan, stateful widget adalah widget yang bersifat dinamis sehingga cenderung untuk berubah-ubah state nya.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya!
- FloatingActionButton = Sebagai button plus dan minus
- Container = Menampung widget
- Align = Memberikan aligment widget
- Row = Menempatkan widget secara horizontal
- Text = Berfungsi untuk menampilkan text

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi dari setState() adalah ketika terjadi perubahan internal state yang kemudian mengakibatkan adanya re-build sehingga ketika state yang berubah adalah state yang ditampilkan maka state tersebut akan berubah juga pada tampilannya.

### Jelaskan perbedaan antara const dengan final.
const adalah deklarasi variable immutable dan harus sudah diketahui valuenya saat compile time. Sedangkan, final adalah deklarasi variable immutable dan valuenya boleh sudah atau belum diketahui saat compile time tetapi harus sudah diketahui saat runtime.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat flutter app dengan `flutter create counter_7`
2. Tambah widget row pada floatingActionButton
3. Bikin button untuk decrement
4. Buat function untuk decrement _counter
5. Panggil function decrement ketika button decrement dipencet
6. Buat conditional widget text untuk tiap counter yang sedang ditunjuk
7. Buat conditional dimana button decrement hanya bisa terlihat jika _counter > 0

# Assignment 8
## Pertanyaan
### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
Navigator.push akan menambahkan rute page lain ke top of stack saja, sedangkan Navigator.pushReplacement akan menghapus top of stack saat ini (me-replace halaman sekarang), lalu menambahkan page pada top of stack.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Card -> untuk membuat card
- Row -> Menempatkan widget secara horizontal
- Text -> Berfungsi untuk menampilkan text
- TextFormField -> untuk input field
- DropdownButtonFormField -> untuk membuat dropdown yang bisa divalidasi
- Spacer -> untuk membuat space pada flexible widget
- AppBar -> berfungsi sebagai appbar pada aplikasi 
- Scaffold -> berfungsi untuk memberikan struktur app 
- MaterialApp -> berfungsi ketika ingin menggunakan material design
- IconButton -> berfungsi sebagai sebuah tombol yang berwujud icon

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed)
- onPressed -> event yang terjadi ketika user telah selesai menekan
- onTap -> event yang terjadi ketika sesaat setelah klik
- onChanged -> event yang terjadi ketika ada perubahan

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Navigator bekerja menggunakan prinsip stack. Stack ini digunakan untuk layar. Misalnya push suatu layar maka yang ditampilkan adalah top of stack dari stack layar tersebut, sedangkan jika ingin berpindah ke halaman sebelumnya, Navigator akan melakukan pop pada stack, sehingga page yang saat ini dilihat akan dihapus dari stack dan tampilan pengguna akan berganti ke halaman sebelumnya.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Melakukan refactor widget drawer
2. Routing pada widget drawer
3. Membuat halaman form beserta form-nya untuk menambahkan budget
4. Membuat model dataBudget
5. Membuat list budget untuk menampung instances of budget
6. Membuat halaman showBudget untuk menampilkan list budget dengan cara iterasi static list yang menyimpan list budget dan tampilkan di card

# Assignment 9
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisa, namun data yang didapat menjadi tidak sesuai struktur yang diinginkan. Best practice dari data fetching adalah membuat model terlebih dahulu agar data yang didapatkan lebih terstruktur

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
`Column` untuk membuat column, `Row` untuk membuat row, `Flexible` untuk membuat text tidak overflow, `Align` untuk memberikan alignment, `Container` untuk membuat container, `Icon` untuk memberikan icon

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
1. Import http (menambahkan depedensi http)
2. Membuat model sesuai dengan attribute dari json yang akan di fetch
3. HTTP request dengan GET
4. Response didecode menjadi JSON kemudian dikonversi menjadi model yang dibuat
5. Tampilkan dengan future builder

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat model mywatchlist
2. Membuat page mywatchlist
3. Menambahkan pada drawer page mywatchlist
4. Menambahkan depedency http dan menambah permission internet pada android
5. Membuat util untuk fetch json dari tugas 3
6. Memanfaatkan function util di mywatchlist untuk mendapatkan data watchlist
7. Gunakan data yang didapat dan menampilkannya pada card
8. Buat navigator.push pada onTap listTile dan kirim data detail pada detail page mywatchlist
9. Tampilkan data detail pada mywatchlist detail

