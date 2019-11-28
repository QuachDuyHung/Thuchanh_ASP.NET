<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bai3_1621050249.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="Style/Register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <img src="Picture/CoToQuoc.png" style="width:30px;height:20px; float:left;"/>
                <div style="float:left; padding-left: 10px;">MÔN HỌC: LẬP TRÌNH .NET2 - PHÁT TRIỂN ỨNG DỤNG WEB VỚI ASP.NET</div>
                &nbsp;&nbsp;
                
                <b>HÔM NAY: NGÀY 14 THÁNG 03 NĂM 2019</b>
                <img src="Picture/lich.jpg" style="width:30px;height:20px; float:right;"/>
            </div>
            <div class="content">
                <div class="sub-head"><b>THÔNG TIN CÁ NHÂN CỦA THÀNH VIÊN</b></div>                
                <div class="picture-user">
                    <div class="picture">                        
                    </div>
                </div>
                <div class="infor-user">
                    Họ và tên:(*)&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtFullName" runat="server" Width="300px" BackColor="Silver" Height="27px" BorderStyle="None"></asp:TextBox>
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
                    Điện thoại:(*)&nbsp;&nbsp; <asp:TextBox ID="txtContact" runat="server" Width="198px" BackColor="Silver" Height="27px" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                    Email:(*)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEmail" runat="server" Width="359px" BackColor="Silver" Height="27px" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                    Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAddress" runat="server" Height="54px" TextMode="MultiLine" Width="465px" BackColor="Silver" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="btnAccept" runat="server" Text="Đồng ý" Font-Size="13pt" Width="99px" Height="39px" PostBackUrl="~/infor_submit.aspx" OnClick="btnAccept_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" Font-Size="13pt" Width="79px" Height="37px" OnClick="btnCancel_Click" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
