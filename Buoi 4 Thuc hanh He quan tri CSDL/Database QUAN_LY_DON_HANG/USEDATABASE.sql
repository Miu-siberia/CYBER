USE QUANLYDONHANG_B4_2374802010353

-----LOAIHANG
INSERT INTO LOAIHANG(maloaihang, tenloaihang)
VALUES(1,N'Bàn ghế'),(2,N'Gia dụng'), (3,N'Trang trí')

-----NHACUNGCAP
INSERT INTO NHACUNGCAP(manhacungcap, tennhacungcap, tengiaodich, diachi, dienthoai, fax, email)
VALUES('NCC001',N'Thành Long',N'TNHH Thành Long',N'45 Nguyễn Khắc Nhu, Cô Giang, Q1, HCM','0919580666','08230123456','thanhlong@gmail.com'),
('NCC002',N'Đại Việt',N'TNHH Đại Việt',N'50 Lê Văn Sỹ, Q10, HCM','0919580888','08230123466','daiviet@gmail.com'),
('NCC003',N'Hoàng Long',N'TNHH Hoàng Long',N'345 Phan Văn Trị, Gò Vấp, HCM','0919580111','08230123456','hoanglong@gmail.com'),
('NCC004',N'Gia Phát',N'TNHH Gia Phát',N'15 Nguyễn Chí Thanh, Q10, HCM','0919580777','08230123333','giaphat@gmail.com'),
('NCC005',N'Nguyễn Kim',N'TNHH Nguyễn Kim',N'35 Đào Duy Từ, Q3, HCM','0919580222','08230123444','nguyenkim@gmail.com')

-----MATHANG
INSERT INTO MATHANG(mahang, tenhang, manhacungcap, maloaihang, soluong, donvitinh, giahang)
VALUES('M001',N'Bàn máy tính','NCC001',1,100,N'Cái',5000000),
('M002',N'Bàn ủi','NCC001',2,500,N'Cái',1000000),
('M003',N'Tranh treo tường','NCC001',3,150,N'Cái',500000),
('M004',N'Máy sấy tóc','NCC002',1,200,N'Cái',3000000),
('M005',N'Nồi cơm điện','NCC002',2,100,N'Cái',5000000),
('M006',N'Quạt máy để bàn','NCC001',1,100,N'Cái',1000000),
('M007',N'Lò vi sóng','NCC003',1,100,N'Cái',5000000),
('M008',N'Máy phun sương','NCC003',2,100,N'Cái',3000000)

-----KHACHHANG
INSERT INTO KHACHHANG(makhachhang, tenkhachhang, tengiaodich, diachi, email, dienthoai, fax)
VALUES('KH0001',N'An Long',N'Công ty TMCP An Long',N'65 Thống Nhất, Gò Vấp, HCM','anlong@gmail.com','0238973455','02834940595'),
('KH0002',N'Phong Vũ',N'Công ty TMCP Phong Vũ',N'650 Hoàng Văn Thụ, Tân Bình, HCM','phongvu@gmail.com','0238973411','02837484755'),
('KH0003',N'Thanh Bình',N'Công ty TMCP Thanh Bình',N'125 Nam Kỳ Khởi Nghĩa, Q1, HCM','thanhbinh@gmail.com','0238973422','9273749482'),
('KH0004',N'Gia Phát',N'TNHH Gia Phát',N'234 Lê Lợi, Q1, HCM','binhtay@gmail.com','0238973455','02838273488'),
('KH0005',N'Mai Thanh',N'Công ty TMCP Mai Thanh',N'32 Nguyễn Văn Nghi, Gò Vấp, HCM','maithanh@gmail.com','0238973209','2930387484')


-----NHANVIEN
INSERT INTO NHANVIEN(manhanvien, ho, ten, ngaysinh, ngaylamviec, diachi, dienthoai, luongcoban, phucap)
VALUES('NV001',N'Lý Thị Huyền', N'Châu','1989-3-3','2000-1-1',N'56 Trần Hưng Đạo, Q5, HCM','0945312788',20000000,1000000),
('NV002',N'Nguyễn Thanh', N'Huy','1990-12-3','2001-2-1',N'526 Nguyễn Kiệm, Gò Vấp, HCM','0945312711',1500000,3000000),
('NV003',N'Phạm Minh', N'Huyên','1989-3-3','2005-7-1',N'88 Cộng Hòa, Tân Bình, HCM','0945312722',10000000,1000000),
('NV004',N'Trương Thế', N'Vinh','1972-3-30','2007-11-8',N'56/3/2 Lý Thường Kiệt, Tân Bình, HCM','0945312328',18000000,1000000),
('NV005',N'Nguyễn Văn', N'Lộc','1985-2-5','2018-1-1',N'2/3 Đường 3/2, Q10, HCM','0943412788',19000000,5000000)

-----DONDATHANG
INSERT INTO DONDATHANG(sohoadon, makhachhang, manhanvien, ngaydathang, ngaygiaohang, ngaychuyenhang, noigiaohang)
VALUES('1','KH0001','NV001','2018-7-9','2018-7-30','2018-7-25',N'65 Thống Nhất, Gò Vấp, HCM'),
('2','KH0002','NV001','2018-8-12','2018-9-5','2018-7-25',N'650 Hoàng Văn Thụ, Tân Bình, HCM'),
('3','KH0003','NV002','2018-11-9','2018-12-9','2018-11-25',N'125 Nam Kỳ Khởi Nghĩa, Q1, HCM'),
('4','KH0004','NV004','2018-11-20','2018-12-30','2018-12-15',N'234 Lê Lợi, Q1, HCM'),
('5','KH0004','NV004','2018-11-22','2018-12-30','2018-12-15',N'4 Hai Bà Trưng, Q1, HCM')



-----CHITIETDATHANG
INSERT INTO CHITIETDATHANG(sohoadon, mahang, giaban, soluong, mucgiamgia)
VALUES('1','M001',5000000,2,15),
('2','M001',5000000,1,10),
('2','M002',1000000,2,5),
('3','M005',5000000,1,15),
('3','M006',1000000,1,5),
('3','M002',1000000,2,5),
('3','M001',5000000,1,5),
('3','M003',500000,1,0),
('3','M004',3000000,1,10),
('6','M001',5000000,1,10),
('6','M002',5000000,1,10),
('6','M005',1000000,1,5)

INSERT INTO DIEUKIENNHAPHANG(mahang, mahang_truoc)
VALUES('M002','M001'),
('M003','M001'),
('M004','M003'),
('M005','M001'),
('M006','M003'),
('M008','M006')


----SELECT
SELECT * FROM LOAIHANG
SELECT * FROM NHACUNGCAP
SELECT * FROM MATHANG
SELECT * FROM KHACHHANG
SELECT * FROM NHANVIEN
SELECT * FROM DONDATHANG
SELECT * FROM CHITIETDATHANG
SELECT * FROM DIEUKIENNHAPHANG
-------------------------------------------------------------------------------------------
--1) Viết một function:  
--§ Tên: func_dsddh 
--§ Input: không có 
--§ Yêu cầu: Liệt kê số hoá đơn, tên khách hàng, ngày đặt hàng do nhân viên 
--“Trương Thế Vinh” lập, đồng thời định dạng ngày đặt hàng của đơn đặt hàng 
--theo dạng dd/mm/yyyy. 
CREATE FUNCTION func_dsddh()
RETURNS TABLE
AS
RETURN
    (
    SELECT sohoadon, tenkhachhang, ngaydathang
    FROM dondathang D JOIN khachhang K ON D.MAKHACHHANG = K.makhachhang 
    JOIN nhanvien N ON D.MANHANVIEN = N.manhanvien
    WHERE  N.manhanvien = 'NV004'
    )
SELECT * FROM dondathang



--2) Viết một function:  
--§ Tên: func_dslh 
--§ Input: không có 
--§ Yêu cầu: Liệt kê tên loại hàng và giá hàng trung bình của tất cả những mặt 
--hàng của từng loại hàng đó, với giá hàng trung bình hiển thị 2 số phía sau dấu 
--thập phân (ví dụ: 6,5555 sẽ thành 6,55). 
CREATE FUNCTION func_dslh()
RETURNS TABLE
AS
RETURN
    (
    SELECT TENLOAIHANG, ROUND(AVG(GIAHANG), 2) AS GIABANTRUNGBINH
    FROM LOAIHANG L JOIN MATHANG M ON L.MALOAIHANG = M.MALOAIHANG
    GROUP BY TENLOAIHANG
    )
	SELECT * FROM dbo.func_dslh()
--3) Viết một function:  
--§ Tên: func_tong_ddh 
--§ Input: số hoá đơn 
--§ Yêu cầu: Khi nhập vào số hóa đơn, hãy viết hàm xuất ra tổng tiền của đơn đặt 
--hàng đó (tổng tiền = tổng ((giá bán x số lượng) – (mức giảm giá/100) x (giá 
--bán x số lượng)).    
CREATE FUNCTION func_tong_ddh(@SOHOADON VARCHAR(10))
RETURNS DECIMAL(18,2)
AS
BEGIN
    DECLARE @TONGTIEN DECIMAL(18,2)

    SELECT @TONGTIEN = SUM((GIABAN * SOLUONG) - (MUCGIAMGIA/100) * (GIABAN * SOLUONG))
    FROM CHITIETDATHANG
    WHERE SOHOADON = @SOHOADON

    RETURN @TONGTIEN
END
SELECT dbo.func_tong_ddh('1') AS TONG_TIEN;

--4) Viết một function:  
--§ Tên: func_dsddh_kh 
--§ Input: mã khách hàng 
--§ Yêu cầu: Khi nhập vào mã khách hàng, hãy viết hàm xuất ra danh sách các đơn 
--đặt hàng của khách hàng đó (danh sách các đơn đặt hàng: sohoadon, 
--tenkhachhang, ngaydathang). 
CREATE FUNCTION func_dsddh_kh(@MAKHACHHANG VARCHAR(10))
RETURNS TABLE
AS
RETURN (
    SELECT D.SOHOADON, K.TENKHACHHANG, D.NGAYDATHANG
    FROM KHACHHANG K JOIN DONDATHANG D ON K.MAKHACHHANG = D.MAKHACHHANG
    WHERE K.MAKHACHHANG = @MAKHACHHANG
)
SELECT * FROM dbo.func_dsddh_kh('KH0001')
--5) Viết một function:  
--§ Tên: func_dsddh_nv 
--§ Input: mã nhân viên 
--§ Yêu cầu: Khi nhập vào mã nhân viên, hãy viết hàm nếu mã nhân viên chưa lập 
--đơn đặt hàng nào thì xuất ra số hóa đơn, ngày đặt hàng của tất cả các đơn đặt 
--hàng trong Công ty, ngược lại thì xuất ra số hóa đơn, ngày đặt hàng của những 
--đơn đặt hàng đã được nhân viên đó lập. 
CREATE FUNCTION func_dsddh_nv(@MANHANVIEN VARCHAR(10))
RETURNS @DANHSACHDONHANG TABLE (
    SOHOADON VARCHAR(10),
    NGAYDATHANG DATE
)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM DONDATHANG WHERE MANHANVIEN = @MANHANVIEN)
    BEGIN
        INSERT INTO @DANHSACHDONHANG (SOHOADON, NGAYDATHANG)
        SELECT SOHOADON, NGAYDATHANG
        FROM DONDATHANG
    END
    ELSE
    BEGIN
        INSERT INTO @DANHSACHDONHANG (SOHOADON, NGAYDATHANG)
        SELECT SOHOADON, NGAYDATHANG
        FROM DONDATHANG
        WHERE MANHANVIEN = @MANHANVIEN
    END
    RETURN
END
SELECT * FROM dbo.func_dsddh_nv('NV001')