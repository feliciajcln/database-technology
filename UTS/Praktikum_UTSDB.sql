-- a. Membuat sebuah database
CREATE DATABASE toko_sepatu;

-- Menggunakan/mengaktifkan database
USE toko_sepatu;

-- b. Membuat 3 buah tabel pada database
CREATE TABLE Pembeli(
	Id_Pembeli INT PRIMARY KEY NOT NULL,
    Nama_Pembeli VARCHAR(100) NOT NULL,
    Alamat_Pembeli VARCHAR(100) NOT NULL,
    No_Telepon CHAR(13) NOT NULL,
    Email VARCHAR(100) NULL
);

CREATE TABLE Sepatu(
	Id_Sepatu INT PRIMARY KEY NOT NULL,
	Nama_Sepatu VARCHAR(100) NULL,
	Merk_Sepatu VARCHAR(100) NOT NULL,
	No_Sepatu INT NOT NULL,
	Harga_Sepatu INT NOT NULL,
	Stok INT NOT NULL,
	Tanggal_Produksi DATE
);

CREATE TABLE Transaksi(
	No_Nota INT PRIMARY KEY NOT NULL,
	Tgl_Nota DATE NOT NULL,
	Id_Pembeli INT NOT NULL,
	Id_Sepatu INT NOT NULL,
	Jumlah_Sepatu INT NOT NULL,
	Total_Harga INT NOT NULL,
	Tgl_Garansi DATE NULL
);

-- Masukkan 3 record pada masing-masing tabel berdasarkan data yang telah diketahui di soal
INSERT INTO Pembeli VALUES
	(22100001, 'Abraham Kusnadi', 'Jln. Setiabudi, no. 56, Bandung', 2264758264, 'abraham@gmail.com'), 
    (22100002, 'Irfan Maulana', 'Jln. Sudirman, no. 143, Surabaya', 3189546272, 'irfan@gmail.com'), 
    (22100003, 'Andi Zulhikam', 'Jln. Ahmad Yani, no. 55, Surabaya', 3142850182, 'andi@gmail.com');

SELECT * FROM Pembeli;

INSERT INTO Sepatu VALUES
	(21220001, 'White Eagle', 'Baginda', 45, 270000, 25, '2020-05-19'), 
    (21220010, 'Super Sonic', 'Champion', 42, 250000, 10, '2021-11-20'), 
	(21220019, 'Blue Dragon', 'Champion', 43, 450000, 35, '2022-01-05');

SELECT * FROM Sepatu;

INSERT INTO Transaksi VALUES
	(221010001, '2022-04-15', 22100001, 21220003, 1, 450000, '2022-04-26'), 
    (221010002, '2022-07-02', 22100002, 21220001, 2, 540000, '2022-07-09'), 
    (221010003, '2022-09-25', 22100003, 21220003, 5, 1900000, '2022-10-02');

SELECT * FROM Transaksi;

-- c. Masukkan 10 record ke dalam masing-masing tabel
INSERT INTO Pembeli VALUES    
	(22100004, 'Felicia Jocelin', 'Jln. Banjar Melati, no. 36, Cirebon', 3226040301, 'felicia@gmail.com'),
	(22100005, 'Klarissa Angel', 'Jln. Pronggol, no. 37, Cirebon', 3103110302, 'klarissa@gmail.com'),
	(22100006, 'Rachel Nathania', 'Jln. Pilar Mas, no. 51, Bandung', 2219020329, 'rachel@gmail.com'),
    (22100007, 'Elang Uno', 'Jln. Setiabudi, no. 67, Jakarta', 2406089876, 'elang@gmail.com'), 
    (22100008, 'Jonathan Jason', 'Jln. Setiabudi, no. 78, Bandung', 2654327861, 'jason@gmail.com'), 
    (22100009, 'Jesslyn Audrey', 'Jln. Ahmad Yani, no. 60, Surabaya', 3298765401, 'jesslyn@gmail.com'),
    (22100010, 'Alexander Rafael', 'Jln. Surya Sumantri, no. 26, Bandung', 3176890123, 'alexander@gmail.com'),
    (22100011, 'Marvin Aditya','Jln. Antapani, no. 43, Bandung', 3378129087, 'marvin@gmail.com'), 
    (22100012, 'Velinda Novelia', 'Jln. Pekalipan, no. 66, Cirebon', 2156431298, 'velinda@gmail.com'),
    (22100013, 'Cecilia Angelica', 'Jln. Kalijaga, no. 33, Jakarta', 3276541265, 'cecilia@gmail.com');

SELECT * FROM Pembeli;

INSERT INTO Sepatu VALUES
	(21220002, 'White Eagle', 'Baginda', 44, 270000, 20, '2020-05-19'), 
    (21220003, 'White Eagle', 'Baginda', 43, 270000, 17, '2020-05-20'), 
	(21220004, 'White Eagle', 'Baginda', 42, 270000, 15, '2020-05-20'),
    (21220007, 'Super Sonic', 'Champion', 39, 250000, 10, '2021-11-20'), 
    (21220008, 'Super Sonic', 'Champion', 40, 250000, 12, '2021-11-20'), 
	(21220009, 'Super Sonic', 'Champion', 41, 250000, 10, '2021-11-20'),
    (21220018, 'Blue Dragon', 'Champion', 42, 450000, 20, '2022-01-05'), 
    (21220020, 'Blue Dragon', 'Champion', 44, 450000, 30, '2022-01-05'), 
	(21220021, 'Blue Dragon', 'Champion', 45, 450000, 32, '2022-01-06'),
	(21220022, 'Blue Dragon', 'Champion', 46, 460000, 40, '2022-01-07');

SELECT * FROM Sepatu;

INSERT INTO Transaksi VALUES
	(221010004, '2022-10-13', 22100004, 21220008, 1, 250000, '2022-10-20'), 
    (221010005, '2022-10-13', 22100005, 21220007, 1, 250000, '2022-10-20'), 
    (221100006, '2022-10-14', 22100006, 21220018, 2, 900000, '2022-10-21'),
    (221010007, '2022-10-17', 22100007, 21220001, 3, 810000, '2022-10-24'), 
    (221010008, '2022-10-20', 22100008, 21220004, 3, 810000, '2022-10-27'), 
    (221100009, '2022-10-23', 22100009, 21220008, 4, 1000000, '2022-10-30'),
    (221010010, '2022-11-03', 22100010, 21220018, 2, 900000, '2022-11-10'), 
    (221010011, '2022-02-17', 22100011, 21220001, 1, 270000, '2022-02-27'), 
    (221100012, '2022-03-18', 22100012, 21220003, 5, 1350000, '2022-03-28'),
    (221100013, '2021-12-31', 22100013, 21220019, 3, 1350000, '2022-01-07');

SELECT * FROM Transaksi;

-- d. Menampilkan nilai dalam suatu tabel dengan menggunakan query
-- WHERE
SELECT * FROM Sepatu WHERE No_Sepatu >= 42;
SELECT * FROM Transaksi WHERE Total_Harga >= 1000000;

-- WHERE - OR
SELECT * FROM Sepatu WHERE No_Sepatu >= 42 OR Stok >= 15;
SELECT * FROM Transaksi WHERE Jumlah_Sepatu > 2 OR Total_Harga >= 1000000;

-- WHERE - AND
SELECT * FROM Sepatu WHERE No_Sepatu >= 42 AND Stok >= 20;
SELECT * FROM Transaksi WHERE Jumlah_Sepatu > 3 AND Total_Harga >= 1000000;

-- WHERE - AND - OR
SELECT * FROM Sepatu WHERE Nama_Sepatu = 'White Eagle' AND No_Sepatu >= 43 OR Stok >= 10;
SELECT * FROM Transaksi WHERE Id_Sepatu = 21220008 AND Jumlah_Sepatu > 2 OR Total_Harga >= 500000;

-- WHERE - NOT
SELECT * FROM Sepatu WHERE NOT Stok >= 25;
SELECT * FROM Transaksi WHERE NOT Jumlah_Sepatu >= 3;

-- WHERE - LIKE
SELECT * FROM Pembeli WHERE Alamat_Pembeli LIKE '%Cirebon';
SELECT * FROM Sepatu WHERE Nama_Sepatu LIKE 'W%';

-- WHERE - IN
SELECT * FROM Sepatu WHERE Merk_Sepatu IN ('Champion');
SELECT * FROM Transaksi WHERE Jumlah_Sepatu IN (1, 2, 3);

-- e. Mengubah nilai dalam suatu tabel sebanyak 3 record
SELECT * FROM Pembeli;

UPDATE Pembeli
SET
	Alamat_Pembeli = 'Jln. Mekar Wangi, no. 37, Bandung',
    No_Telepon = 3120918734
WHERE Id_Pembeli = 22100009;

SELECT * FROM Pembeli;

SELECT * FROM Transaksi;

UPDATE Transaksi
SET
	Total_Harga = 270000
WHERE No_Nota = 221010001;

UPDATE Transaksi
SET
	Total_Harga = 1350000
WHERE No_Nota = 221010003;

SELECT * FROM Transaksi;

-- f. Menghapus 2 record dari masing-masing tabel berdasarkan id
SELECT * FROM Pembeli;
DELETE FROM Pembeli WHERE Id_Pembeli = 22100012;
DELETE FROM Pembeli WHERE Id_Pembeli = 22100013;
SELECT * FROM Pembeli;

SELECT * FROM Sepatu;
DELETE FROM Sepatu WHERE Id_Sepatu = 21220021;
DELETE FROM Sepatu WHERE Id_Sepatu = 21220022;
SELECT * FROM Sepatu;

SELECT * FROM Transaksi;
DELETE FROM Transaksi WHERE No_Nota = 221100012;
DELETE FROM Transaksi WHERE No_Nota = 221100013;
SELECT * FROM Transaksi;

-- g. Menghapus database
DROP DATABASE toko_sepatu;