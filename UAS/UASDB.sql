-- Nomor 1
CREATE DATABASE BINUS;

USE BINUS;

CREATE TABLE Mahasiswa(
	id_mahasiswa CHAR(12) PRIMARY KEY NOT NULL,
	nama_mahasiswa VARCHAR(255) NOT NULL,
    alamat_mahasiswa VARCHAR(255), 
    kota VARCHAR(50) NOT NULL,
    tgl_lahir DATE NOT NULL,
    usia INT NOT NULL,
    no_kontak CHAR(13) NOT NULL,
    email VARCHAR(255) NOT NULL,
    jurusan CHAR(10) NOT NULL,
    nama_wali VARCHAR(255) NOT NULL,
    tgl_terdaftar DATE NOT NULL,
    prestasi_1 VARCHAR(255) NULL,
    prestasi_2 VARCHAR(255) NULL
);

CREATE TABLE `Mata Kuliah`(
	id_mata_kuliah CHAR(12) PRIMARY KEY NOT NULL,
    nama_mata_kuliah VARCHAR(255) NOT NULL,
    jurusan CHAR(10) NOT NULL,
    kelas CHAR(5) NOT NULL,
    tahun_ajaran CHAR(5) NULL, 
    semester INT NOT NULL,
    jenis CHAR(5) NOT NULL,
    kode_dosen CHAR(6) NOT NULL,
    nama_dosen VARCHAR(255) NOT NULL,
    kuota_maks INT NOT NULL,
    kuota_tersisa INT NOT NULL,
    model_perkuliahan CHAR(10) NOT NULL,
    `status` CHAR(10) NOT NULL,
    durasi INT NOT NULL,
    maks_sks INT NOT NULL
);

CREATE TABLE Transaksi(
	id_transaksi CHAR(12) PRIMARY KEY NOT NULL,
    id_mahasiswa CHAR(12) NOT NULL,
    id_mata_kuliah CHAR(12) NOT NULL,
    jurusan CHAR(10) NOT NULL,
    timestamp_transaksi TIMESTAMP NOT NULL,
    jumlah_sks INT NOT NULL,
    total_biaya INT NOT NULL,
    virtual_account CHAR(12) NOT NULL,
    status_pembayaran CHAR(12) NOT NULL,
    jatuh_tempo DATE NOT NULL,
    potongan_biaya CHAR(5) NULL
);

-- Nomor 2
INSERT INTO Mahasiswa VALUES 
	('2501123456', 'Asep Maulana', 'Jl. Belitung no. 53', 'Bandung', '2003-03-15', 19, '08382256373', 'asep@binus.ac.id', 'IT', 'Josep Maulana', '2021-09-13', 'juara 1 lomba hackathon', null),
    ('2301862696', 'Marya Aulia', 'Jl. Sukaluyu no. 15', 'Bandung', '2001-04-30', 21, '081384037069', 'marya@binus.ac.id', 'DKV', 'Vina Muliani', '2019-09-10', null, null),
    ('2401985645', 'Deri Sanusi', 'Jl. Kalidam no. 25', 'Cimahi', '2002-06-05', 20, '08572746511', 'deri@binus.ac.id', 'DI', 'Sito Sanusi', '2020-09-07', 'juara 1 lomba desain ruang', 'juara 2 3D design');

INSERT INTO Mahasiswa VALUES 
	('2540131784', 'Felicia Jocelin', 'Jl. Sudirman no. 87', 'Bandung', '2003-04-26', 19, '087728103960', 'felicia@binus.ac.id', 'IT', 'Haikal Pradipta', '2021-09-15', null, null),
    ('2540117602', 'Rachel Nathania', 'Jl. Pilar Mas no. 51', 'Cimahi', '2003-02-19', 19, '081220045678', 'rachel@binus.ac.id', 'CP', 'Indayani', '2021-09-10', 'juara 1 lomba business plan', null),
    ('2302014236', 'Dias Perdana', 'Jl. Cihampelas no. 37', 'Bandung', '2001-10-20', 21, '087812309876', 'dias@binus.ac.id', 'IT', 'Ahmad Riyadi', '2019-09-12', 'juara 1 lomba competitive programming', 'juara 2 lomba hackathon'),
    ('2401959680', 'Jonathan Jason', 'Jl. Antapani no. 81', 'Bandung', '2002-10-25', 20, '089865431200', 'jonathan@binus.ac.id', 'DI', 'Narendra', '2020-09-13', null, null),
    ('2440130106', 'Jesslyn Audrey', 'Jl. Mekar Wangi no. 87', 'Bandung', '2002-12-02', 20, '081243567812', 'jesslyn@binus.ac.id', 'DKV', 'Alisha Pramudya', '2020-05-08', 'juara 1 lomba poster', 'juara 2 lomba membuat logo'),
    ('2306781236', 'Klarissa Angel', 'Jl. Sudirman no. 15', 'Bandung', '2001-11-03', 21, '087766589314', 'klarissa@binus.ac.id', 'CP', 'Linawati', '2019-09-09', 'juara 2 lomba business model', null),
    ('2441367890', 'Elang Uno', 'Jl. Kolonel Matsuri no. 20', 'Cimahi', '2002-08-06', 20, '089832674590','elang@binus.ac.id', 'DKV', 'Ridawati', '2020-09-14', null, null),
    ('2302003674', 'Wilson Alexander', 'Jl. Saritem no. 56', 'Bandung', '2001-10-30', 21, '081234562378', 'wilson@binus.ac.id', 'DI', 'Irham Setiawan', '2019-09-03', 'juara 3 lomba fotografi', null);

INSERT INTO `Mata Kuliah` VALUES
	('COMP45434', 'Algorithm and Programming', 'IT', 'LA65', '2022', 1, 'LEC', 'D9000', 'Maria Auleria', 50, 32, 'Online', 'tersedia', 120, 2),
    ('COMP684701', 'Database Technology', 'IT', 'BA75', '2022', 3, 'LAB', 'D6764', 'Vito Hafizh', 25, 25, 'Onsite', 'penuh', 90, 2),
    ('ARTS602203', 'Photography', 'DKV', 'BG90', '2022', 5, 'LAB', 'D1472', 'Krisna Ahmad', 25, 15, 'Onsite', 'tersedia', 90, 1),
    ('DSGN66960', '3-Dimension Layout', 'DI', 'LF75', '2022', 5, 'LEC', 'D6076', 'Anisa Putri', 45, 27, 'Online', 'tersedia', 120, 2),
    ('COMP684702', 'Database Technology', 'IT', 'BB75', '2022', 3, 'LAB', 'D6274', 'Husni Iskandar Pohan', 26, 20, 'Onsite', 'tersedia', 90, 1);

INSERT INTO `Mata Kuliah` VALUES
	('ENTR643103', 'Creative and Innovative Thinking', 'CP', 'LD76', '2022', 1, 'LEC', 'D6329', 'Eriana Astuty', 30, 15, 'Onsite', 'tersedia', 90, 2),
    ('DSGN681856', 'Typography', 'DKV', 'LF77', '2022', 1, 'LEC', 'D6467', 'Agus Supriadi', 50, 30, 'Online', 'tersedia', 90, 1),
    ('DSGN619808', 'Computer 2D Drawing', 'DI', 'BC78', '2022', 3, 'LAB', 'D6410', 'Andi Darmayadi', 40, 15, 'Onsite', 'tersedia', 90, 1),
    ('MKTG622532', 'Digital Marketing', 'CP', 'BE76', '2022', 3, 'LAB', 'D6453', 'Mira Rustine', 50, 10, 'Onsite', 'tersedia', 90, 1),
    ('COMP669701', 'Operating System', 'IT', 'LA75', '2022', 5, 'LEC', 'D1749', 'Johan Muliadi Kerta', 50, 5, 'Onsite', 'tersedia', 90, 1),
    ('ENTR650208', 'Business Model', 'CP', 'LB76', '2022', 5, 'LEC', 'D5029', 'Jajat Sudrajat', 40, 20, 'Online', 'tersedia', 120, 2),
    ('ARCH608308', 'Interior Technical Drawing', 'DI', 'LD78', '2022', 1, 'LEC', 'D5490', 'Stevanus Rio', 40, 10, 'Onsite', 'tersedia', 120, 2),
    ('DSGN665607', 'Design Methods', 'DKV', 'LC77', '2022', 5, 'LEC', 'D5743', 'Natalia Andira', 35, 10, 'Onsite', 'tersedia', 90, 1);

INSERT INTO Transaksi VALUES
	('15060001', '2401985645', 'DSGN66960', 'DI', '2022-12-24 07:00:00', 2, 500000, '7623523425', 'belum lunas', '2023-01-15', null),
	('17060002', '2501123456', 'COMP684702', 'IT', '2022-12-27 22:00:00', 1, 250000, '7623878979', 'lunas', '2023-01-16', '10%'),
	('17060003', '2301862696', 'ARTS602203', 'DKV', '2022-12-30 01:00:00', 1, 250000, '7623974678', 'lunas', '2023-01-15', null);
    
INSERT INTO Transaksi VALUES
	('17060004', '2302014236', 'COMP669701', 'IT', '2022-12-30 10:00:00', 1,  250000, '7623124536', 'lunas', '2023-01-15', null),
    ('17060005', '2540131784', 'COMP684701', 'IT', '2022-12-31 13:00:00', 2, 500000, '7623987145', 'lunas', '2023-01-16', '20%'),
    ('17060006', '2440130106', 'DSGN665607', 'DKV', '2023-01-01 08:00:00', 1, 250000, '7623098738', 'belum lunas', '2023-01-17', '10%'),
    ('17060007', '2306781236', 'ENTR650208', 'CP', '2023-01-03 11:00:00', 2, 500000, '7623451123', 'belum lunas', '2023-01-19', '30%'),
    ('17060008', '2401959680', 'ARCH608308', 'DI', '2023-01-06 09:00:00', 2, 500000, '7623787769', 'lunas', '2023-01-22', null),
    ('17060009', '2540117602', 'MKTG622532', 'CP', '2023-01-06 15:00:00', 1, 250000, '762381090', 'belum lunas', '2023-01-22', '10%'),
    ('17060010', '2302003674', 'DSGN619808', 'DI', '2023-01-09 16:00:00', 1, 250000, '7623448174', 'lunas', '2023-01-25', null),
	('17060011', '2441367890', 'DSGN681856', 'DKV', '2023-01-11 14:00:00', 1, 250000, '7623514398', 'belum lunas', '2023-01-27', null);

-- Nomor 3
-- a. WHERE - AND - OR
SELECT * FROM `Mata Kuliah`
WHERE (jurusan = 'IT' AND model_perkuliahan = 'Onsite') OR jenis = 'LEC';

SELECT * FROM Transaksi
WHERE (timestamp_transaksi >= '2023-01-01 00:00:00' AND status_pembayaran = 'lunas') OR jurusan = 'IT';

-- b. WHERE - NOT - LIKE
SELECT id_mahasiswa, nama_mahasiswa, jurusan FROM Mahasiswa
WHERE NOT(id_mahasiswa LIKE '23%');

SELECT id_mata_kuliah, nama_mata_kuliah, jurusan, nama_dosen FROM `Mata Kuliah`
WHERE NOT(id_mata_kuliah LIKE 'DSGN%');

-- c. WHERE - LIKE - AND - IN
SELECT nama_mata_kuliah, jurusan, jenis, nama_dosen FROM `Mata Kuliah`
WHERE (nama_mata_kuliah LIKE '%g') AND jenis IN ('LEC', 'LAB'); 

SELECT id_transaksi, id_mahasiswa, id_mata_kuliah, jurusan FROM Transaksi
WHERE (id_mahasiswa LIKE '25%') AND jurusan IN ('IT', 'CP');

-- d. WHERE - NOT - OR - IN
SELECT nama_mahasiswa, jurusan, usia FROM Mahasiswa
WHERE NOT(jurusan = 'IT') OR usia IN (19, 20);

SELECT id_transaksi, id_mahasiswa, id_mata_kuliah, jurusan, status_pembayaran FROM Transaksi
WHERE NOT(status_pembayaran = 'lunas') OR jurusan IN ('DI', 'DKV');

-- Nomor 4
CREATE TABLE Pegawai(
	id_pegawai VARCHAR(6) PRIMARY KEY NOT NULL,
    nama_pegawai VARCHAR(255) NOT NULL,
    pemberian_pelaporan_kepada CHAR(6) NOT NULL
);

INSERT INTO Pegawai VALUES
	('P1200', 'Ahmad Subagiyo', 'A3000'),
    ('P1201', 'Antonius Chandra', 'A3000'),
    ('P1300', 'Clara Judistya', 'A3001'),
    ('P1400', 'Windy Pramesti', 'A3002'),
    ('P1401', 'Thalia Putri', 'A3002');

RENAME TABLE Pegawai TO Karyawan;

-- Nomor 5
-- a. INNER JOIN
SELECT M.nama_mahasiswa, M.jurusan, T.id_mata_kuliah FROM Mahasiswa M
INNER JOIN Transaksi T
ON M.id_mahasiswa = T.id_mahasiswa;

-- b. LEFT JOIN
SELECT * FROM Mahasiswa M
LEFT JOIN `Mata Kuliah` MK
ON M.jurusan = MK.jurusan;

-- c. RIGHT JOIN
SELECT T.id_mahasiswa, MK.nama_mata_kuliah FROM `Mata Kuliah` MK
RIGHT JOIN Transaksi T
ON MK.id_mata_kuliah = T.id_mata_kuliah;

-- d. FULL OUTER JOIN -> Karena tidak bisa menggunakan full outer dalam MySQL, maka diganti dengan menggunakan union
SELECT id_mahasiswa FROM Mahasiswa
UNION
SELECT id_mahasiswa FROM Transaksi;

-- e. SELF JOIN
SELECT * FROM Karyawan K1
JOIN Karyawan K2
ON K1.id_pegawai = K2.id_pegawai;

-- f. MULTIPLE JOINS
SELECT 
	T.id_transaksi, M.id_mahasiswa, M.nama_mahasiswa, MK.id_mata_kuliah, MK.nama_mata_kuliah, MK.jurusan, MK.kelas,
    T.jumlah_sks, T.total_biaya, T.status_pembayaran
FROM Transaksi T
JOIN Mahasiswa M
ON T.id_mahasiswa = M.id_mahasiswa

JOIN `Mata Kuliah` MK
ON T.id_mata_kuliah = MK.id_mata_kuliah
ORDER BY M.nama_mahasiswa ASC;

-- Nomor 6
-- a. Mengubah nama 1 tabel
RENAME TABLE Karyawan TO Pegawai;

RENAME TABLE `Mata Kuliah` TO Mata_Kuliah;
RENAME TABLE Mata_Kuliah TO `Mata Kuliah`;

-- b. Mengubah tipe data pada 1 kolom dari suatu tabel
ALTER TABLE Pegawai
MODIFY id_pegawai CHAR(6);

ALTER TABLE Transaksi
MODIFY status_pembayaran CHAR(20);

-- c. Mengubah nama dari 1 kolom dari suatu tabel
ALTER TABLE `Mata Kuliah`
CHANGE jenis jenis_perkuliahan CHAR(5);

ALTER TABLE Mahasiswa
CHANGE email email_binus VARCHAR(255);

-- d. Mengubah posisi 1 kolom dari suatu tabel
ALTER TABLE `Mata Kuliah`
MODIFY jenis_perkuliahan CHAR(5) AFTER jurusan;

ALTER TABLE `Mata Kuliah`
MODIFY model_perkuliahan CHAR(10) AFTER nama_dosen;

-- e. Menambahkan 1 kolom baru pada suatu tabel
ALTER TABLE Mahasiswa
ADD alamat_wali VARCHAR(255) AFTER nama_wali;

ALTER TABLE Pegawai
ADD alamat_pegawai VARCHAR(255) AFTER nama_pegawai;

-- f. Menghapus 1 kolom baru tersebut dari suatu tabel
ALTER TABLE Mahasiswa
DROP alamat_wali;

ALTER TABLE Pegawai
DROP alamat_pegawai;

-- Nomor 7
ALTER TABLE Transaksi
ADD CONSTRAINT fk_id_mahasiswa FOREIGN KEY (id_mahasiswa) REFERENCES Mahasiswa (id_mahasiswa);

ALTER TABLE Transaksi
ADD CONSTRAINT fk_id_mata_kuliah FOREIGN KEY (id_mata_kuliah) REFERENCES `Mata Kuliah` (id_mata_kuliah);

SHOW CREATE TABLE Transaksi;

-- Nomor 8
START TRANSACTION;

INSERT INTO Transaksi VALUES
	('17060012', '2301862696', 'DSGN665607', 'DKV', '2023-01-12 13:00:00', 1, 250000, '7623974678', 'lunas', '2023-01-28', null),
	('17060013', '2401959680', 'DSGN619808', 'DI', '2023-01-14 10:00:00', 1, 250000, '7623787769', 'belum lunas', '2023-01-30', null);
    
UPDATE `Mata Kuliah`
SET
	kuota_tersisa = kuota_tersisa - 1
WHERE id_mata_kuliah IN ('DSGN665607', 'DSGN619808');
 
COMMIT;

-- Nomor 9
ALTER TABLE Mahasiswa
ADD INDEX idx_mahasiswa (id_mahasiswa, nama_mahasiswa, jurusan);

SHOW INDEX FROM Mahasiswa;

ALTER TABLE `Mata Kuliah`
ADD INDEX idx_mahasiswa (id_mata_kuliah, nama_mata_kuliah, jurusan);

SHOW INDEX FROM `Mata Kuliah`;