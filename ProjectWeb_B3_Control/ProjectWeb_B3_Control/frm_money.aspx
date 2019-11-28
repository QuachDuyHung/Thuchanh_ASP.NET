<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_money.aspx.cs" Inherits="ProjectWeb_B3_Control.frm_money" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>CHƯƠNG TRÌNH TÍNH TIỀN ĐIỆN</h2>
            Số điện sử dụng trong tháng:&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="92px" TextMode="MultiLine" Width="347px">Mức 1:   0 - 50     : 1388 đ
Mức 2:   51 - 100   : 1433 đ
Mức 3:   101 - 200  : 1660 đ
Mức 4:   201 - 300  : 2082 đ
Mức 5:   301 - 400  : 2324 đ
Mức 6:   &gt; 401      : 2399 đ</asp:TextBox>
            <br />
            <br />
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnTinh" runat="server" OnClick="btnTinh_Click" Text="Tính tiền" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMoney" runat="server" Font-Size="X-Large" ForeColor="#FF0066" style="text-align:center;"></asp:Label>
    </form>
</body>
</html>
