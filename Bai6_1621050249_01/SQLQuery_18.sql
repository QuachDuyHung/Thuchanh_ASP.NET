﻿USE DB_DATN

GO

-- A) CẬP NHẬT Dienthoai CỦA SV CÓ MASV = 1221000122
UPDATE tbl_sinhvien SET Dienthoai = 0986226651
WHERE Masv = '1221000122'

GO

-- B) CẬP NHẬT ĐIỂM CỦA SV CÓ MASV = 1221000190
UPDATE tbl_doan SET Diem = 9.5
WHERE Masv = '1221000109'
