USE DB_DATN

GO

SELECT Macn N'Mã chuyên ngành', CONCAT_WS(' - ',Macn,Tencn) AS N'Tên chuyên ngành' FROM tbl_chuyennganh