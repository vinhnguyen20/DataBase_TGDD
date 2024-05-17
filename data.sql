INSERT INTO Tinh (ID, Ten) VALUES
	 ('01','Tp. Hà Nội'),
	 ('02','Tp. Hồ Chí Minh'),
	 ('03','Tp. Hải Phòng'),
	 ('04','Tp. Đà Nẵng'),
	 ('05','Hà Giang'),
	 ('06','Cao Bằng'),
	 ('07','Lai Châu'),
	 ('08','Lào Cai'),
	 ('09','Tuyên Quang'),
	 ('10','Lạng Sơn');
INSERT INTO Tinh (ID, Ten) VALUES
	 ('11','Bắc Kạn'),
	 ('12','Thái Nguyên'),
	 ('13','Yên Bái'),
	 ('14','Sơn La'),
	 ('15','Phú Thọ'),
	 ('16','Vĩnh Phúc'),
	 ('17','Quảng Ninh'),
	 ('18','Bắc Giang'),
	 ('19','Bắc Ninh'),
	 ('21','Hải Dương');
INSERT INTO Tinh (ID, Ten) VALUES
	 ('22','Hưng Yên'),
	 ('23','Hòa Bình'),
	 ('24','Hà Nam'),
	 ('25','Nam Định'),
	 ('26','Thái Bình'),
	 ('27','Ninh Bình'),
	 ('28','Thanh Hóa'),
	 ('29','Nghệ An'),
	 ('30','Hà Tĩnh'),
	 ('31','Quảng Bình');
INSERT INTO Tinh (ID, Ten) VALUES
	 ('32','Quảng Trị'),
	 ('33','Thừa Thiên Huế'),
	 ('34','Quảng Nam'),
	 ('35','Quảng Ngãi'),
	 ('36','Kon Tum'),
	 ('37','Bình Định'),
	 ('38','Gia Lai'),
	 ('39','Phú Yên'),
	 ('40','Đăk Lăk'),
	 ('41','Khánh Hòa');
INSERT INTO Tinh (ID, Ten) VALUES
	 ('42','Lâm Đồng'),
	 ('43','Bình Phước'),
	 ('44','Bình Dương'),
	 ('45','Ninh Thuận'),
	 ('46','Tây Ninh'),
	 ('47','Bình Thuận'),
	 ('48','Đồng Nai'),
	 ('49','Long An'),
	 ('50','Đồng Tháp'),
	 ('51','An Giang');
INSERT INTO Tinh (ID, Ten) VALUES
	 ('52','Bà Rịa - Vũng Tàu'),
	 ('53','Tiền Giang'),
	 ('54','Kiên Giang'),
	 ('55','Cần Thơ'),
	 ('56','Bến Tre'),
	 ('57','Vĩnh Long'),
	 ('58','Trà Vinh'),
	 ('59','Sóc Trăng'),
	 ('60','Bạc Liêu'),
	 ('61','Cà Mau');
INSERT INTO Tinh (ID, Ten) VALUES
	 ('62','Điện Biên'),
	 ('63','Đăk Nông'),
	 ('64','Hậu Giang');

INSERT INTO Quan_Huyen (ID, Ten , ID_Tinh) VALUES
	 ('001','Quận 1','02'),
	 ('002','Quận 2','02'),
	 ('003','Quận 3','02'),
	 ('004','Quận 4','02'),
	 ('005','Quận 5','02'),
	 ('006','Quận 6','02'),
	 ('007','Quận 7','02'),
	 ('008','Quận 8','02'),
	 ('009','Quận 9','02'),
	 ('010','Quận 10','02');
INSERT INTO Quan_Huyen (ID, Ten , ID_Tinh) VALUES
	 ('011','Quận 11','02'),
	 ('012','Quận 12','02'),
	 ('013','Quận Gò Vấp','02'),
	 ('014','Quận Tân Bình','02'),
	 ('015','Quận Tân Phú','02'),
	 ('016','Quận Bình Thạnh','02'),
	 ('017','Quận Phú Nhuận','02'),
	 ('018','Quận Thủ Đức','02'),
	 ('019','Quận Bình Tân','02'),
	 ('020','Huyện Bình Chánh','02');
INSERT INTO Quan_Huyen (ID, Ten , ID_Tinh) VALUES
	 ('021','Huyện Củ Chi','02'),
	 ('022','Huyện Hóc Môn','02'),
	 ('023','Huyện Nhà Bè','02'),
	 ('024','Huyện Cần Giờ','02'),
	 ('025','Quận Ba Đình','01'),
	 ('026','Quận Hoàn Kiếm','01');

INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('00001','Phường Phúc Xá','025'),
	 ('00004','Phường Trúc Bạch','025'),
	 ('00006','Phường Vĩnh Phúc','025'),
	 ('00007','Phường Cống Vị','025'),
	 ('00008','Phường Liễu Giai','025'),
	 ('00010','Phường Nguyễn Trung Trực','025'),
	 ('00013','Phường Quán Thánh','025'),
	 ('00016','Phường Ngọc Hà','025'),
	 ('00019','Phường Điện Biên','025'),
	 ('00022','Phường Đội Cấn','025');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('00025','Phường Ngọc Khánh','025'),
	 ('00028','Phường Kim Mã','025'),
	 ('00031','Phường Giảng Võ','025'),
	 ('00034','Phường Thành Công','025'),
	 ('00037','Phường Phúc Tân','026'),
	 ('00040','Phường Đồng Xuân','026'),
	 ('00043','Phường Hàng Mã','026'),
	 ('00046','Phường Hàng Buồm','026'),
	 ('00049','Phường Hàng Đào','026'),
	 ('00052','Phường Hàng Bồ','026');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('00055','Phường Cửa Đông','026'),
	 ('00058','Phường Lý Thái Tổ','026'),
	 ('00061','Phường Hàng Bạc','026'),
	 ('00064','Phường Hàng Gai','026'),
	 ('00067','Phường Chương Dương Độ','026'),
	 ('00070','Phường Hàng Trống','026'),
	 ('00073','Phường Cửa Nam','026'),
	 ('00076','Phường Hàng Bông','026'),
	 ('00079','Phường Tràng Tiền','026'),
	 ('00082','Phường Trần Hưng Đạo','026');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('00085','Phường Phan Chu Trinh','026'),
	 ('00088','Phường Hàng Bài','026'),
	 ('26734','Phường Tân Định','001'),
	 ('26737','Phường Đa Kao','001'),
	 ('26740','Phường Bến Nghé','001'),
	 ('26743','Phường Bến Thành','001'),
	 ('26746','Phường Nguyễn Thái Bình','001'),
	 ('26749','Phường Phạm Ngũ Lão','001'),
	 ('26752','Phường Cầu Ông Lãnh','001'),
	 ('26755','Phường Cô Giang','001');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26758','Phường Cầu Kho','001'),
	 ('26761','Phường Thạnh Xuân','001'),
	 ('26794','Phường Linh Xuân','018'),
	 ('26797','Phường Bình Chiểu','018'),
	 ('26800','Phường Linh Trung','018'),
	 ('26803','Phường Tam Bình','018'),
	 ('26806','Phường Tam Phú','018'),
	 ('26809','Phường Hiệp Bình Phước','018'),
	 ('26812','Phường Hiệp Bình Chánh','018'),
	 ('26815','Phường Linh Chiểu','018');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26818','Phường Linh Tây','018'),
	 ('26821','Phường Linh Đông','018'),
	 ('26824','Phường Bình Thọ','018'),
	 ('26827','Phường Trường Thọ','018'),
	 ('26830','Phường Long Bình','009'),
	 ('26833','Phường Long Thạnh Mỹ','009'),
	 ('26836','Phường Tân Phú','009'),
	 ('26839','Phường Hiệp Phú','009'),
	 ('26842','Phường Tăng Nhơn Phú A','009'),
	 ('26845','Phường Tăng Nhơn Phú B','009');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26848','Phường Phước Long B','009'),
	 ('26851','Phường Phước Long A','009'),
	 ('26854','Phường Trường Thạnh','009'),
	 ('26857','Phường Long Phước','009'),
	 ('26860','Phường Long Trường','009'),
	 ('26863','Phường Phước Bình','009'),
	 ('26866','Phường Phước Hữu','009'),
	 ('26869','Phường 15','013'),
	 ('26872','Phường 13','013'),
	 ('26875','Phường 17','013');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26876','Phường 6','013'),
	 ('26878','Phường 16','013'),
	 ('26881','Phường 12','013'),
	 ('26882','Phường 14','013'),
	 ('26884','Phường 10','013'),
	 ('26887','Phường 5','013'),
	 ('26890','Phường 7','013'),
	 ('26893','Phường 4','013'),
	 ('26896','Phường 1','013'),
	 ('26897','Phường 9','013');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26898','Phường 8','013'),
	 ('26899','Phường 11','013'),
	 ('26902','Phường 3','013'),
	 ('26905','Phường 13','016'),
	 ('26908','Phường 11','016'),
	 ('26911','Phường 27','016'),
	 ('26914','Phường 26','016'),
	 ('26917','Phường 12','016'),
	 ('26920','Phường 25','016'),
	 ('26923','Phường 5','016');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26926','Phường 7','016'),
	 ('26929','Phường 24','016'),
	 ('26932','Phường 6','016'),
	 ('26935','Phường 14','016'),
	 ('26938','Phường 15','016'),
	 ('26941','Phường 2','016'),
	 ('26944','Phường 1','016'),
	 ('26947','Phường 3','016'),
	 ('26950','Phường 17','016'),
	 ('26953','Phường 21','016');
INSERT INTO Phuong_Xa (ID, Ten, ID_Quan_Huyen) VALUES
	 ('26956','Phường 22','016'),
	 ('26959','Phường 19','016'),
	 ('26962','Phường 28','016');

INSERT INTO Chi_Nhanh (Ten, ID_Phuong_Xa) VALUES
	('123 Võ Văn Ngân','26827'),
	('192 Lê Văn Việt','26842');

INSERT INTO Tai_Khoan (SDT,Ten,Ho, Mat_Khau,Gioi_Tinh,Dia_Chi,ID_Phuong_Xa) VALUES
	 ('0123456789','Khánh','Phạm', 'Vinhnguyen1','Nam','123 Đường 30/4','26827'),
	 ('9876543210','Vinh','Nguyễn', 'Vinhnguyen1','Nam','123 Đường Trường Chinh','26827'),
	 ('1234567890','Phong','Nguyễn', 'Vinhnguyen1','Nam','123 Đường 30/4','26827'),
	 ('0123456787','Long','Hồ', 'Vinhnguyen1','Nam','123 Đường Trường Chinh','26827');

INSERT INTO Hang_San_Xuat (Ten) VALUES
	 ('Microsoft'),
	 ('Apple'),
	 ('Samsung'),
	 ('Oppo');

INSERT INTO Loai (Ten) VALUES
	('Laptop'),
	('Điện thoại'),
	('Phụ kiện'),
	('Đồng hồ');

INSERT INTO Bao_Hanh (Thang,Thong_Tin,ID_Loai) VALUES
	 (12,'Bảo hành cho Laptop',1),
	 (12,'Bảo hành Điện Thoại',2),
	 (6,'Bảo hành cho Phụ Kiện',3),
	 (12,'Đồng hồ',4);

INSERT INTO San_Pham (Ten,ID_Loai,ID_Hang) VALUES
	 ('Iphone 12',2,2),
	 ('Asus Gaming F15',1,NULL),
	 ('Iphone 15 ProMax',2,2),
	 ('Apple Watch Ultra 2',4,2),
	 ('Apple Watch Series 9',4,2);

INSERT INTO Thong_So_Chung (ID_Loai,Ten) VALUES
	 (1,'CPU'),
	 (1,'Độ phân giải'),
	 (1,'Kích thước màn hình'),
	 (1,'Khối lượng'),
	 (1,'Pin'),
	 (1,'RAM'),
	 (2,'Hệ điều hành'),
	 (2,'Màn hình'),
	 (2,'Pin'),
	 (2,'RAM'),
	 (4,'Chất liệu mặt'),
	 (4,'Độ dài dây'),
	 (4,'Kích thước mặt');

INSERT INTO Bien_The_San_Pham (Thong_So_Rieng,ID_San_Pham,Gia,Hinh_Anh) VALUES
	 (N'128GB',1,14690000.00,N'https://cdn.tgdd.vn/Products/Images/42/228736/iphone-12-do-600x600.jpg'),
	 (N'1TB',3,46990000.00,N'https://cdn.tgdd.vn/Products/Images/42/305658/iphone-15-pro-max-white-thumbnew-600x600.jpg'),
	 (N'256GB',1,18190000.00,N'https://cdn.tgdd.vn/Products/Images/42/228737/iphone-12-white-600x600.jpg'),
	 (N'256GB',3,33890000.00,N'https://cdn.tgdd.vn/Products/Images/42/305658/iphone-15-pro-max-blue-thumbnew-600x600.jpg'),
	 (N'512GB',3,40990000.00,N'https://cdn.tgdd.vn/Products/Images/42/305659/iphone-15-pro-max-black-thumbnew-600x600.jpg'),
	 (N'64GB',1,12000000.00,N'https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-xanh-la-new-2-600x600.jpg'),
	 (N'Cam',4,21990000.00,N'https://cdn.tgdd.vn/Products/Images/7077/314710/apple-watch-ultra-lte-49mm-vien-titanium-day-ocean-cam-thumb-4-1-600x600.jpg'),
	 (N'FX506HF',2,16990000.00,N'https://cdn.tgdd.vn/Products/Images/44/304867/asus-tuf-gaming-f15-fx506hf-i5-hn014w-thumb-600x600.jpg'),
	 (N'Hồng',5,11290000.00,N'https://cdn.tgdd.vn/Products/Images/7077/316002/apple-watch-s9-45mm-vien-nhom-day-silicone-day-ngan-do-thumb-1-600x600.jpg'),
	 (N'Trắng',4,21990000.00,N'https://cdn.tgdd.vn/Products/Images/7077/314710/apple-watch-ultra-lte-49mm-vien-titanium-day-ocean-trang-thumb-4-1-600x600.jpg'),
	 (N'Xanh Dương Nhạt',5,11590000.00,N'https://cdn.tgdd.vn/Products/Images/7077/315995/apple-watch-s9-lte-41mm-vien-nhom-day-vai-xanh-nhat-thumb-1-600x600.jpg');


INSERT INTO Noi_Dung_Thong_So (ID_San_Pham,ID_Loai,Ten,Mo_ta) VALUES
	 (1,2,N'Hệ điều hành',N'iOS 15'),
	 (1,2,N'Màn hình',N'6.1" - Tần số quét 60 Hz'),
	 (1,2,N'Pin',N'2815 mAh, Li-ion'),
	 (1,2,N'RAM',N'4 GB'),
	 (2,1,N'CPU',N'Intel Core i5 Tiger Lake - 11400H'),
	 (2,1,N'Độ phân giải',N'Full HD (1920x1080)'),
	 (2,1,N'Kích thước màn hình',N'15.6 inch'),
	 (2,1,N'Khối lượng',N'2.3 kg'),
	 (2,1,N'Pin',N'3-cell Li-ion, 48 Wh'),
	 (2,1,N'RAM',N'8 GB'),
	 (3,2,N'Hệ điều hành',N'iOS 17'),
	 (3,2,N'Màn hình',N'6.7" - Tần số quét 120 Hz'),
	 (3,2,N'Pin',N'4422 mAh, Li-ion'),
	 (3,2,N'RAM',N'8 GB'),
	 (4,4,N'Chất liệu mặt',N'Kính Sapphire'),
	 (4,4,N'Độ dài dây',N'13 - 20 cm'),
	 (4,4,N'Kích thước mặt',N'49 mm')

INSERT INTO The_Giam_Gia (Ngay_Bat_Dau,Ngay_Ket_Thuc,So_Luong,ID_San_Pham) VALUES
	 ('2022-06-18T10:34:09','2024-06-20T10:34:09',10,1),
	 ('2022-06-18T10:34:09',NULL,9,2),
	 ('2022-06-18T10:34:09',NULL,5,3),
	 ('2022-06-18T10:34:09','2024-06-20T10:34:09',7,2),
	 ('2022-06-18T10:34:09','2024-06-20T10:34:09',6,1);

INSERT INTO The_Giam_Gia_So_Tien (ID,So_Tien_Toi_Thieu_Ap_Dung,So_Tien_Giam) VALUES
	 (1,15000000.00,1500000.00),
	 (3,11000000.00,1000000.00),
	 (2,10000000.00,900000.00),
	 (4,90000000.00,800000.00);

INSERT INTO The_Giam_Phan_Tram (ID,Phan_Tram,Gia_Toi_Da) VALUES
	 (1,10.0,1000000.00),
	 (2,15.0,1500000.00),
	 (3,20.0,3000000.00);