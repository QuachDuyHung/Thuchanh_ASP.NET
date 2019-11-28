<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BTH4_Validation.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .error{
            color: red;


        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ĐĂNG NHẬP HỆ THỐNG<br />
            <br />
            Tên đăng nhập(*):&nbsp;
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" CssClass="error" ErrorMessage="Chưa nhập tên đăng nhập!">(*)</asp:RequiredFieldValidator>
            <br />
            <br />
            Mật khẩu(*):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="error" ErrorMessage="Vui lòng nhập mật khẩu!">(*)</asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" HeaderText="Danh sách lỗi:" ShowMessageBox="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError" runat="server" CssClass="error"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" OnClick="btnLogin_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Hủy" Width="61px" CausesValidation="False" OnClick="btnCancel_Click" />
        </div>
    </form>
</body>
</html>
