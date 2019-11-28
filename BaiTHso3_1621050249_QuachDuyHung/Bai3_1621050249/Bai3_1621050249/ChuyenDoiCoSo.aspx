<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChuyenDoiCoSo.aspx.cs" Inherits="Bai3_1621050249.ChuyenDoiCoSo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chuyển đổi cơ số</title>
    <link href="Style/ChuyenDoiCoSo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="content">
            <h2>BỘ CHUYỂN ĐỔI SỐ THẬP PHÂN</h2>
            <br />
            Số thập phân:&nbsp; <asp:TextBox ID="txtNhap" runat="server" Width="275px" Height="26px"></asp:TextBox>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Hệ nhị phân" GroupName="TuyChonHe" />
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Hệ bát phân" GroupName="TuyChonHe"/>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Hệ thập lục phân" GroupName="TuyChonHe"/>
            <br />
            <br />
            <asp:Button ID="btnConvert" runat="server" Text="Chuyển đổi" Font-Size="13pt" OnClick="btnConvert_Click" />
            <br />
            <br />
            <div class="result">
                <asp:Label ID="Label1" runat="server" Width="493px" Font-Size="20pt" Height="31px" Font-Bold="True" ForeColor="Red"></asp:Label>             
            </div>
        </div>
    </form>
</body>
</html>
