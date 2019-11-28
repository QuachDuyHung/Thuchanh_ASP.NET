<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Csharp2.aspx.cs" Inherits="Bai3_1621050249.frmUserInput" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hiển thị số</title>
    <link href="Style/Csharp2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <img src="Picture/CoToQuoc.png" style="width:30px;height:20px; float:left;"/>
                <div style="float:left; padding-left: 10px;">MÔN HỌC: LẬP TRÌNH .NET2 - PHÁT TRIỂN ỨNG DỤNG WEB VỚI ASP.NET</div>
                &nbsp;&nbsp;
                
                <b>HÔM NAY: NGÀY 14 THÁNG 03 NĂM 2019</b>
                <img src="Picture/lich.jpg" style="width:30px;height:20px; float:right;"/>
            </div>
            <div class="content">
                <p>Tổng 4 số tự nhiên có phần dư khi chia cho 10 = :</p>                
                <asp:TextBox ID="txtNhap" runat="server" Width="266px"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="btnXacDinh" runat="server" Text="- Xác Định -" OnClick="btnXacDinh_Click" />
                <br />
                <br />
                <asp:Label ID="lblKQ" runat="server" Text="Đáp án" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtShow" runat="server" Height="257px" TextMode="MultiLine" Width="570px" ReadOnly="True"></asp:TextBox>                
            </div>
        </div>
    </form>
</body>
</html>
