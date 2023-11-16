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