USE DB_DATN

GO

SELECT DISTINCT tbl_sinhvien.Masv N'M� sinh vi�n', CONCAT_WS(' - ',tbl_sinhvien.Masv,tbl_sinhvien.Tensv) N'T�n' FROM tbl_sinhvien, tbl_doan
WHERE tbl_sinhvien.Masv = tbl_doan.Masv

--WHERE NOT EXISTS(SELECT * FROM tbl_sinhvien, tbl_doan WHERE tbl_sinhvien.Masv = tbl_doan.Masv)