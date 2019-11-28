USE DB_DATN

GO

SELECT tbl_chuyennganh.Tencn  N'Chuyên ngành', COUNT(*) N'Số sinh viên' FROM tbl_chuyennganh, tbl_sinhvien
WHERE tbl_chuyennganh.Macn = tbl_sinhvien.Chuyennganh
GROUP BY tbl_chuyennganh.Tencn
