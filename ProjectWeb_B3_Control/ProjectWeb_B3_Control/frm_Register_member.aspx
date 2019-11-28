<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Register_member.aspx.cs" Inherits="ProjectWeb_B3_Control.frm_Register_member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký thành viên</title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            <h2>ĐĂNG KÝ THÔNG TIN THÀNH VIÊN</h2>
            Họ và tên:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFullName" runat="server"></asp:TextBox>
            <br />
            <br />
            Giới tính:&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gioiTinh" Text="Nam" />
            &nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gioiTinh" Text="Nữ" />
            <br />
            <br />
            Năm sinh:&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDk" runat="server" Text="Đăng ký" PostBackUrl="~/frm_show_infor.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Hủy" />
        </div>
    </form>
</body>
</html>
