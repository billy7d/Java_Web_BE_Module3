CREATE DATABASE ThucTap;
CREATE TABLE KHOA(
makhoa CHAR(10) PRIMARY KEY, 
tenkhoa CHAR(30),
dienthoai CHAR(10)
);


CREATE TABLE GiangVien(
magv INT PRIMARY KEY, 
hotengv CHAR(30), 
luong DECIMAL(5,2), 
makhoa CHAR(10)
);

ALTER TABLE giangvien
ADD FOREIGN KEY(makhoa) references khoa(makhoa);

CREATE TABLE SinhVien(
masv INT PRIMARY KEY, 
hotensv CHAR(30), 
makhoa CHAR(10), 
namsinh INT, 
quequan CHAR(30)
);

CREATE TABLE DeTai(
madt CHAR(10) PRIMARY KEY, 
tendt CHAR(30), 
kinhphi INT, 
noiThucTap CHAR(30)
);

CREATE TABLE HuongDan(
masv INT PRIMARY KEY, 
madt CHAR(10), 
magv INT, 
ketqua DECIMAL(5,2)
);

INSERT INTO KHOA VALUES
('GEO','DIALY VA QLTN',3855413),
('Math','Toan',3855411),
('Bio','Cong nghe Sinh hoc',3855412);
INSERT INTO  GiangVien VALUES
(11,'Thanh Binh',700,'Geo'),    
(12,'Thu Huong',500,'Math'),
(13,'Chu Vinh',650,'Geo'),
(14,'Le Thi Ly',500,'Bio'),
(15,'Tran Son',900,'Math');
INSERT INTO SinhVien VALUES
(1,'Le Van Son','Bio',1990,'Nghe An'),
(2,'Nguyen Thi Mai','Geo',1990,'Thanh Hoa'),
(3,'Bui Xuan Duc','Math',1992,'Ha Noi'),
(4,'Nguyen Van Tung','Bio',null,'Ha Tinh'),
(5,'Le Khanh Linh','Bio',1989,'Ha Nam'),
(6,'Tran Khac Trong','Geo',1991,'Thanh Hoa'),
(7,'Le Thi Van','Math',null,'null'),
(8,'Hoang Van Duc','Bio',1992,'Nghe An');
INSERT INTO DeTai VALUES
('Dt01','GIS',100,'Nghe An'),
('Dt02','ARC GIS',500,'Nam Dinh'),
('Dt03','Spatial DB',100, 'Ha Tinh'),
('Dt04','MAP',300,'Quang Binh' );
INSERT INTO HuongDan VALUES
(1,'Dt01',13,8),
(2,'Dt03',14,0),
(3,'Dt03',12,10),
(5,'Dt04',14,7),
(6,'Dt01',13,Null),
(7,'Dt04',11,10),
(8,'Dt03',15,6);

-- CAU 1 -- SELECT magv,hotengv,makhoa FROM GIANGVIEN; 

-- CAU 2 SELEct giangvien.magv,hotengv,giangvien.makhoa, khoa.tenkhoa from giangvien
-- inner join khoa
-- on giangvien.makhoa= khoa.makhoa
-- where tenkhoa ='DIALY VA QLTN';

-- CAU 3 SELECT count(KHOA.TENKHOA) AS CountCNSH, khoa.tenkhoa FROM SINHVIEN
-- JOIN KHOA ON KHOA.MAKHOA = SINHVIEN.MAKHOA
-- WHERE KHOA.TENKHOA = 'Cong nghe Sinh hoc';

-- cau4 SELECT MASV, SINHVIEN.MAKHOA, HOTENSV, NAMSINH FROM SINHVIEN
-- JOIN KHOA ON KHOA.MAKHOA = SINHVIEN.MAKHOA
-- WHERE KHOA.TENKHOA = 'Toan';

-- CAU 5 SELECT count(GIANGVIEN.MAKHOA) AS COUNTGVIEN, GIANGVIEN.MAKHOA FROM GIANGVIEN
-- JOIN KHOA ON GIANGVIEN.MAKHOA = KHOA.MAKHOA
-- WHERE KHOA.TENKHOA ='Cong nghe Sinh hoc';

-- cau 6 SELECT sinhvien.masv, sinhvien.hotensv,sinhvien.namsinh,sinhvien.quequan 
-- from sinhvien
-- left join huongdan on sinhvien.masv = huongdan.masv
-- where huongdan.masv is null;

-- cau 7
-- SELECT khoa.makhoa, khoa.tenkhoa, count(giangvien.magv) as count from giangvien
-- join khoa on giangvien.makhoa = khoa.makhoa
-- group by tenkhoa

-- CAU 8 SELECT SINHVIEN.HOTENSV, KHOA.dienthoai AS SODTKHOA FROM KHOA
-- JOIN SINHVIEN ON KHOA.MAKHOA = SINHVIEN.MAKHOA
-- WHERE SINHVIEN.HOTENSV ='Le Van Son';

-- CAU 9
-- SELECT DETAI.MADT, DETAI.TENDT, GIANGVIEN.HOTENGV FROM 
-- ((HUONGDAN JOIN GIANGVIEN ON HUONGDAN.MAGV = GIANGVIEN.MAGV) 
--   JOIN DETAI ON HUONGDAN.MADT = DETAI.MADT)
--   WHERE GIANGVIEN.HOTENGV ='Tran Son';

-- CAU 10
-- SELECT DETAI.TENDT  FROM 
-- huongdan JOIN SINHVIEN ON HUONGDAN.MASV = SINHVIEN.MASV
-- RIGHT JOIN detai ON HUONGDAN.MADT = detai.MADT
-- WHERE HUONGDAN.MADT IS NULL;

-- cau11
-- SELECT  giangvien.magv, giangvien.hotengv, khoa.tenkhoa from giangvien
-- join huongdan on giangvien.magv = huongdan.magv
-- join khoa on giangvien.makhoa = khoa.makhoa
-- group by huongdan.magv
-- having count(huongdan.magv) >=2;

-- cau12
-- SELECT detai.madt, detai.tendt, detai.kinhphi  from detai
-- order  by  kinhphi desc
-- limit 0,1;

-- cau 13
-- select detai.madt, detai.tendt from detai 
-- join huongdan on detai.madt = huongdan.madt
-- group by detai.madt
-- having count(detai.madt)>=2

-- cau 14
-- SELECT sinhvien.masv, sinhvien.hotensv,huongdan.ketqua from sinhvien
-- join huongdan on sinhvien.masv = huongdan.masv
-- join khoa on sinhvien.makhoa = khoa.makhoa
-- where khoa.tenkhoa = 'DIALY VA QLTN';

-- cau 15
-- select khoa.tenkhoa, count(khoa.tenkhoa) from khoa
-- join sinhvien on khoa.makhoa = sinhvien.makhoa
-- group by khoa.tenkhoa;

-- cau 16
-- select sinhvien.masv,sinhvien.makhoa,sinhvien.hotensv,sinhvien.namsinh,sinhvien.quequan from huongdan
-- join sinhvien on huongdan.masv = sinhvien.masv
-- join detai on huongdan.madt = detai.madt
-- where sinhvien.quequan = detai.noiThucTap;

-- cau 17
-- select * from sinhvien
-- join huongdan on sinhvien.masv = huongdan.masv
-- where huongdan.ketqua is null;

-- -- cau 18

-- select sinhvien.masv, sinhvien.hotensv, sinhvien.quequan,huongdan.ketqua from sinhvien
-- join huongdan on sinhvien.masv = huongdan.masv
-- where huongdan.ketqua ='0';













 





























 



















