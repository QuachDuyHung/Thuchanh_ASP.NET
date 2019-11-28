<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_sinhvien_chitiet.aspx.cs" Inherits="TH7_database.frm_sinhvien_chitiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>THÔNG TIN CHI TIẾT SINH VIÊN</h2>
            <p>Mã sinh viên:
                <asp:TextBox ID="txt_ma" runat="server"></asp:TextBox>
            </p>
            <p>Tên sinh viên:
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </p>
            <p>Năm sinh:
                <asp:TextBox ID="txt_namsinh" runat="server"></asp:TextBox>
            </p>
            <p>Giới tính:
                <asp:TextBox ID="txt_gioitinh" runat="server"></asp:TextBox>
            </p>
            <p>Khóa:
                <asp:TextBox ID="txt_khoa" runat="server"></asp:TextBox>
            </p>
            <p>Chuyên ngành:
                <asp:TextBox ID="txt_chuyennganh" runat="server"></asp:TextBox>
            </p>
            <p>Email:
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </p>
            <p>Điện thoại:
                <asp:TextBox ID="txt_dt" runat="server"></asp:TextBox>
            </p>
            <p>Địa chỉ:
                <asp:TextBox ID="txt_diachi" runat="server"></asp:TextBox>
            </p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="btn_back" runat="server" Text="&lt;&lt; Back" OnClick="btn_back_Click" />
&nbsp;
                <asp:Button ID="btn_update" runat="server" Text="Update" Visible="False" />
&nbsp;
                <asp:Button ID="btn_delete" runat="server" Text="Delete" Visible="False" OnClick="btn_delete_Click" />
&nbsp;
                <asp:Button ID="btn_print" runat="server" Text="Print" />
            </p>
        </div>
    </form>
</body>
</html>
