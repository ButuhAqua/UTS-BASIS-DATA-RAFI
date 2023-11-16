# UTS-BASIS-DATA-RAFI

Skema database ini terdiri dari empat tabel: mata_kuliah, jurusan, mahasiswa, dan dosen.
Berikut adalah setiap tabelnya:

1. Tabel mata_kuliah
2. Tabel jurusan
3. Tabel mahasiswa
4. Tabel dosen

Hubungan atau relasi:

Kedua tabel mahasiswa dan dosen memiliki kunci asing (id_matkul dan id_jurusan) yang merujuk ke tabel mata_kuliah dan jurusan masing-masing.

Skema database ini berfungsi sebagai dasar untuk mengelola informasi dalam lingkungan universitas. Pengguna dapat melakukan operasi seperti melacak mahasiswa, dosen, jurusan, dan mata kuliah, memfasilitasi manajemen dan organisasi data akademis yang efisien. Silakan perluas skema ini atau sesuaikan berdasarkan kebutuhan spesifik atau fitur tambahan yang diperlukan untuk Sistem Manajemen Universitas Anda.

Jika anda ingin melihat informasi mata kuliah silahkan insert querry ini:

SELECT CONCAT_WS(' ', m.first_name, m.last_name) as Mahasiswa,
	CONCAT_WS(' ', m.nim) as NIM_mahasiswa,
	CONCAT_WS(' ', j.nama_jurusan) as Jurusan,
	CONCAT_WS(' ', d.nama_lengkap) as Dosen,
	CONCAT_WS(' ', mk.nama_mata_kuliah) as Mata_kuliah,
	CONCAT_WS(' ', mk.kode_matakuliah) as Kode_matakuliah
FROM mahasiswa as m
INNER JOIN mata_kuliah as mk ON mk.id = m.id_matkul
LEFT JOIN dosen as d ON d.id_matkul = m.id
INNER JOIN jurusan as j ON j.id = m.id_jurusan;
