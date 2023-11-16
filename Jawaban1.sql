CREATE TABLE mata_kuliah (
    id int PRIMARY KEY,
    kode_matakuliah VARCHAR (15) NOT NULL,
    nama_mata_kuliah VARCHAR (100) NOT NULL
);

CREATE TABLE jurusan(
    id int PRIMARY KEY,
    nama_jurusan VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id int PRIMARY KEY,
    nim VARCHAR(50) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL, 
    id_matkul int,
    id_jurusan int,
    FOREIGN KEY (id) REFERENCES mata_kuliah(id),
    FOREIGN KEY (id) REFERENCES jurusan(id)
);

CREATE TABLE dosen(
    id int PRIMARY KEY,
    kode_dosen VARCHAR (15) NOT NULL,
    nama_lengkap VARCHAR (50) NOT NULL,
    id_matkul int,
    id_jurusan int,
    FOREIGN KEY (id) REFERENCES mata_kuliah(id),
    FOREIGN KEY (id) REFERENCES jurusan(id)
);