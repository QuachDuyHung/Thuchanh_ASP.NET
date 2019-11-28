<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frm_doan_diem.aspx.cs" Inherits="BaiTHso7_1621050249_QuachDuyHung.frm_doan_diem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="w3-panel">
            <div class="w3-row-padding" style="margin: 0 -16px">
                <div class="w3-twothird" style="width: 100%;">
                    <h4><b><asp:Label ID="lbl_Diem" runat="server" Text="Label"></asp:Label></b></h4>

                    <%-- tổng số bản ghi --%>
                    <div style="float: right; color: orange;">
                        <asp:Label ID="lbl_Tong" runat="server" Text="Label"></asp:Label>
                    </div>

                    <%-- bảng sinh viên --%>
                    <table class="w3-table w3-striped w3-white" border="1" style="border: 0.5px solid #e1e1e1; box-shadow: 2px 2px 8px #ababab; font-size: 12px;">

                        <tr style="background-color: #2196F3; color: white;">
                            <th>STT</th>
                            <th>Mã sinh viên</th>
                            <th>Tên sinh viên</th>
                            <th>Tên đồ án</th>
                            <th>GVHD</th>
                            <th>Điểm</th>
                        </tr>

                        <asp:Literal ID="ltr_DoAn_Diem" runat="server"></asp:Literal>
                        
                    </table>
                </div>
            </div>
        </div>

</asp:Content>
