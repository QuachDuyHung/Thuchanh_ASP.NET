<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trang_Home.aspx.cs" Inherits="Bai1_1621050249.Trang_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Mono:400,500,500i,600,700,700i" rel="stylesheet">
    <link href="css/Trang_Home.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="baner">
		<img id="baner1" src="Img/banner.jpg" alt="Chủ tịch Hồ Chí Minh"/>
	</div>
	<div class="clear"></div>
	<div class="body1">
		<div class="body-1">
			<img  title="Nhật ký trong tù" src="Img/nk1.jpg" alt="" class="imagebody-1" />
			<p>
				<a title="Nhật ký trong tù" href="Trang1_nhatkytrongtu.aspx" target="_blank">Học đánh cờ</a>
			</p>
		</div>
		<div class="body-1">
			<img title="Chúc tết" src="Img/chuctet.jpg" alt="" class="imagebody-1" />		
			<p>
				<a title="Bác Hồ chúc tết" href="Trang2_thuchuctet.aspx" target="_blank">Thơ chúc tết 1969</a>
			</p>
		</div>
		<div class="body-1">
			<img title="Đi tới mùa xuân tư tưởng Hồ Chí Minh" src="Img/muaxuanhcm.jpg" alt="" class="imagebody-1" />
			<p>
				<a title="Nước Việt Nam" href="Trang3_nuocvietnam.aspx" target="_blank">Nước Việt Nam là Một</a>
			</p>
		</div>
	</div>
    </form>
</body>
</html>
