<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Login.aspx.cs" Inherits="ProjectWeb_B3_Control.frm_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>ĐĂNG NHẬP HỆ THỐNG</h2>
            <p>&nbsp;</p>
            <p>Tên đăng nhập:&nbsp;&nbsp;
                <asp:TextBox ID="txtUserName" runat="server" Width="234px"></asp:TextBox>
            </p>
            <p>Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassWord" runat="server" TextMode="Password" Width="235px"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Đăng nhập" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Hủy" Width="69px" />
            </p>
        </div>
    </form>
</body>
</html>
