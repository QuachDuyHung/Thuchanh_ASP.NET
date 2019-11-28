<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmBai_1.aspx.cs" Inherits="ProjectWeb_B3_Control.frmBai_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/style_1.css" rel="stylesheet" />
    <title>Sử dụng các control asp.net</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="display">
            <div class="title">
                BỘ CHUYỂN ĐIỂM
            </div>
            <div class="panel_1">
                Điểm A:<asp:TextBox ID="tbx_A" runat="server" TextMode="Number" OnTextChanged="tbx_A_TextChanged"></asp:TextBox>
                <br />
                <br />
                Điểm B:<asp:TextBox ID="tbx_B" runat="server" TextMode="Number" OnTextChanged="tbx_B_TextChanged"></asp:TextBox>
                <br />
                <br />
                Điểm C:<asp:TextBox ID="tbx_C" runat="server" TextMode="Number" OnTextChanged="tbx_C_TextChanged"></asp:TextBox>                
            </div>         
            <div class="panel_2">
                Ghi chú:
                <li> <4.0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:F</li>
                <li> 4.0  -->  5.5:D</li>
                <li> 5.5  -->  7.0:C</li>
                <li> 7.0  -->  8.5:B</li>
                <li> >=8.5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:A</li>
            </div>
            <div style="text-align: center; height: auto;">
                <asp:Button ID="btn_ok" runat="server" Text="Tính" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_cancel" runat="server" Text="Hủy" OnClick="btn_cancel_Click" />
            </div>
            <div class="result">
                <asp:Label ID="lbl_kq" runat="server" Text="Kết quả"></asp:Label>
            </div>  
        </div>
    </form>
</body>
</html>
