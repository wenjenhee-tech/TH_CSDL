create database QLSV1
CREATE TABLE LOP
(	MaLop char(10) not null,
	TenLop nchar(30),
	constraint PK_LOP primary key (MaLop)
)
CREATE TABLE MONHOC
(	MaMH char(10) not null,
	TenMH nchar(30),
	constraint PK_MONHOC primary key (MaMH)
)
CREATE TABLE SINHVIEN
(	MaSV char(10) not null,
	HoTen nchar(30),
	NgaySinh date,
	MaLop char(10),
	constraint PK_SINHVIEN primary key (MaSV)
	
)
alter TABLE SINHVIEN
add constraint FK_SINHVIEN_LOP foreign key(MaLop) references LOP(MaLop)
CREATE TABLE THESV
(	MaThe char(10) not null,
	NgayCap date,
	NgayHH date,
	MaSV char(10),
	constraint PK_THESV primary key (MaThe),
	constraint FK_THESV_SINHVIEN foreign key (MaSV) references SINHVIEN(MaSV)
)
create table KETQUA
(	MaSV char(10) not null,
	MaMH char(10) not  null,
	Diem float,
	constraint PK_KETQUA primary key (MaSV,MaMH),
	constraint FK_KETQUA_MONHOC foreign key (MaMH) references MONHOC(MaMH),
	constraint FK_KETQUA_SINHVIEN foreign key (MaSV) references SINHVIEN(MaSV)
)

inSERT INTO LOP(MaLop)
VALUES ('L4')
inSERT INTO LOP(MaLop)
VALUES ('L6')
inSERT INTO LOP(MaLop)
VALUES ('L5')
INSERT INTO SINHVIEN(MaSV,MaLop)
VALUES('SV4','L4')
INSERT INTO SINHVIEN(MaSV,MaLop)
VALUES('SV6','L6')
INSERT INTO SINHVIEN(MaSV,MaLop)
VALUES('SV5','L5')
inSERT INTO MONHOC(MaMH)
VALUES ('M4')
inSERT INTO MONHOC(MaMH)
VALUES ('M5')
inSERT INTO MONHOC(MaMH)
VALUES ('M6')
INSERT INTO KETQUA
VALUES('SV4','M4',9)
INSERT INTO KETQUA
VALUES('SV5','M6',2.5)
INSERT INTO KETQUA
VALUES('SV6','M2',6.5)
INSERT INTO THESV(MaThe,MaSV)
VALUES('T4','SV4')
INSERT INTO THESV(MaThe,MaSV)
VALUES('T5','SV5')
INSERT INTO THESV(MaThe,MaSV)
VALUES('T6','SV6')

SELECT * FROM siNHVIEN
SELECT * FROM LOP
SELECT * FROM MONHOC
SELECT * FROM KETQUA
SELECT *
FROM KETQUA
ORDER BY DIEM ASC, MaSV DESC
UPDATE KETQUA
SET Diem = Diem + 1
WHERE MaMH ='M6'
SELECT DISTINCT MaLop
from LOP
SELECT DISTINCT MaSV
FROM SINHVIEN 
SELECT DISTINCT MaThe
FROM THESV
select distinct MaMH
from MONHOC
select * 
from KETQUA
where Diem between 5 and 9
select *
from SINHVIEN 
where MaSV like '%1'

