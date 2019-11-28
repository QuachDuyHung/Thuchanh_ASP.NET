<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_CreateCustomer.aspx.cs" Inherits="BTH4_Validation.frm_CreateCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .error{
            color: red;
            font-family: 'Times New Roman';
            font-weight: bold;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ĐĂNG KÍ KHÁCH HÀNG<br />
            <br />
            Thông tin đăng nhập<br />
            <br />
            Tên đăng nhập:<asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_user" CssClass="error" ErrorMessage="Tên đăng nhập không để trống">(*)</asp:RequiredFieldValidator>
            <br />
            <br />
            Mật khẩu:<asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_pass" CssClass="error" ErrorMessage="Mật khẩu không để trống">(*)</asp:RequiredFieldValidator>
            <br />
            <br />
            Nhập lại mật khẩu:<asp:TextBox ID="txt_pass2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_pass2" CssClass="error" ErrorMessage="Vui lòng nhập lại mật khẩu">(*)</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu không trùng khớp, vui lòng nhập lại!" ControlToCompare="txt_pass" ControlToValidate="txt_pass2" CssClass="error"></asp:CompareValidator>
            <br />
            <br />
            Thông tin chi tiết cá nhân<br />
            <br />
            Họ tên khách hàng:
            <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Họ tên không được để trống!" ControlToValidate="txt_Name" CssClass="error">(*)</asp:RequiredFieldValidator>
            <br />
            <br />
            Ngày sinh:<asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_date" CssClass="error" ErrorMessage="Ngày sinh không để trống">(*)</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txt_date" CssClass="error" Operator="DataTypeCheck" Type="Date">Ngày sinh không hợp lệ</asp:CompareValidator>
            <br />
            <br />
            Giới tính:&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gioitinh" Text="Nam" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gioitinh" Text="Nữ" />
            <br />
            <br />
            Địa chỉ Email:<asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" CssClass="error" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
            <br />
            <br />
            Thu thập:
            <asp:TextBox ID="txt_thuthap" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_thuthap" CssClass="error" ErrorMessage="Thu thập không để trống">(*)</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Thu thập phải là số (không để trống)" ControlToValidate="txt_thuthap" CssClass="error" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" HeaderText="Danh sách các lỗi:" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDangKy" runat="server" Text="Đăng ký" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
