-- ============================================
-- NAMA    : Salwa JJ
-- NIM     : 2505060051
-- MODUL   : 5 - SQL JOIN
-- DATABASE: DBMS11_2505060051
-- ============================================

-- ============================================
-- 1. MEMBUAT DAN MENGGUNAKAN DATABASE
-- ============================================

CREATE DATABASE IF NOT EXISTS DBMS11_2505060051;
USE DBMS11_2505060051;

-- ============================================
-- 2. TABEL MAHASISWA (untuk praktikum JOIN)
-- ============================================

CREATE TABLE IF NOT EXISTS mahasiswa (
    nim CHAR(9) PRIMARY KEY,
    nama VARCHAR(30) NOT NULL,
    alamat VARCHAR(30) NOT NULL
);

INSERT INTO mahasiswa (nim, nama, alamat) VALUES
('250506001', 'Andi Prasetyo', 'Jakarta'),
('250506002', 'Budi Santoso', 'Bandung'),
('2505060051', 'Citra Dewi', 'Surabaya');

-- ============================================
-- 3. TABEL PEMINJAMAN (untuk praktikum JOIN)
-- ============================================

CREATE TABLE IF NOT EXISTS peminjaman (
    id_peminjaman INT PRIMARY KEY AUTO_INCREMENT,
    nim CHAR(9) NOT NULL,
    buku VARCHAR(100) NOT NULL
);

INSERT INTO peminjaman (nim, buku) VALUES
('250506001', 'Database 101'),
('2505060051', 'SQL JOIN Mastery'),
('250506999', 'Fiksi Ilmiah');

-- ============================================
-- 4. PRAKTIKUM JOIN (Mahasiswa vs Peminjaman)
-- ============================================

-- 4.1 INNER JOIN
SELECT '--- INNER JOIN ---' AS '';
SELECT *
FROM mahasiswa A
INNER JOIN peminjaman B ON A.nim = B.nim;

-- 4.2 LEFT JOIN
SELECT '--- LEFT JOIN ---' AS '';
SELECT *
FROM mahasiswa A
LEFT JOIN peminjaman B ON A.nim = B.nim;

-- 4.3 RIGHT JOIN
SELECT '--- RIGHT JOIN ---' AS '';
SELECT *
FROM mahasiswa A
RIGHT JOIN peminjaman B ON A.nim = B.nim;

-- 4.4 FULL JOIN (UNION di MySQL)
SELECT '--- FULL JOIN (UNION) ---' AS '';
SELECT * FROM mahasiswa LEFT JOIN peminjaman ON mahasiswa.nim = peminjaman.nim
UNION
SELECT * FROM mahasiswa RIGHT JOIN peminjaman ON mahasiswa.nim = peminjaman.nim;

-- ============================================
-- 5. TUGAS MODUL - TABEL PEGAWAI
-- ============================================

CREATE TABLE IF NOT EXISTS TbPegawai (
    NIP CHAR(3) PRIMARY KEY,
    Nama VARCHAR(30),
    TglLahir DATE,
    TempatLahir VARCHAR(20),
    ThnMasuk INT(4),
    Gol INT(1)
);

INSERT INTO TbPegawai (NIP, Nama, TglLahir, TempatLahir, ThnMasuk, Gol) VALUES
('001', 'Ahmad Burhanuddin', '1990-12-12', 'Bandung', 2010, 3),
('002', 'Amin Imsyorry', '1989-12-02', 'Ciamis', 2009, 2),
('003', 'Budhy Bungaox', '1989-01-20', 'Tasikmalaya', 2011, 4),
('004', 'Zulkarnaeen', '1991-02-20', 'Bandung', 2009, 1),
('005', 'Dewi Sudewa', '1990-12-02', 'Bogor', 2009, 1),
('006', 'Ina Nurlian', '1993-08-09', 'Sumedang', 2011, 4),
('007', 'Cheppy Chardut', '1992-07-09', 'Garut', 2011, 4),
('008', 'Dodong M', '1990-07-10', 'Bandung', 2010, 3),
('009', 'Gandung P', '1990-06-25', 'Bogor', 2009, 2),
('010', 'Agus Wisman', '1993-10-17', 'Garut', 2010, 3);

-- ============================================
-- 6. TUGAS MODUL - TABEL GAJI
-- ============================================

CREATE TABLE IF NOT EXISTS TbGaji (
    Gol INT(1) PRIMARY KEY,
    Gapok INT(12)
);

INSERT INTO TbGaji (Gol, Gapok) VALUES
(1, 1500000),
(2, 2000000),
(3, 3500000),
(4, 5000000);

-- ============================================
-- 7. JOIN ANTARA TbPegawai DAN TbGaji
-- ============================================

-- 7.1 INNER JOIN
SELECT '--- INNER JOIN Pegawai - Gaji ---' AS '';
SELECT A.*, B.Gapok
FROM TbPegawai A
INNER JOIN TbGaji B ON A.Gol = B.Gol;

-- 7.2 LEFT JOIN
SELECT '--- LEFT JOIN Pegawai - Gaji ---' AS '';
SELECT A.*, B.Gapok
FROM TbPegawai A
LEFT JOIN TbGaji B ON A.Gol = B.Gol;

-- 7.3 RIGHT JOIN
SELECT '--- RIGHT JOIN Pegawai - Gaji ---' AS '';
SELECT A.*, B.Gapok
FROM TbPegawai A
RIGHT JOIN TbGaji B ON A.Gol = B.Gol;

-- 7.4 FULL JOIN (UNION)
SELECT '--- FULL JOIN Pegawai - Gaji (UNION) ---' AS '';
SELECT A.*, B.Gapok FROM TbPegawai A LEFT JOIN TbGaji B ON A.Gol = B.Gol
UNION
SELECT A.*, B.Gapok FROM TbPegawai A RIGHT JOIN TbGaji B ON A.Gol = B.Gol;

-- ============================================
-- 8. MENAMPILKAN SEMUA DATA TABEL (Verifikasi)
-- ============================================

SELECT '=== DATA MAHASISWA ===' AS '';
SELECT * FROM mahasiswa;

SELECT '=== DATA PEMINJAMAN ===' AS '';
SELECT * FROM peminjaman;

SELECT '=== DATA PEGAWAI ===' AS '';
SELECT * FROM TbPegawai;

SELECT '=== DATA GAJI ===' AS '';
SELECT * FROM TbGaji;

-- ============================================
-- END OF FILE
-- ============================================-- ============================================
-- NAMA    : Salwa JJ
-- NIM     : 2505060051
-- MODUL   : 5 - SQL JOIN
-- DATABASE: DBMS5_2505060051
-- ============================================

-- ============================================
-- 1. MEMBUAT DAN MENGGUNAKAN DATABASE
-- ============================================

CREATE DATABASE IF NOT EXISTS DBMS11_2505060051;
USE DBMS11_2505060051;

-- ============================================
-- 2. TABEL MAHASISWA (untuk praktikum JOIN)
-- ============================================

CREATE TABLE IF NOT EXISTS mahasiswa (
    nim CHAR(9) PRIMARY KEY,
    nama VARCHAR(30) NOT NULL,
    alamat VARCHAR(30) NOT NULL
);

INSERT INTO mahasiswa (nim, nama, alamat) VALUES
('250506001', 'Andi Prasetyo', 'Jakarta'),
('250506002', 'Budi Santoso', 'Bandung'),
('2505060051', 'Citra Dewi', 'Surabaya');

-- ============================================
-- 3. TABEL PEMINJAMAN (untuk praktikum JOIN)
-- ============================================

CREATE TABLE IF NOT EXISTS peminjaman (
    id_peminjaman INT PRIMARY KEY AUTO_INCREMENT,
    nim CHAR(9) NOT NULL,
    buku VARCHAR(100) NOT NULL
);

INSERT INTO peminjaman (nim, buku) VALUES
('250506001', 'Database 101'),
('2505060051', 'SQL JOIN Mastery'),
('250506999', 'Fiksi Ilmiah');

-- ============================================
-- 4. PRAKTIKUM JOIN (Mahasiswa vs Peminjaman)
-- ============================================

-- 4.1 INNER JOIN
SELECT '--- INNER JOIN ---' AS '';
SELECT *
FROM mahasiswa A
INNER JOIN peminjaman B ON A.nim = B.nim;

-- 4.2 LEFT JOIN
SELECT '--- LEFT JOIN ---' AS '';
SELECT *
FROM mahasiswa A
LEFT JOIN peminjaman B ON A.nim = B.nim;

-- 4.3 RIGHT JOIN
SELECT '--- RIGHT JOIN ---' AS '';
SELECT *
FROM mahasiswa A
RIGHT JOIN peminjaman B ON A.nim = B.nim;

-- 4.4 FULL JOIN (UNION di MySQL)
SELECT '--- FULL JOIN (UNION) ---' AS '';
SELECT * FROM mahasiswa LEFT JOIN peminjaman ON mahasiswa.nim = peminjaman.nim
UNION
SELECT * FROM mahasiswa RIGHT JOIN peminjaman ON mahasiswa.nim = peminjaman.nim;

-- ============================================
-- 5. TUGAS MODUL - TABEL PEGAWAI
-- ============================================

CREATE TABLE IF NOT EXISTS TbPegawai (
    NIP CHAR(3) PRIMARY KEY,
    Nama VARCHAR(30),
    TglLahir DATE,
    TempatLahir VARCHAR(20),
    ThnMasuk INT(4),
    Gol INT(1)
);

INSERT INTO TbPegawai (NIP, Nama, TglLahir, TempatLahir, ThnMasuk, Gol) VALUES
('001', 'Ahmad Burhanuddin', '1990-12-12', 'Bandung', 2010, 3),
('002', 'Amin Imsyorry', '1989-12-02', 'Ciamis', 2009, 2),
('003', 'Budhy Bungaox', '1989-01-20', 'Tasikmalaya', 2011, 4),
('004', 'Zulkarnaeen', '1991-02-20', 'Bandung', 2009, 1),
('005', 'Dewi Sudewa', '1990-12-02', 'Bogor', 2009, 1),
('006', 'Ina Nurlian', '1993-08-09', 'Sumedang', 2011, 4),
('007', 'Cheppy Chardut', '1992-07-09', 'Garut', 2011, 4),
('008', 'Dodong M', '1990-07-10', 'Bandung', 2010, 3),
('009', 'Gandung P', '1990-06-25', 'Bogor', 2009, 2),
('010', 'Agus Wisman', '1993-10-17', 'Garut', 2010, 3);

-- ============================================
-- 6. TUGAS MODUL - TABEL GAJI
-- ============================================

CREATE TABLE IF NOT EXISTS TbGaji (
    Gol INT(1) PRIMARY KEY,
    Gapok INT(12)
);

INSERT INTO TbGaji (Gol, Gapok) VALUES
(1, 1500000),
(2, 2000000),
(3, 3500000),
(4, 5000000);

-- ============================================
-- 7. JOIN ANTARA TbPegawai DAN TbGaji
-- ============================================

-- 7.1 INNER JOIN
SELECT '--- INNER JOIN Pegawai - Gaji ---' AS '';
SELECT A.*, B.Gapok
FROM TbPegawai A
INNER JOIN TbGaji B ON A.Gol = B.Gol;

-- 7.2 LEFT JOIN
SELECT '--- LEFT JOIN Pegawai - Gaji ---' AS '';
SELECT A.*, B.Gapok
FROM TbPegawai A
LEFT JOIN TbGaji B ON A.Gol = B.Gol;

-- 7.3 RIGHT JOIN
SELECT '--- RIGHT JOIN Pegawai - Gaji ---' AS '';
SELECT A.*, B.Gapok
FROM TbPegawai A
RIGHT JOIN TbGaji B ON A.Gol = B.Gol;

-- 7.4 FULL JOIN (UNION)
SELECT '--- FULL JOIN Pegawai - Gaji (UNION) ---' AS '';
SELECT A.*, B.Gapok FROM TbPegawai A LEFT JOIN TbGaji B ON A.Gol = B.Gol
UNION
SELECT A.*, B.Gapok FROM TbPegawai A RIGHT JOIN TbGaji B ON A.Gol = B.Gol;

-- ============================================
-- 8. MENAMPILKAN SEMUA DATA TABEL (Verifikasi)
-- ============================================

SELECT '=== DATA MAHASISWA ===' AS '';
SELECT * FROM mahasiswa;

SELECT '=== DATA PEMINJAMAN ===' AS '';
SELECT * FROM peminjaman;

SELECT '=== DATA PEGAWAI ===' AS '';
SELECT * FROM TbPegawai;

SELECT '=== DATA GAJI ===' AS '';
SELECT * FROM TbGaji;

-- ============================================
-- END OF FILE
-- ============================================