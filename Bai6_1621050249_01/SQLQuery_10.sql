USE DB_DATN

GO

SELECT Tenlv N'Lĩnh vực', COUNT(*) N'Số đồ án' FROM tbl_linhvuc, tbl_doan
WHERE tbl_linhvuc.Malv = tbl_doan.linhvuc
GROUP BY Tenlv