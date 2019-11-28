<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_validation2.aspx.cs" Inherits="BTH4_Validation.frm_validation2" %>

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
        TÍNH ĐIỂM<br />
        <br />
        Nhập A(*):
        <asp:TextBox ID="txt_A" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_A" ErrorMessage="Vui lòng nhập vào điểm A" CssClass="error">Vui lòng nhập vào điểm A!</asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txt_A" CssClass="error" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Integer">Điểm nhập vào phải là số nguyên!</asp:CompareValidator>
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_A" CssClass="error" ErrorMessage="RangeValidator" MaximumValue="10" MinimumValue="0" Type="Double">Điểm nhập vào chỉ từ [0 - 10], vui lòng nhập lại!</asp:RangeValidator>
        <br />
        <br />
        Nhập tuổi (&gt;18 tuổi):<asp:TextBox ID="txtTuoi" runat="server"></asp:TextBox>
        <br />
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtTuoi" CssClass="error" ErrorMessage="RangeValidator" MaximumValue="50" MinimumValue="18" Type="Integer">Độ tuổi không cho phép!</asp:RangeValidator>
        <br />
        <br />
        Ngày sinh: <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtNgaySinh" CssClass="error" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Date">Ngày sinh không đúng định dạng!</asp:CompareValidator>
        <br />
        <br />
        Mật khẩu(*):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_Pass1" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        Nhập lại mật khẩu(*):&nbsp;&nbsp;
        <asp:TextBox ID="txt_Pass2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="txt_Pass1" ControlToValidate="txt_Pass2" CssClass="error" ErrorMessage="CompareValidator">Mật khẩu không khớp, vui lòng nhập lại!</asp:CompareValidator>
        <br />
        <br />
        Nhập Email:
        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" CssClass="error" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Địa chỉ Email không đúng!</asp:RegularExpressionValidator>
        <br />
        <br />
        Nhập URL:
        <asp:TextBox ID="txt_url" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_url" CssClass="error" ErrorMessage="RegularExpressionValidator" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">Địa chỉ URL nhập vào không đúng!</asp:RegularExpressionValidator>
        <br />
        <br />
        Nhập tên vợ của bạn (Hồng, Hà, Huyền, Hằng):
        <asp:TextBox ID="txt_Vo" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_Vo" CssClass="error" ErrorMessage="RegularExpressionValidator" ValidationExpression="(Hồng)|(Hà)|(Huyền)|(Hằng)">Đây không phải vợ bạn!</asp:RegularExpressionValidator>
        <br />
        <br />
        Nhập biển số:
        <asp:TextBox ID="txt_BienSo" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_BienSo" CssClass="error" ErrorMessage="RegularExpressionValidator" ValidationExpression="((29)|(30)|(31))+\w{1}\-\d{3}\.\d{2} ">Biển số sai định dạng</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="btnNhap" runat="server" Text="Nhập" Width="74px" OnClick="btnNhap_Click" />
    </form>
</body>
</html>
