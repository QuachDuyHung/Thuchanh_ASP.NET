<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BTHso5_masterPage.WebForm1" %>

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
                <div class="w3-container w3-red w3-padding-16">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblSV" runat="server" Text="Label"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16">
                    <div class="w3-left"><i class="fa fa-user-times w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblGV" runat="server" Text="Label"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giảng viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16">
                    <div class="w3-left"><i class="fa fa-bank w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblTN" runat="server" Text="Label"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-lock w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <h3>
                            <asp:Label ID="lblCN" runat="server" Text="Label"></asp:Label>
                        </h3>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Số chuyên ngành</h4>
                </div>
            </div>
        </div>
       <%-- --------------------------------------------------------------------------------- --%>
        <div class="w3-panel">
            <div class="w3-row-padding" style="margin: 0 -16px">
                <div class="w3-twothird" style="width: 100%;">
                    <h5><b>Thống kê sinh viên theo chuyên ngành:</b></h5>
                    <table class="w3-table w3-striped w3-white" style="border: 0.5px solid #e1e1e1;">
                        <tr style="background-color: #429c1b;">
                            <td>STT</td>
                            <td>Chuyên ngành</td>
                            <td>Số sinh viên</td>
                            <td>Chi tiết</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>Tin học Mỏ</td>
                            <td><asp:Label ID="lbl_Mo" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Tin học Trắc địa</td>
                            <td><asp:Label ID="lbl_TracDia" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Tin học Kinh tế</td>
                            <td><asp:Label ID="lbl_KinhTe" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Tin học Địa chất</td>
                            <td><asp:Label ID="lbl_DiaChat" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>Mang máy tính</td>
                            <td><asp:Label ID="lbl_MangMT" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>Công nghệ phần mềm</td>
                            <td><asp:Label ID="Lbl_CNPM" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>Khoa học máy tính ứng dụng</td>
                            <td><asp:Label ID="lbl_KHMTUD" runat="server" Text="Label"></asp:Label></td>
                            <td><i class="fa fa-search w3-text-blue w3-large"></i><a href="#">Danh sách</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <hr>
        <div class="w3-container">
            <h5><b>Thống kê đồ án theo điểm:</b></h5>
            <p>New Visitors</p>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-green" style="width: 25%">+25%</div>
            </div>

            <p>New Users</p>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-orange" style="width: 50%">50%</div>
            </div>

            <p>Bounce Rate</p>
            <div class="w3-grey">
                <div class="w3-container w3-center w3-padding w3-red" style="width: 75%">75%</div>
            </div>
        </div>
        <hr>

        <div class="w3-container">
            <h5>Countries</h5>
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr>
                    <td>United States</td>
                    <td>65%</td>
                </tr>
                <tr>
                    <td>UK</td>
                    <td>15.7%</td>
                </tr>
                <tr>
                    <td>Russia</td>
                    <td>5.6%</td>
                </tr>
                <tr>
                    <td>Spain</td>
                    <td>2.1%</td>
                </tr>
                <tr>
                    <td>India</td>
                    <td>1.9%</td>
                </tr>
                <tr>
                    <td>France</td>
                    <td>1.5%</td>
                </tr>
            </table>
            <br>
            <button class="w3-button w3-dark-grey">More Countries  <i class="fa fa-arrow-right"></i></button>
        </div>
        <hr>
        <div class="w3-container">
            <h5>Recent Users</h5>
            <ul class="w3-ul w3-card-4 w3-white">
                <li class="w3-padding-16">
                    <img src="/w3images/avatar2.png" class="w3-left w3-circle w3-margin-right" style="width: 35px">
                    <span class="w3-xlarge">Mike</span><br>
                </li>
                <li class="w3-padding-16">
                    <img src="/w3images/avatar5.png" class="w3-left w3-circle w3-margin-right" style="width: 35px">
                    <span class="w3-xlarge">Jill</span><br>
                </li>
                <li class="w3-padding-16">
                    <img src="/w3images/avatar6.png" class="w3-left w3-circle w3-margin-right" style="width: 35px">
                    <span class="w3-xlarge">Jane</span><br>
                </li>
            </ul>
        </div>
        <hr>

        <div class="w3-container">
            <h5>Recent Comments</h5>
            <div class="w3-row">
                <div class="w3-col m2 text-center">
                    <img class="w3-circle" src="/w3images/avatar3.png" style="width: 96px; height: 96px">
                </div>
                <div class="w3-col m10 w3-container">
                    <h4>John <span class="w3-opacity w3-medium">Sep 29, 2014, 9:12 PM</span></h4>
                    <p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <br>
                </div>
            </div>

            <div class="w3-row">
                <div class="w3-col m2 text-center">
                    <img class="w3-circle" src="/w3images/avatar1.png" style="width: 96px; height: 96px">
                </div>
                <div class="w3-col m10 w3-container">
                    <h4>Bo <span class="w3-opacity w3-medium">Sep 28, 2014, 10:15 PM</span></h4>
                    <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <br>
                </div>
            </div>
        </div>
        <br>
        <div class="w3-container w3-dark-grey w3-padding-32">
            <div class="w3-row">
                <div class="w3-container w3-third">
                    <h5 class="w3-bottombar w3-border-green">Demographic</h5>
                    <p>Language</p>
                    <p>Country</p>
                    <p>City</p>
                </div>
                <div class="w3-container w3-third">
                    <h5 class="w3-bottombar w3-border-red">System</h5>
                    <p>Browser</p>
                    <p>OS</p>
                    <p>More</p>
                </div>
                <div class="w3-container w3-third">
                    <h5 class="w3-bottombar w3-border-orange">Target</h5>
                    <p>Users</p>
                    <p>Active</p>
                    <p>Geo</p>
                    <p>Interests</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
