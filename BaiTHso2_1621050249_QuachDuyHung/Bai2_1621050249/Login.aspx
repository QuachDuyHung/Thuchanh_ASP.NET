<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bai2_1621050249.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hệ thống quản lý thông tin</title>
    <link href="css/Login.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
                <h2>ĐĂNG NHẬP HỆ THỐNG QUẢN LÝ THÔNG TIN</h2>
        </div>
        <div class="main">
            <div class="content">
                <div class="col">
                    <img id="hinhanh" src="image/ki-yeu8.jpg" width="490"/>                
                </div>
                <div class="col">
                    <form id="form2" action="#" method="post">
                        <img id="login" src="image/login.jpg" />
                        <p>
                            <b>Tên đăng nhập:</b>
                            <br />
                            <input class="w3-text" type="text" name="user" value="" placeholder="Xin mời nhập..."/>
                        </p>
                        <p>
                            <b>Mật khẩu:</b>
                            <br />
                            <input class="w3-text" type="password" name="user" value=""/>
                        </p>
                        <div class="btn">
                            <input class="w3-btn" id="btn1" type="submit" name="login-1" value="Đăng Nhập" />
                            <input class="w3-btn" id="btn2" type="reset" name="cancel" value="Hủy Bỏ" />
                        </div>
                    </form>
                </div>
            </div>
            <br />
            <div class="footer">
                <div class="footer-1">
                    <b id="humg">HUMG</b>
                    <br />
                    <b id="link">www.humg.edu.vn</b>
                </div>
                <div class="footer-1">
                    <b id="license">BẢN QUYỀN THUỘC VỀ: KHOA CÔNG NGHỆ THÔNG TIN</b>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
