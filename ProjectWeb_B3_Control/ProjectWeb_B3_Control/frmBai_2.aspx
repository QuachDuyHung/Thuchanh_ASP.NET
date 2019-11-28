<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBai_2.aspx.cs" Inherits="ProjectWeb_B3_Control.frmBai_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Khảo sát</title>
    <link href="CSS/style_2.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="display">
            <h2 class="title" style="text-align:center;">
                KHẢO SÁT SỞ THÍCH
            </h2>
            <div style="padding-left:20px;">
                Chọn giới tính:
                <asp:RadioButton ID="Rbtn_Nam" runat="server" Text="Nam" GroupName="GioiTinh" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="Rbtn_Nu" runat="server" Text="Nữ" GroupName="GioiTinh" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="Rbtn_none" runat="server" Text="Chưa xác định" GroupName="GioiTinh" />
            </div>
            <br />
            <div style="padding-left:20px;">
                Chọn môn thể thao bạn thích:&nbsp;
                <br />
&nbsp;                
                <asp:CheckBox ID="ckBox_bongda" runat="server" OnCheckedChanged="ckBox_1_CheckedChanged" Text="Bóng đá" />
                &nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="ckBox_bongro" runat="server" Text="Bóng rổ" />
                &nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="ckBox_bongchuye" runat="server" Text="Bóng chuyền"/>
                <br />
                <br />
&nbsp;
                <asp:CheckBox ID="ckBox_covua" runat="server" Text="Cờ vua"/>
                &nbsp;&nbsp;
                <asp:CheckBox ID="ckBox_cotuong" runat="server" Text="Cờ tướng"/>
                &nbsp;&nbsp;
                <asp:CheckBox ID="ckBox_covay" runat="server" Text="Cờ vây"/>
            </div>
            <br />
            <div style="text-align:center;">
                <asp:Button ID="btn_confirm" runat="server" Text="Xác nhận" OnClick="btn_confirm_Click" />
            </div>
            <br />
            <div>
                <asp:Label ID="lbl_show" runat="server"></asp:Label>
            </div>
            <br />
            <hr />
            <div>
                <asp:Literal ID="ltr_show" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
</body>
</html>
