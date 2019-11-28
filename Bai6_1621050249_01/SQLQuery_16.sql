USE DB_DATN

GO

SELECT  SV.Masv N'Mã SV', SV.Tensv N'Tên sinh viên', DA.Tenda N'Tên đồ án',
				CONCAT_WS(' - ',DA.GVHD,GV.Tengv) AS N'GVHD',
				CONCAT_WS(' - ',DA.GVPB,PP.Tengv) AS N'GVPB', 
				LV.Tenlv N'Lĩnh vực', MAX(DA.Diem) N'Điểm', DA.Namtn N'Năm TN'
FROM tbl_doan AS DA
INNER JOIN tbl_sinhvien AS SV ON DA.Masv = SV.Masv
INNER JOIN tbl_giangvien AS GV ON DA.GVHD = GV.Magv
INNER JOIN tbl_giangvien AS PP ON DA.GVPB = PP.Magv
INNER JOIN tbl_linhvuc AS LV ON DA.linhvuc = LV.Malv
WHERE DA.DIEM = (SELECT MAX(Diem) FROM tbl_doan)
GROUP BY SV.Masv, SV.Tensv, DA.Tenda, DA.GVHD, DA.GVPB,LV.Tenlv, DA.Namtn, GV.Tengv, PP.Tengv