USE DB_DATN

GO

SELECT sv.Masv N'Mã sinh viên',sv.Tensv N'Tên sinh viên', sv.Namsinh N'Ngày sinh', 'Giới tính' =
	CASE
		WHEN sv.Gioitinh = 1 then N'Nữ'
		WHEN sv.Gioitinh = 0 then N'Nam'
		ELSE N'Không có dữ liệu'
	END,
	sv.Khoa N'Khóa', cn.Tencn N'Chuyên ngành', Email, Dienthoai N'Điện thoại', Diachi N'Địa chỉ'
FROM tbl_sinhvien AS sv, tbl_chuyennganh AS cn
WHERE sv.Chuyennganh = cn.Macn
ORDER BY sv.Masv