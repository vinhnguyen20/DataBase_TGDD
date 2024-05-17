
drop database demo

create database demo

CREATE TABLE [Tinh](
	ID varchar(2) PRIMARY KEY,
	Ten varchar(250) NOT NULL
);

CREATE TABLE [Quan_Huyen](
	ID varchar(3) PRIMARY KEY,
	Ten varchar(250) NOT NULL,
	ID_Tinh varchar(2),
	CONSTRAINT [FK_Quan_Huyen_Tinh] FOREIGN KEY([ID_Tinh]) REFERENCES Tinh(ID)
);

CREATE TABLE [Phuong_Xa](
	ID varchar(5) PRIMARY KEY,
	Ten varchar(250) NOT NULL,
	ID_Quan_Huyen varchar(3),
	CONSTRAINT [FK_Phuong_Xa_Quan_Huyen] FOREIGN KEY([ID_Quan_Huyen]) REFERENCES Quan_Huyen(ID)
);

CREATE TABLE [Chi_Nhanh](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Ten] [varchar](250) NOT NULL,
	[ID_Phuong_Xa] [varchar](5) NOT NULL,
	CONSTRAINT FK_Chi_Nhanh_Phuong_Xa FOREIGN KEY (ID_Phuong_Xa) REFERENCES [Phuong_Xa](ID)
);

CREATE TABLE [Tai_Khoan](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[SDT] [varchar](50) UNIQUE NOT NULL,
	[Ten] [varchar](100) NOT NULL,
	[Ho] [varchar](100) NOT NULL,
	[Gioi_Tinh] [varchar](20) NOT NULL,
	[Dia_Chi] [varchar](250),
	[ID_Phuong_Xa] [varchar](5) NOT NULL,
    CONSTRAINT FK_Tai_Khoan_Phuong_Xa FOREIGN KEY (ID_Phuong_Xa) REFERENCES [Phuong_Xa](ID)
);

CREATE TABLE [Hang_San_Xuat](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Ten] [varchar](250) UNIQUE NOT NULL,
);

CREATE TABLE [Loai](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Ten] [varchar](250) UNIQUE NOT NULL
);

CREATE TABLE [Bao_Hanh](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Thang] [int] NOT NULL,
	[Thong_Tin] [varchar](1000),
	[ID_Loai] [int] NOT NULL,
	CONSTRAINT Fk_Bao_Hanh_Loai FOREIGN KEY (ID_Loai) REFERENCES [Loai](ID) ON DELETE CASCADE
);


CREATE TABLE [San_Pham](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Ten] [varchar](255) UNIQUE NOT NULL,
	[ID_Loai] [int],
	[ID_Hang] [int],
    CONSTRAINT Fk_San_Pham_Loai FOREIGN KEY (ID_Loai) REFERENCES [Loai](ID) ON DELETE SET NULL,
	CONSTRAINT Fk_San_Pham_Hang_San_Xuat FOREIGN KEY (ID_Hang) REFERENCES [Hang_San_Xuat](ID) ON DELETE SET NULL
);


CREATE TABLE [The_Giam_Gia](
	[ID] [int] IDENTITY(1,1) PRIMARY KEY,
	[Ngay_Bat_Dau] [datetime],
	[Ngay_Ket_Thuc] [datetime],
	[So_Luong] [int],
	[ID_San_Pham] [int],
	CONSTRAINT Fk_The_San_Pham FOREIGN KEY ([ID_San_Pham]) REFERENCES [San_Pham]([ID]) ON DELETE CASCADE
);

ALTER TABLE [Don_Hang](
    ID int IDENTITY(1,1) PRIMARY KEY,
    [ID_Khach_Hang] [int] NOT NULL,
    [Dia_Diem] [int] NOT NULL,
    [Ghi_Chu] [varchar](1000) NOT NULL,
    [Trang_Thai] [varchar](50) CHECK (Trang_Thai IN ('Đang chờ', 'Thành công')) DEFAULT 'Đang chờ',
    [Ngay_Tao] [datetime] DEFAULT getdate(),
    [Tong_Tien] [numeric](18,2) DEFAULT 0,
	[ID_The_Giam_Gia] [int],
    CONSTRAINT FK_Don_Hang_Khach_Hang FOREIGN KEY (ID_Khach_Hang) REFERENCES [Tai_Khoan](ID) ON DELETE CASCADE,
	CONSTRAINT FK_Ma_Giam_Gia FOREIGN KEY (ID_The_Giam_Gia) REFERENCES [The_Giam_Gia](ID) ON DELETE SET NULL
);


CREATE TABLE [Mua_Kem](
	[ID_San_Pham_Mua] [int] NOT NULL ,
	[ID_Goi_Y_San_Pham] [int] NOT NULL,
	CONSTRAINT PK_Mua_Kem PRIMARY KEY ([ID_San_Pham_Mua], [ID_Goi_Y_San_Pham]),
	CONSTRAINT Fk_Mua_Kem_San_Pham_Loai_San_Xuat FOREIGN KEY ([ID_San_Pham_Mua]) REFERENCES [San_Pham](ID),
	CONSTRAINT Fk_Goi_Y_San_Pham FOREIGN KEY (ID_Goi_Y_San_Pham) REFERENCES [San_Pham](ID)
);


CREATE TABLE [Bien_The_San_Pham](
	[Thong_So_Rieng] [varchar](255) NOT NULL,
	[ID_San_Pham] [int] NOT NULL,
	[Gia] [numeric](18,2) NOT NULL,
	CONSTRAINT PK_Bien_The_San_Pham_San_Pham PRIMARY KEY ([Thong_So_Rieng], [ID_San_Pham]),
	CONSTRAINT Fk_Bien_The_San_Pham_San_Pham FOREIGN KEY ([ID_San_Pham]) REFERENCES [San_Pham](ID)
);

CREATE TABLE [San_Pham_Trong_Don](
	[ID_Don_Hang] [int] NOT NULL,
	[Thong_So_Rieng] [varchar](255) NOT NULL,
	[ID_San_Pham] [int] NOT NULL,
	[Gia] [numeric](18,2) NOT NULL,
	[So_Luong] [int] NOT NULL,
	CONSTRAINT PK_San_Pham_Trong_Don PRIMARY KEY ([ID_Don_Hang],[Thong_So_Rieng], [ID_San_Pham]),
	CONSTRAINT Fk_San_Pham_Trong_Don_Don_Hang  FOREIGN KEY ([ID_Don_Hang]) REFERENCES [Don_Hang](ID),
	CONSTRAINT Fk_San_Pham_Trong_Don_Bien_The_San_Pham FOREIGN KEY ([Thong_So_Rieng], [ID_San_Pham]) REFERENCES [Bien_The_San_Pham]([Thong_So_Rieng], [ID_San_Pham]) ON UPDATE CASCADE
);

CREATE TABLE [San_Pham_Trong_Gio](
	[ID_Tai_Khoan] [int] NOT NULL,
	[Thong_So_Rieng] [varchar](255) NOT NULL,
	[ID_San_Pham] [int] NOT NULL,
	[Tong] [numeric](18,2) NOT NULL,
	[So_Luong] [int] NOT NULL,
	CONSTRAINT PK_San_Pham_Trong_Gio PRIMARY KEY ([ID_Tai_Khoan],[Thong_So_Rieng], [ID_San_Pham]),
	CONSTRAINT Fk_San_Pham_Trong_Don_Tai_Khoan  FOREIGN KEY ([ID_Tai_Khoan])
		REFERENCES [Tai_Khoan](ID),
	CONSTRAINT Fk_San_Pham_Trong_Gio_Bien_The_San_Pham   FOREIGN KEY ([Thong_So_Rieng], [ID_San_Pham])
		REFERENCES [Bien_The_San_Pham]([Thong_So_Rieng], [ID_San_Pham]) ON UPDATE CASCADE,
);


CREATE TABLE [Danh_Gia](
    [ID] [int] IDENTITY(1,1) PRIMARY KEY,
    [ID_San_Pham] [int] NOT NULL,
    [ID_Tai_Khoan] [int] NOT NULL,
    [Mo_Ta] [varchar](1000),
    [Thoi_Gian] [datetime],
    [So_Diem] [int] NOT NULL CHECK ([So_Diem] >= 0 AND [So_Diem] <= 5),
    CONSTRAINT Fk_Danh_Gia_Tai_Khoan FOREIGN KEY ([ID_Tai_Khoan])
        REFERENCES [Tai_Khoan](ID),
    CONSTRAINT Fk_Danh_Gia_San_Pham FOREIGN KEY ([ID_San_Pham])
        REFERENCES [San_Pham]([ID]) ON DELETE CASCADE
);



CREATE TABLE [The_Giam_Gia_So_Tien](
	[ID] [int] NOT NULL PRIMARY KEY,
	[So_Tien_Toi_Thieu_Ap_Dung] [numeric](18,2),
	[So_Tien_Giam] [numeric](18,2) NOT NULL,
	CONSTRAINT     Fk_The_Giam_Gia_So_Tien_The_Giam_Gia   FOREIGN KEY ([ID])
    	REFERENCES [The_Giam_Gia]([ID])
);

CREATE TABLE [The_Giam_Phan_Tram](
	[ID] [int] NOT NULL,
	[Phan_Tram] [float] NOT NULL,
	[Gia_Toi_Da] [numeric](18,2),
	CONSTRAINT Fk_The_Giam_Phan_Tram_The_Giam_Gia FOREIGN KEY ([ID])
		REFERENCES [The_Giam_Gia]([ID])
);


CREATE TABLE [Thong_So_Chung](
	[ID_Loai] [int] NOT NULL ,
	[Ten] [varchar](255) NOT NULL ,
	CONSTRAINT PK_Thong_So_Chung PRIMARY KEY ([ID_Loai],[Ten]),
	CONSTRAINT Fk_Thong_So_Chung_Loai_San_Pham  FOREIGN KEY ([ID_Loai])
		REFERENCES [Loai](ID),
);

CREATE TABLE [Noi_Dung_Thong_So](
	[ID_San_Pham] [int] NOT NULL,
	[ID_Loai] [int] NOT NULL,
	[Ten] [varchar](255) NOT NULL,
	[Mo_ta] [varchar](1000) NOT NULL,
	CONSTRAINT PK_Nhung_Thong_So_Chung PRIMARY KEY ([ID_San_Pham],[ID_Loai],[Ten]),
	CONSTRAINT Fk_Nhung_Thong_So_Chung_San_Pham  FOREIGN KEY ([ID_San_Pham])
		REFERENCES [San_Pham](ID),
	CONSTRAINT Fk_Nhung_Thong_So_Chung_Chi_Tiet FOREIGN KEY ([ID_Loai],[Ten])
		REFERENCES [Thong_So_Chung]([ID_Loai],[Ten]),
);



ALter Trigger Trg_bien_the_san_pham ON Bien_The_San_Pham After update as
begin

	if(@@ROWCOUNT = 0)
	BEGIN
		PRINT 'Không có dữ liệu Biến thể sản phẩm này'
		Return
	END

	Update s_p Set s_p.Gia = t1.Gia 
	From San_Pham_Trong_Gio as s_p, DELETED t1, INSERTED t2
	Where t1.ID_San_Pham = s_p.ID_San_Pham
end



Update Bien_The_San_Pham Set Gia = 13000000.00 where ID_San_Pham = 4