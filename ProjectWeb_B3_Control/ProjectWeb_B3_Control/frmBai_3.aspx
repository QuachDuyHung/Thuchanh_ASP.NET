<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBai_3.aspx.cs" Inherits="ProjectWeb_B3_Control.frmBai_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center; color: red;">
                <h2>THỰC HIỆN UPLOAD ẢNH LÊN SEVER</h2>
            </div>
            <br />
            <div style="text-align:center;">
                <h3 style="text-align:center;">Chọn File:</h3>
                <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="Solid" Width="395px" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Upload..." OnClick="Button1_Click" Font-Size="13pt" />
                <br />  
            </div>
            <br />
            <br />
            <div style="text-align:center;">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Size="13pt"></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="345px" Width="594px" />
            </div>
        </div>
    </form>
</body>
</html>
