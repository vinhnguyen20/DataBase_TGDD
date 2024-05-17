
--Bai 1--

CREATE PROCEDURE Danh_Gia_San_Pham
	@ID_Tai_Khoan INT,
	@ID_San_Pham INT,
	@product_count VARCHAR(50) OUTPUT
AS
BEGIN
	IF NOT EXISTS (
		SELECT 
			*
		FROM
			Tai_Khoan as u
			inner join Danh_Gia as d on d.ID_Tai_Khoan = u.ID
			inner join San_Pham as p on d.ID_San_Pham = p.ID
		Where
			u.ID = @ID_Tai_Khoan and p.ID = @ID_San_Pham
	) 
		BEGIN
			SELECT @product_count = 'Người dùng chưa mua sản phẩm này';
		END
	ELSE
		BEGIN
			SELECT 
				u.ID as ID_Nguoi_Dung,
				p.ID as ID_San_Pham,
				d.Mo_ta as Mo_ta,
				d.So_Diem as So_Sao
			FROM
				Tai_Khoan as u
				inner join Danh_Gia as d on d.ID_Tai_Khoan = u.ID
				inner join San_Pham as p on d.ID_San_Pham = p.ID
			Where
				u.ID = @ID_Tai_Khoan and p.ID = @ID_San_Pham
		END
END



DECLARE @v_max_salary VARCHAR(50)
SET @v_max_salary = 'Đã mua'
Exec Danh_Gia_San_Pham @ID_Tai_Khoan = 1 ,@ID_San_Pham = 2, @p_max_salary = @v_max_salary  OUTPUT

select @v_max_salary as 'trang thai';



--Bai 3--


----- Y 1-----
CREATE FUNCTION [dbo].[Danh_Sach_Don_Hang] (@Id_Nguoi_Dung INT, @Nam Datetime)
RETURNS TABLE
AS
RETURN(
	Select
		t.ID as Id_Khach_Hang,
		Concat(t.Ho,' ',t.Ten) as Ten_Khach_Hang,
		d.ID as ID_Don_Hang,
		d.Ngay_Tao as Thoi_gian,
		d.Tong_Tien as Tong_Tien
	From
		Tai_Khoan as t
		inner join Don_Hang as d on t.ID = d.ID_Khach_Hang
	Where
		t.ID = @Id_Nguoi_Dung and YEAR(d.Ngay_Tao) = YEAR(@Nam)
);

Exec Danh_Sach_Don_Hang @Id_Nguoi_Dung = 1 ,@Nam = 2012

Select 
	*
from
	Danh_Sach_Don_Hang()
order by
	Thoi_gian



----- Y 2-----
CREATE FUNCTION [dbo].[Danh_Sach_Top_Danh_Gia_San_Pham] (@Nam Datetime)
RETURNS TABLE
AS
RETURN(
	Select
		s.ID as ID_San_Pham,
		s.Ten as Ten_San_Pham,
		count(*) as So_Luong_Danh_Gia,
		avg(d.So_Diem) as So_Diem_Trung_Binh
	From
		San_Pham as s
		inner join Danh_Gia as d on d.ID_San_Pham = s.ID
	where
		Year(d.Thoi_Gian) = Year(@Nam)
	group by
		s.ID, s.Ten
	having
		avg(d.So_Diem) >= 3
);

Exec Danh_Sach_Top_Danh_Gia_San_Pham @Nam = 2012

Select 
	*
from
	Danh_Sach_Top_Danh_Gia_San_Pham()
order by
	So_Luong_Danh_Gia




--Bai 4--


----- Y 1-----
CREATE FUNCTION [dbo].[Danh_Sach_Don_Hang_Thanh_Cong] (@Id_Nguoi_Dung INT, @Nam Datetime)
RETURNS INT
AS
BEGIN
	DECLARE @tong_tien AS INT;
	SET @tong_tien = 0;
	IF EXISTS (
		Select
			*
	From
		Tai_Khoan as t
		inner join Don_Hang as d on t.ID = d.ID_Khach_Hang
	Where
		t.ID = @Id_Nguoi_Dung and YEAR(d.Ngay_Tao) = YEAR(@Nam) and d.Trang_Thai = 'Thanh Cong'
	)
	BEGIN
		Select
			@tong_tien = sum(d.Tong_Tien) 
		From
			Tai_Khoan as t
			inner join Don_Hang as d on t.ID = d.ID_Khach_Hang
		Where
			t.ID = @Id_Nguoi_Dung and YEAR(d.Ngay_Tao) = YEAR(@Nam) and d.Trang_Thai = 'Thanh Cong'
		Group by
			t.ID, Year(d.Ngay_Tao)
	END
	Return @tong_tien
END

Select  Danh_Sach_Don_Hang_Thanh_Cong(1,2012) as Tong_tien

