# Proyek Flutter PBP
Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

Nama: Dhafin Raditya Juliawan

NPM: 2106650304

Kelas: PBP F

Kode Asdos: RD

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
