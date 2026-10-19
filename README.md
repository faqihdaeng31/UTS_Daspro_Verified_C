Schedule — Aplikasi Manajemen Tugas Mahasiswa
Deskripsi Proyek
Schedule adalah program berbasis terminal yang ditulis menggunakan bahasa Pascal untuk membantu mahasiswa mencatat dan mengelola tugas kuliah. Pengguna dapat menambahkan tugas, melihat daftar tugas, menandai tugas yang sudah selesai, dan menghapus tugas berdasarkan nomor yang dipilih.

Program menyimpan data menggunakan array selama program berjalan. Data belum disimpan ke file atau database, sehingga daftar tugas akan kembali kosong ketika program ditutup.

Kelompok Verified
anggota:
1. La Ila safiqha (261401105) 
2. Princess Tiara Ananda Larosa (261401095)
3. Muhammad Alfaqih Daeng Parenrengi (261401112)

Fitur Utama dan Logika Program
1. Tambah tugas baru — pengguna memasukkan nama tugas, mata kuliah, dan deadline. Status awal secara otomatis diatur menjadi Belum Selesai.
2. Lihat semua tugas — program menampilkan nomor, status, nama tugas, mata kuliah, dan deadline. Jika belum ada tugas, program menampilkan pesan bahwa daftar masih kosong.
3. Tandai tugas selesai — pengguna memilih nomor tugas. Program memeriksa apakah nomor berada dalam rentang daftar sebelum mengubah status menjadi Selesai.
4. Hapus tugas — pengguna memilih nomor tugas yang akan dihapus. Data sesudah posisi tersebut digeser satu posisi ke kiri pada seluruh array agar nama, mata kuliah, deadline, dan status tetap cocok.
5. Keluar — program berhenti ketika pengguna memilih menu nomor 5.

Konsep Pascal yang Digunakan
- Input/output: readln, write, dan writeln untuk menerima input dan menampilkan informasi.
- Variabel dan tipe data: variabel bertipe integer serta array string untuk menyimpan data tugas.
- Array sejajar (parallel arrays): namaTugas, matkul, deadline, dan status menggunakan indeks yang sama untuk mewakili satu tugas.
- Percabangan: case-of untuk memilih menu dan if-then-else untuk memeriksa kondisi serta validitas nomor tugas.
- Perulangan: repeat-until untuk menjalankan menu, dan for-to-do untuk menampilkan serta menggeser data tugas.
- Kontrol perulangan: break menghentikan perulangan menu ketika pengguna memilih opsi keluar (menu 5).
- Batas data: program dapat menampung maksimal 100 tugas dalam satu kali program berjalan.