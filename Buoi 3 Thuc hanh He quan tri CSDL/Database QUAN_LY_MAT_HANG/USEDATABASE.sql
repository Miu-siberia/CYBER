--------------------------USE DATABASE--------------------------------

USE QUANLYMATHANG_B3_2374802010353

INSERT INTO MATHANG VALUES('H1', N'Xà Phòng', 30)
INSERT INTO MATHANG VALUES('H2', N'Kem đánh răng', 45)

INSERT INTO NHATKYBANHANG(ngay, nguoimua, mahang, soluong, giaban) VALUES('12/12/2020', N'Lý Thị Huyền Châu', 'H1', 20, 10000)
INSERT INTO NHATKYBANHANG(ngay, nguoimua, mahang, soluong, giaban) VALUES('01/02/2020', N'Nguyễn Thị Mạnh', 'H2', 20, 5000)
INSERT INTO NHATKYBANHANG(ngay, nguoimua, mahang, soluong, giaban) VALUES('12/12/2020', N'Phạm Minh Huyên', 'H2', 30, 6000)
INSERT INTO NHATKYBANHANG(ngay, nguoimua, mahang, soluong, giaban) VALUES('12/12/2020', N'Phạm Ngọc Duy', 'H1', 40, 9000)

SELECT * FROM MATHANG
SELECT * FROM NHATKYBANHANG

create trigger tg_mathang_insert
on mathang
instead of insert
as
begin
	--khai báo biến
	declare @MAHANG varchar(5)
	set @MAHANG =(select MAHANG from inserted)
	--kiểm tra nếu mã hàng đã có
	if exists (select * from mathang where mahang=@MAHANG)
	begin 
		raiserror('đã có và không thể thêm vào',16,1)
		rollback tran
	end
	else
	begin 
		-- nếu mã hàng chưa có thì thêm dữ liệu vào bẳng
		insert into mathang(mahang,tenhang,soluong)
		select mahang,tenhang,soluong
		from inserted
		print N'đã thêm thành công'
	end
	
end
select * from mathang
update mathang
set tenhang =N'Nước xả'
where mahang='H3'


create trigger tg_nhatkybanhang_insert
on nhatkybanhang
for insert,update
as 
begin
	declare @MAHANG varchar(5)
	declare @SLBAN int
	set @MAHANG=(select mahang from inserted)
	set @SLBAN=(select soluong from inserted)
	if (@SLBAN>(select soluong from mathang where mahang=@MAHANG))
	begin 
		raiserror('không đủ số lượng',16,1)
		rollback tran
	end
	else
	begin 
		update mathang
		set soluong = soluong - @SLBAN
		where mahang=@MAHANG
	end

end
select * from mathang
select * from nhatkybanhang
set dateformat dmy
insert nhatkybanhang values('12/08/2025',N'Đăng ngu1','H1',20,5000)