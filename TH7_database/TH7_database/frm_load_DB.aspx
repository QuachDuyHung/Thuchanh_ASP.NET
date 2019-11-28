<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_load_DB.aspx.cs" Inherits="TH7_database.frm_load_DB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="All_style/Style_table.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Số liệu trong CSDL</h1>
            Số hồ sơ sinh viên trong CSDL: <asp:Label ID="lbl_Sv" runat="server" Text="Label" ForeColor="#FF3399"></asp:Label>
            <br />
            <h1>Thống kê đồ án theo điểm:</h1>
            Điểm đồ án <= 7.0: <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF3399"></asp:Label>
            <br />
            Điểm đồ án từ 7.1 đến 8.0: <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#FF3399"></asp:Label>
            <br />
            Điểm đồ án từ 8.1 đến 9.0: <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#FF3399"></asp:Label>
            <br />
            Điểm đồ án từ 9.1 đến 10: <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="#FF3399"></asp:Label>
        </div>

        <div>
            <h2>Thống kê số lượng sinh viên theo chuyên ngành</h2>
            <table>
                <tr>
                    <th>STT</th>
                    <th>Tên chuyên ngành</th>
                    <th>Số sinh viên</th>
                </tr>
                <asp:Literal ID="lit_kq" runat="server"></asp:Literal>
            </table>
        </div>

        <div>
            <h2>DANH SÁCH SINH VIÊN</h2>
                
        </div>
    </form>
</body>
</html>
