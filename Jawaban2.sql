INSERT INTO jurusan (id, nama_jurusan) 
VALUES
(1, 'Teknik Informatika'),
(2, 'Akuntansi'),
(3, 'Ilmu Komunikasi'),
(4, 'Teknik Industri');

INSERT INTO mata_kuliah (id, kode_matakuliah, nama_mata_kuliah)
VALUES
(1, '67', 'Basis Data'),
(2, '52', 'Inggris'),
(3, '90', 'Kalkulus 2'),
(4, '70', 'Kalkulus 1');

INSERT INTO  mahasiswa (id, nim, first_name, last_name, id_matkul, id_jurusan)
VALUES
(1, '2212' , 'Daigo', 'Dojima', '2' ,'1'),
(2, '3567','Taiga' ,'Saejima','1', '2'),
(3, '9999', 'Kazuma' ,'Kiryu','3', '3'),
(4, '9998', 'Goro', 'Majima', '4', '4');

INSERT INTO dosen (id, kode_dosen, nama_lengkap, id_matkul, id_jurusan)
VALUES
(1, '98' , 'Keiji Shibusawa', '1' , '1'),
(2, '77', 'Shintaro Kazama', '2', '3'),
(3, '45', 'Ichiban Kasuga', '3','4'),
(4, '64', 'Shun Akiyama', '4','2');