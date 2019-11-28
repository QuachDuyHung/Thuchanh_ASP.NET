USE DB_DATN

GO

SELECT DISTINCT tbl_sinhvien.Masv N'Mã sinh viên', CONCAT_WS(' - ',tbl_sinhvien.Masv,tbl_sinhvien.Tensv) N'Tên' FROM tbl_sinhvien, tbl_doan
WHERE tbl_sinhvien.Masv = tbl_doan.Masv

--WHERE NOT EXISTS(SELECT * FROM tbl_sinhvien, tbl_doan WHERE tbl_sinhvien.Masv = tbl_doan.Masv)