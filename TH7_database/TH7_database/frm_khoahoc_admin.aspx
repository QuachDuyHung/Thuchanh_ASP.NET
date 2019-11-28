<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_khoahoc_admin.aspx.cs" Inherits="TH7_database.frm_khoahoc_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>QUẢN TRỊ DỮ LIỆU: THÊM MỚI KHÓA HỌC</h2>
            <p>Mã khóa:
                <asp:TextBox ID="txt_makhoa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_makhoa" ErrorMessage="RequiredFieldValidator">Vui lòng nhập vào mã khóa học!</asp:RequiredFieldValidator>
            </p>
            <p>Tên khóa:
                <asp:TextBox ID="txt_namekhoa" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_namekhoa" ErrorMessage="RequiredFieldValidator">Vui lòng nhập vào trên khóa học!</asp:RequiredFieldValidator>
            </p>
            <p>Thời gian:
                <asp:TextBox ID="txt_time" runat="server"></asp:TextBox>
            </p>
            <p>Ghi chú:
                <asp:TextBox ID="txt_note" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lbl_add" runat="server"></asp:Label>
            </p>
            <p>&nbsp;</p>
            <p>
&nbsp;
                <asp:Button ID="btn_insert" runat="server" Text="Thêm mới" OnClick="btn_insert_Click" />
&nbsp;
                <asp:Button ID="btn_cancel" runat="server" Text="Hủy--" />
&nbsp;
                </p>
            <p>
                &nbsp;</p>
            <p>
                DANH SÁCH KHÓA HỌC TRONG CSDL</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
