<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="B2_1621050249_QuachDuyHung.form.Register" %>
 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="../css/Register.css" rel="stylesheet" />
    <style>
        .error {
            color: red;
            font-family: 'Times New Roman';
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <div class="header">
                <img src="../pic/AYS1.gif" style="float:left;"/>                
                <div style="float:left; padding-left: 10px;">MÔN HỌC: LẬP TRÌNH .NET2 - PHÁT TRIỂN ỨNG DỤNG WEB VỚI ASP.NET</div>
                &nbsp;&nbsp;

                <img src="../pic/calendar_16.png" style="line-height: 28px; padding-right: 5px;"/>
                <asp:Label ID="today" runat="server"></asp:Label>
                <%--<b>HÔM NAY: NGÀY 14 THÁNG 03 NĂM 2019</b>--%>
                
            </div>
            <div class="content">
                <div class="sub-head"><b>THÔNG TIN CÁ NHÂN CỦA THÀNH VIÊN</b></div>                
                <div class="picture-user">
                    <div class="picture"> 
                        <img src="../pic/user.png" style="width: 190px; height: 270px;"/>
                    </div>
                </div>
                <div class="infor-user">
                    Họ và tên:(*)&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFullName" runat="server" Width="300px" BackColor="#868181" Height="27px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" CssClass="error" ErrorMessage="Họ và tên không để trống!">(*)</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Ngày sinh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ngày: <asp:DropDownList runat="server" Height="27px" ID="ddlDay"></asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    tháng: <asp:DropDownList ID="ddlMonth" runat="server" Height="27px"></asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    năm: <asp:DropDownList ID="ddlYear" runat="server" Height="27px"></asp:DropDownList>
                    <br />
                    <br />
                    Giới tính:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButtonNam" runat="server" GroupName="GioiTinh" Text="Nam" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButtonNu" runat="server" GroupName="GioiTinh" Text="Nữ" />
                    <br />
                    <br />
                    Điện thoại:(*)&nbsp;&nbsp; <asp:TextBox ID="txtContact" runat="server" Width="198px" BackColor="#868181" Height="27px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSDT" runat="server" ControlToValidate="txtContact" CssClass="error" ErrorMessage="Số điện thoại không để trống">(*)</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvSDT" runat="server" ControlToValidate="txtContact" CssClass="error" ErrorMessage="SĐT phải là số" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtContact" CssClass="error" ErrorMessage="SĐT chỉ được 10 số" ValidationExpression="0\d{8,9}">(*)</asp:RegularExpressionValidator>
                    <br />
                    <br />
                    Email:(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" Width="359px" BackColor="#868181" Height="27px" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" ErrorMessage="Email không để trống!">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" CssClass="error" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    <br />
                    <br />
                    Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAddress" runat="server" Height="54px" TextMode="MultiLine" Width="465px" BackColor="#868181" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="btnAccept" runat="server" Text="Đồng ý" Font-Size="13pt" Width="99px" Height="39px" PostBackUrl="~/form/Default.aspx" OnClick="btnAccept_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" Font-Size="13pt" Width="79px" Height="37px"/>
                </div>
            </div>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error" HeaderText="Danh sách các lỗi" />
    </form>
</body>
</html>