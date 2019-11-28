USE DB_DATN

GO

SELECT Khoa N'Khóa học', COUNT(*) N'Số sinh viên' FROM tbl_khoahoc, tbl_sinhvien
WHERE tbl_khoahoc.Makh = tbl_sinhvien.Khoa
GROUP BY Khoa