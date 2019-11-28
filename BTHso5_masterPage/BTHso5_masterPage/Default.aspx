<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BTHso5_masterPage.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Defualt</title>
    <link href="style/defualt.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>HỆ THỐNG QUẢN LÝ THÔNG TIN</h2>
            
            <div class="container-img">
                <div class="img">
                    <img src="picture/lock.jpg" width="150" height="150" />
                </div>
            </div>
            <br />
            <br />

            <div class="content">
                <b>Tên đăng nhập:</b><br />
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="520px" CssClass="txt_user_password">admin</asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="error" ErrorMessage="Bạn chưa nhập tên đăng nhập!">Bạn chưa nhập tên đăng nhập!</asp:RequiredFieldValidator>
                <br />
                <b>Mật khẩu:</b><br />
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="520px" CssClass="txt_user_password" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="error" ErrorMessage="Bạn chưa nhập mật khẩu!">Bạn chưa nhập mật khẩu!</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="error"></asp:Label>
                <br />
            </div>            
            <br />

            <div class="confirm">
                <asp:Button ID="btn_Login" runat="server" Text="Đăng Nhập Hệ Thống" Height="29px" Width="520px" CssClass="btn_login" OnClick="btn_Login_Click" />
                <br />
                <br />
                <asp:Button ID="btn_Cancel" runat="server" OnClick="Button2_Click" Text="Hủy Bỏ" Height="28px" Width="88px" CssClass="btn_cancel" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="remeber" >
                    <asp:CheckBox ID="ckb_remember" runat="server" Text="Nhớ mật khẩu!" />
                    <a href="#">Quên mật khẩu?</a>
                </span>
            </div>
        </div>
    </form>
</body>
</html>
