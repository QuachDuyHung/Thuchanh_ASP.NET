<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_sinhvien.aspx.cs" Inherits="TH7_database.frm_sinhvien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>THÔNG TIN SINH VIÊN</title>
    <link href="All_style/Style_table.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>DANH SÁCH SINH VIÊN TRONG CSDL</h2>
            <p>Nhập(Mã SV hoặc Tên):
                <asp:TextBox ID="txt_search" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="Tìm kiếm" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Tenkhoa" DataValueField="Makh" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="134px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT [Makh], [Tenkhoa] FROM [tbl_khoahoc] ORDER BY [Makh]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:Label ID="lbl_tong" runat="server"></asp:Label>
            </p>
            <table border="0">
                <tr>
                    <th>STT</th>
                    <th>Mã sinh viên</th>
                    <th>Tên sinh viên</th>
                    <th>Khóa</th>
                    <th>Email</th>
                    <th>Chi tiết</th>
                    <th>Cập nhật</th>
                    <th>Xóa</th>
                </tr>
                <asp:Literal ID="ltr_sinhvien" runat="server"></asp:Literal>
            </table>
        </div>
    </form>
</body>
</html>
