<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frm_doan_view.aspx.cs" Inherits="BaiTHso7_1621050249_QuachDuyHung.frm_doan_view" %>
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

                    <asp:Button ID="btn_search" runat="server" Text="Tìm kiếm" CssClass="btn_search" />

                    <asp:DropDownList ID="ddl_LV" runat="server" CssClass="ddl_LV" DataSourceID="SqlDataSource1" DataTextField="Tenlv"></asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT [Tenlv] FROM [tbl_linhvuc]"></asp:SqlDataSource>

                    <asp:DropDownList ID="ddl_GVHD" runat="server" CssClass="ddl_GVHD" DataSourceID="SqlDataSource2" DataTextField="Column1"></asp:DropDownList>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT CONCAT_WS(' - ', Magv, Tengv) FROM tbl_giangvien"></asp:SqlDataSource>

                    <asp:DropDownList ID="ddl_Diem" runat="server" CssClass="ddl_Diem" DataSourceID="SqlDataSource3" DataTextField="diem"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:connect_DATN %>" SelectCommand="SELECT'diem' =
	CASE
		WHEN Diem &lt;= 7.0 then N'Điểm &lt;= 7'
		WHEN Diem &gt;= 7.1 AND Diem &lt;= 8.0 then N'Điểm từ 7.1 đến 8'
		WHEN Diem &gt;= 8.1 AND Diem &lt;= 9.0 then N'Điểm từ 8.1 đến 9'
		WHEN Diem &gt;= 9.1 AND Diem &lt;= 10 then N'Điểm từ 9.1 đến 10'
	END
FROM tbl_doan"></asp:SqlDataSource>
                </div>

                <%-- bảng sinh viên --%>
                <table class="w3-table w3-striped w3-white" border="1" style="border: 0.5px solid #e1e1e1; box-shadow: 2px 2px 8px #ababab; font-size: 12px;">

                    <tr style="background-color: #2196F3; color: white;">
                        <th>STT</th>
                        <th>Mã sinh viên</th>
                        <th>Tên sinh viên</th>
                        <th>Tên đồ án</th>
                        <th>GVHD</th>
                        <th>GVPB</th>
                        <th>Lĩnh vực</th>
                        <th>Điểm</th>
                        <th>Năm TN</th>
                    </tr>

                    <asp:Literal ID="ltr_DoAn" runat="server"></asp:Literal>
                </table>

                <br />
                <asp:Button ID="btn_add" runat="server" Text="Thêm mới" CssClass="btn_add" />

            </div>
        </div>
    </div>

</asp:Content>
