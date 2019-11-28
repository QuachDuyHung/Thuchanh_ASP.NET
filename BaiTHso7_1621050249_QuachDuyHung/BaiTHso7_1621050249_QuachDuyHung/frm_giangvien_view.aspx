<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frm_giangvien_view.aspx.cs" Inherits="BaiTHso7_1621050249_QuachDuyHung.frm_giangvien_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w3-panel">
        <div class="w3-row-padding" style="margin: 0 -25px">
            <div class="w3-twothird" style="width: 100%;">
                <h4><b>HỒ SƠ GIẢNG VIÊN TRONG CƠ SỞ DỮ LIỆU</b></h4>
                <%-- tổng số bản ghi --%>
                <div style="width: 100%;">

                    <asp:TextBox ID="txt_search" runat="server" CssClass="txt_search"></asp:TextBox>

                    <asp:Button ID="btn_search" runat="server" Text="Tìm kiếm" CssClass="btn_search" />

                </div>

                <%-- bảng sinh viên --%>
                <table class="w3-table w3-striped w3-white" border="1" style="border: 0.5px solid #e1e1e1; box-shadow: 2px 2px 8px #ababab; font-size: 12px;">

                    <tr style="background-color: #2196F3; color: white;">
                        <th>STT</th>
                        <th>Mã GV</th>
                        <th>Tên giảng viên</th>
                        <th>Năm sinh</th>
                        <th>Giới tính</th>
                        <th>Học vị</th>
                        <th>Email</th>
                        <th>Điện thoại</th>
                        <th>Địa chỉ</th>
                    </tr>

                    <asp:Literal ID="ltr_GV" runat="server"></asp:Literal>
                </table>

                <br />
                <asp:Button ID="btn_add" runat="server" Text="Thêm mới" CssClass="btn_add" />

            </div>
        </div>
    </div>

</asp:Content>
