<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_show_infor.aspx.cs" Inherits="ProjectWeb_B3_Control.frm_show_infor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Information</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>THÔNG TIN THÀNH VIÊN ĐĂNG KÝ</h2>
            <br />
            Họ tên: <asp:Label ID="lblFullName" runat="server"></asp:Label>
            <br />
            <br />
            Giới tính: <asp:Label ID="lblGioiTinh" runat="server"></asp:Label>
            <br />
            <br />
            Năm sinh: <asp:Label ID="lblNamSinh" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Button ID="btnQuayLai" runat="server" PostBackUrl="~/frm_Register_member.aspx" Text="Quay Lại Trang Đăng Ký" />
    </form>
</body>
</html>
