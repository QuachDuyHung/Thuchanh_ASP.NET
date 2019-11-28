<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="B2_1621050249_QuachDuyHung.form.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Defualt</title>
    <link href="../css/Defualt.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Mono:100,200,300,400,500,600,700" rel="stylesheet">
    <style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header"><h1>THÔNG TIN THÀNH VIÊN</h1></div>

            <div class="clear"></div>

            <div class="sub-head1" id="header1">
                <asp:Label ID="lblFullName" runat="server"></asp:Label>
            </div>

            <div class="clear"></div>

            <div class="content-1">
                <div class="picture-user">
                    <asp:Image ID="Image2" runat="server" Width =" 200" Height="270" style="border-radius: 120px; border: 0.5px solid white;"/>
                        <%--<img src="../pic/pic_Nu.png" width =" 200" height="270" style="border-radius: 120px; border: 0.5px solid white;" />--%>                   
                </div>
                <div class="info-user">

                    Ngày Sinh:<br />
                    <asp:TextBox ID="txtNgaySinh" runat="server" Width="460px" Height="30px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    Email:<br />
                    <asp:TextBox ID="txtEmail" runat="server" Width="460px" Height="30px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    Điện Thoại:<br />
                    <asp:TextBox ID="txtPhone" runat="server" Width="460px" Height="30px" ReadOnly="True"></asp:TextBox>
                    <br />
                    <br />
                    Địa Chỉ:<br />
                    <asp:TextBox ID="txtAddress" runat="server" Width="460px" Height="30px" ReadOnly="True"></asp:TextBox>

                </div>
            </div>

            <div class="clear"></div>

            <div class="sub-head2" id="header2">
                <asp:Label ID="lblNgaySinh" runat="server"></asp:Label>
            </div>


            <div class="content-2" id="1">
                <div class="pic-poem">
                    <%--<asp:Label ID="lblPicPoem" runat="server"></asp:Label>--%>
                    <asp:Image ID="Image1" runat="server" Width="320" Height="220" style="margin: 5px 10px;"/>
                    <%--<img src="../pic/muathu.JPG" width="320" height="220" style="margin: 5px 10px;"/>--%>
                </div>

                <div class="poem">
                    <asp:Label ID="lblPoem" runat="server"></asp:Label>
                </div>
            </div>

            <%--bài thơ 1 mùa thu--%>
            <%--<div class="content-2" id="1">
                <div class="pic-poem">
                    <img src="../pic/muathu.JPG" width="320" height="220" style="margin: 5px 10px;"/>
                </div>

                <div class="poem">
                    HOA CÚC MÙA THU
                    <br />
                    <br />
                    Thu về cho đoá Cúc vàng,<br />
                    Cho hàng phong trút lá vàng đầy sân.<br />
                    Ngồi nghe một chút hương lân, <br />
                    Nhớ em áo lụa thanh tân thuở nào. <br />
                    Lòng sao nghe vẫn dạt dào,<br />
                    Màu hoa năm ấy ngọt ngào trong tim.<br />
                </div>
            </div>--%>
            <%--bài thơ 2 mùa xuân--%>
            <%--<div class="content-2" id="2">
                <div class="pic-poem">
                    <img src="../pic/muaxuan.jpg" width="320" height="220" style="margin: 5px 10px;" />
                </div>
                
                <div class="poem">
                    XUÂN (Chế Lan Viên)<br />
                    <br />
                    Tôi có chờ đâu, có đợi đâu<br />
                    Đem chi xuân lại gợi thêm sầu?<br />
                    Với tôi tất cả như vô nghĩa<br />
                    Tất cả không ngoài nghĩa khổ đau!<br />
                    <br />
                    ...<br />
                    <br />
                    Có đứa trẻ thơ không biết khóc<br />
                    Vô tình bỗng nổi tiếng cười ra!<br />
                    Chao ôi! Mong nhớ! Ôi, mong nhớ,<br />
                    Một cánh chim thu lạc cuối ngàn!<br />
                </div>
            </div>--%>
            <%--bài thơ 3 mùa hè--%>
            <%--<div class="content-2" id="3">
                <div class="pic-poem">
                    <img src="../pic/muahe.jpg" width="320" height="220" style="margin: 5px 10px;" />
                </div>

                <div class="poem">
                    <b><span>HOA DÂM BỤT<br />
                    <br />
                    Hôm qua trở lại vườn xưa,<br />
                    Đầu cành dâm bụt ,lưa thưa nắng vàng.<br />
                    Thoảng nghe chim hót trên ngàn,<br />
                    Bên hàng bụt đỏ ,ngân vang tiếng cười.<br />
                    Dáng ai, thấp thoáng mơ màng,<br />
                    Nghe chừng như bóng em về đâu đây.<br />
                    Nắng chiều lãng đãng hiên tây,<br />
                    Giật mình tĩnh giấc, còn đây nỗi buồn.</span></b><br />
                </div>
            </div>--%>
            <%--bài thơ 4 mùa đông--%>
           <%-- <div class="content-2" id="4">
                <div class="pic-poem">
                    <img src="../pic/muadong.JPG" width="320" height="220" style="margin: 5px 10px;" />
                </div>

                <div class="poem">
                    <p>
                        <b><span>MÙA HOA CẢI<br />
                        <br />
                        Có một mùa hoa cải<br />
                        Nở vàng bên bến sông<br />
                        Em đang thì con gái<br />
                        Đợi anh chưa lấy chồng<br />
                        <br />
                        ...<span class="apple-converted-space">&nbsp;</span><br />
                        <br />
                        Anh lại gieo hạt cải<br />
                        Lại âm thầm đợi mong<br />
                        Có một người con gái<br />
                        Đợi anh chưa lấy chồng<o:p></o:p></span></b></p>
                    <br />
                </div>
            </div>--%>

            <div class="today" id="today">

                <asp:Label ID="lblToday" runat="server"></asp:Label>

            </div>
        </div>
    </form>
</body>
</html>

