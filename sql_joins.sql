CREATE DATABASE univ;

CREATE TABLE mahasiswa (
	nama_mahasiswa VARCHAR (50),
    kelas VARCHAR (1)
);

INSERT INTO mahasiswa
VALUES
	('Amanda', 'A'),
    ('Andi', 'B'),
    ('Aruman', 'C'),
    ('Ashari', 'E');
    
CREATE TABLE wali_kelas (
	nama_wali_kelas VARCHAR (50),
    kelas VARCHAR(1)
    );
    
INSERT INTO wali_kelas
VALUES 
	('Sutarno', 'A'),
    ('Jonathan', 'B'),
    ('Vania', 'C'),
    ('Raissa', 'D');
    
-- Inner join
SELECT nama_wali_kelas, wali_kelas.kelas, nama_mahasiswa
FROM wali_kelas INNER JOIN mahasiswa
ON wali_kelas.kelas = mahasiswa.kelas;

-- Left join
SELECT nama_wali_kelas, wali_kelas.kelas, nama_mahasiswa
FROM wali_kelas LEFT JOIN mahasiswa
ON wali_kelas.kelas = mahasiswa.kelas;

-- Right join
SELECT nama_wali_kelas, mahasiswa.kelas, nama_mahasiswa
FROM wali_kelas RIGHT JOIN mahasiswa
ON wali_kelas.kelas = mahasiswa.kelas;

-- Full outer join / union
SELECT nama_wali_kelas, wali_kelas.kelas, nama_mahasiswa
FROM wali_kelas LEFT JOIN mahasiswa
ON wali_kelas.kelas = mahasiswa.kelas
UNION
SELECT nama_wali_kelas, mahasiswa.kelas, nama_mahasiswa
FROM wali_kelas RIGHT JOIN mahasiswa
ON wali_kelas.kelas = mahasiswa.kelas;

-- Cross join
SELECT nama_wali_kelas, wali_kelas.kelas, nama_mahasiswa
FROM wali_kelas CROSS JOIN mahasiswa
ORDER BY kelas asc;