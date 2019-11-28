<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_home.aspx.cs" Inherits="TH7_database.frm_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Masv" DataSourceID="sql_data_test">
                <Columns>
                    <asp:BoundField DataField="Masv" HeaderText="Masv" ReadOnly="True" SortExpression="Masv" />
                    <asp:BoundField DataField="Tensv" HeaderText="Tensv" SortExpression="Tensv" />
                    <asp:BoundField DataField="Namsinh" HeaderText="Namsinh" SortExpression="Namsinh" />
                    <asp:CheckBoxField DataField="Gioitinh" HeaderText="Gioitinh" SortExpression="Gioitinh" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Dienthoai" HeaderText="Dienthoai" SortExpression="Dienthoai" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sql_data_test" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT [Masv], [Tensv], [Namsinh], [Gioitinh], [Email], [Dienthoai] FROM [tbl_sinhvien] ORDER BY [Masv]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
