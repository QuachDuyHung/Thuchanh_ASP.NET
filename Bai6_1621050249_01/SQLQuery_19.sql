USE DB_DATN

GO

-- A) THÊM 1 BẢNG GHI VÀO tbl_sinhvien
INSERT INTO tbl_sinhvien
VALUES (
		'1121050069',
		N'Nguyễn Thị Nguyệt',
		'09/10/1993',
		1,
		'56',
		'1',
		N'nguyettit.humg@gmail.com',
		'0987666564',
		N'Lai Châu',
		''
	 )

-- B) THÊM 1 BẢNG GHI VÀO tbl_giangvien
INSERT INTO tbl_giangvien
VALUES (
		'080511',
		N'Trương Xuân Bình',
		'05/13/1984',
		0,
		N'Thạc Sĩ',
		N'truongxuanbinh@humg.edu.vn',
		'0981234567',
		N'Bộ môn Tin học Địa chất'
	 )
 
 -- C) THÊM 1 BẢNG GHI VÀO tbl_doan
INSERT INTO tbl_doan
VALUES (
		'1121050069',
		N'Ứng dụng phần mềm Ventsim tính toán thiết kế mạng thông gió mỏ Bình Minh - Thành Công',
		'080506',
		'080506',
		'1',
		'8.1',
		'2016'
	 )