<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frm_sinhvien_view.aspx.cs" Inherits="BaiTHso7_1621050249_QuachDuyHung.frm_sinhvien_view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="w3-panel">
            <div class="w3-row-padding" style="margin: 0 -25px">
                <div class="w3-twothird" style="width: 100%;">
                    <h4><b>HỒ SƠ SINH VIÊN TRONG CƠ SỞ DỮ LIỆU</b></h4>
                    <%-- tổng số bản ghi --%>
                    <div style="width: 100%;">

                        <asp:TextBox ID="txt_search" runat="server" CssClass="txt_search"></asp:TextBox>

                        <asp:Button ID="btn_search" runat="server" Text="Tìm kiếm"  CssClass="btn_search"/>

                        <asp:DropDownList ID="ddl_Khoa" runat="server" CssClass="ddl_Khoa"  OnSelectedIndexChanged="ddl_Khoa_SelectedIndexChanged"></asp:DropDownList>
                        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT CONCAT('Khóa ', Makh) FROM tbl_khoahoc"></asp:SqlDataSource>--%>

                        <asp:DropDownList ID="ddl_CN" runat="server" CssClass="ddl_CN" DataSourceID="SqlDataSource1" DataTextField="Expr1"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT CONCAT_WS(' - ', Macn, Tencn) AS Expr1 FROM tbl_chuyennganh"></asp:SqlDataSource>
                    </div>

                    <%-- bảng sinh viên --%>
                    <table class="w3-table w3-striped w3-white" border="1" style="border: 0.5px solid #e1e1e1; box-shadow: 2px 2px 8px #ababab; font-size: 12px;">

                        <tr style="background-color: #2196F3; color: white;">
                            <th>STT</th>
                            <th>Mã sinh viên</th>
                            <th>Tên sinh viên</th>
                            <th>Ngày sinh</th>
                            <th>Giới tính</th>
                            <th>Khóa</th>
                            <th>Chuyên ngành</th>
                            <th>Email</th>
                            <th>Điện thoại</th>
                            <th>Địa chỉ</th>
                        </tr>

                        <asp:Literal ID="ltr_SV" runat="server"></asp:Literal>                        
                    </table>

                    <br />
                    <asp:Button ID="btn_add" runat="server" Text="Thêm mới" CssClass="btn_add" />

                </div>
            </div>
        </div>

</asp:Content>
