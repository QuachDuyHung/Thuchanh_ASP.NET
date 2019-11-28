<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BaiTHso7_1621050249_QuachDuyHung.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 0px; margin-top: 0px; width: 100%;">
        <!-- Header -->
        <header class="w3-container" style="padding-top: 22px">
            <h5><b><i class="fa fa-dashboard"></i>&nbsp;TỔNG HỢP DỮ LIỆU HỆ THỐNG</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
                <div class="w3-container w3-yellow w3-padding-16">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <b><asp:Label ID="lbl_SV" runat="server" Text=""></asp:Label></b>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-padding-16">
                    <div class="w3-left"><i class="fa fa-user-times w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <b><asp:Label ID="lbl_GV" runat="server" Text=""></asp:Label></b>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giảng viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-green w3-padding-16">
                    <div class="w3-left"><i class="fa fa-bank w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <b><asp:Label ID="lbl_TN" runat="server" Text=""></asp:Label></b>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-lock w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <b><asp:Label ID="lbl_CN" runat="server" Text=""></asp:Label></b>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Số chuyên ngành</h4>
                </div>
            </div>
        </div>
       <%-- -----------------------------------Thống kê SV theo chuyên ngành--------------------------------------- --%>
        <div class="w3-panel">
            <div class="w3-row-padding" style="margin: 0 -16px">
                <div class="w3-twothird" style="width: 100%;">
                    <h5><b>Thống kê sinh viên theo chuyên ngành:</b></h5>

                    <table class="w3-table w3-striped w3-white" style="border: 0.5px solid #e1e1e1;">

                        <tr style="background-color: #4ea926; color: white;">
                            <th>STT</th>
                            <th>Chuyên ngành</th>
                            <th>Số sinh viên</th>
                            <th>Chi tiết</th>
                        </tr>

                        <asp:Literal ID="ltr_chuyennganh" runat="server"></asp:Literal>
                    </table>

                </div>
            </div>
        </div>
        <%-- ----------------Thống kê đồ án theo điểm------------------- --%>
        <hr>
        <div class="w3-container">
            <h5><b>Thống kê đồ án theo điểm:</b></h5>

            <div class="w3-container w3-padding content" style="width: 100%; background-color: #b2cc37;">
                <a href="frm_doan_diem.aspx?Diem1=0&Diem2=7.0" style="text-decoration: none;">
                    &nbsp;<strong style="border: 2px solid black; border-radius: 60px; font-size: 25px; padding: 2px 10px;">7</strong>
                    <b>&nbsp;&nbsp;&nbsp;Điểm đồ án <= 7.0 ---------------------- <asp:Label ID="lbl_DA1" runat="server" Text="Label"></asp:Label></b>
                </a>
                <span style="float: right; line-height: 35px;"><strong>x</strong></span>
            </div>

            <div class="w3-container w3-padding content" style="width: 100%; background-color: #10c6ef;">
                <a href="frm_doan_diem.aspx?Diem1=7.1&Diem2=8.0" style="text-decoration: none;">
                    &nbsp;<strong style="border: 2px solid black; border-radius: 60px; font-size: 25px; padding: 2px 10px;">8</strong>
                    <b>&nbsp;&nbsp;&nbsp;Điểm đồ án từ 7.1 đến 8.0 ------------- <asp:Label ID="lbl_DA2" runat="server" Text="Label"></asp:Label></b>
                </a>
                <span style="float: right; line-height: 35px;"><strong>x</strong></span>
            </div>

            <div class="w3-container w3-padding content" style="width: 100%; background-color: #158677;">
                <a href="frm_doan_diem.aspx?Diem1=8.1&Diem2=9.0" style="text-decoration: none;">
                    &nbsp;<strong style="border: 2px solid black; border-radius: 60px; font-size: 25px; padding: 2px 10px;">9</strong>
                    <b>&nbsp;&nbsp;&nbsp;Điểm đồ án từ 8.1 đến 9.0 ------------- <asp:Label ID="lbl_DA3" runat="server" Text="Label"></asp:Label></b>
                </a>
                <span style="float: right; line-height: 35px;"><strong>x</strong></span>
            </div>

            <div class="w3-container w3-padding w3-orange content" style="width: 100%">
                <a href="frm_doan_diem.aspx?Diem1=9.1&Diem2=10" style="text-decoration: none;">
                    <strong style="border: 2px solid black; border-radius: 60px; font-size: 25px; padding: 5px 5px;">10</strong>
                    <b>&nbsp;&nbsp;Điểm đồ án từ 9.1 đến 10 -------------- <asp:Label ID="lbl_DA4" runat="server" Text="Label"></asp:Label></b>
                </a>
                <span style="float: right; line-height: 35px;"><strong>x</strong></span>
            </div>

        </div>
        <hr>

        <%-- -----------------Thống kê đồ án tốt nghiệp theo lĩnh vực---------------------------- --%>
         <div class="w3-panel">
            <div class="w3-row-padding" style="margin: 0 -16px">
                <div class="w3-twothird" style="width: 100%;">
                    <h5><b>Thống kê đồ án tốt nghiệp theo lĩnh vực:</b></h5>

                    <table class="w3-table w3-striped w3-white" style="border: 0.5px solid #e1e1e1;">

                        <tr style="background-color: #4ea926; color: white;">
                            <th>STT</th>
                            <th>Lĩnh vực</th>
                            <th>Số đồ án</th>
                            <th>Chi tiết</th>
                        </tr>

                        <asp:Literal ID="ltr_LinhVuc" runat="server"></asp:Literal>
                    </table>

                </div>
            </div>
        </div>


    </div>

</asp:Content>
