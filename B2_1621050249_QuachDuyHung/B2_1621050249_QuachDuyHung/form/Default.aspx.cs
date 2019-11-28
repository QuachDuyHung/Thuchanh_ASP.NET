using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2_1621050249_QuachDuyHung.form
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nam = DateTime.Now.Year;
            int thang = DateTime.Now.Month;
            int ngay = DateTime.Now.Day;
            lblToday.Text = "Hôm nay:  Ngày " + ngay + " tháng " + thang + " năm " + nam;


            string st_name, st_gt, st_day, st_month, st_year, st_contact, st_email, st_address;

            //lấy thông tin từ web Register.aspx
            st_name = Request.Form.Get("txtFullName");
            st_gt = Request.Form.Get("GioiTinh");
            st_day = Request.Form.Get("ddlDay");
            st_month = Request.Form.Get("ddlMonth");
            st_year = Request.Form.Get("ddlYear");
            st_contact = Request.Form.Get("txtContact");
            st_email = Request.Form.Get("txtEmail");
            st_address = Request.Form.Get("txtAddress");

            //kiểm tra giới tính
            if (st_gt == "RadioButtonNam")
            {
                Image2.ImageUrl = "../pic/pic_Nam.png";
            }
            else if (st_gt == "RadioButtonNu")
            {
                Image2.ImageUrl = "../pic/pic_Nu.png";
            }

            //tính tuổi của người nhập vào
            int so_tuoi = 0;
            so_tuoi = nam - Int16.Parse(st_year);

            //kiểm tra người nhập vào sinh tháng mấy
            int so_thang = 0;
            string mua = "";
            so_thang =Int16.Parse(st_month);
            if (so_thang <= 3)
            {
                mua = mua + "Mùa xuân";
                Image1.ImageUrl = "../pic/muaxuan.jpg";
                //lblPicPoem.Text = "<img src="+"../pic/muaxuan.jpg"+ "width=" + "320" + "height="+"220"+" style=" + "margin: 5px 10px; "+ " />";
                lblPoem.Text = "XUÂN (Chế Lan Viên)<br /> <br />Tôi có chờ đâu, có đợi đâu<br /> Đem chi xuân lại gợi thêm sầu?<br />  Với tôi tất cả như vô nghĩa<br />"
                   + "Tất cả không ngoài nghĩa khổ đau!<br />"
                   + "<br />"
                    + "...<br />"
                  + "  <br />"
                  + "  Có đứa trẻ thơ không biết khóc<br />"
                   + " Vô tình bỗng nổi tiếng cười ra!<br />"
                   + " Chao ôi! Mong nhớ! Ôi, mong nhớ,<br />"
                   + " Một cánh chim thu lạc cuối ngàn!<br />";
            }
            else if (so_thang > 3 && so_thang <= 6)
            {
                mua = mua + "Mùa hè";
                Image1.ImageUrl = "../pic/muahe.jpg";
                lblPoem.Text = "<b><span>HOA DÂM BỤT<br />"
                   +" <br />"
                    +"Hôm qua trở lại vườn xưa,<br />"
                    +"Đầu cành dâm bụt ,lưa thưa nắng vàng.<br />"
                    +"Thoảng nghe chim hót trên ngàn,<br />"
                    +"Bên hàng bụt đỏ ,ngân vang tiếng cười.<br />"
                   +" Dáng ai, thấp thoáng mơ màng,<br />"
                    +"Nghe chừng như bóng em về đâu đây.<br />"
                   +" Nắng chiều lãng đãng hiên tây,<br />"
                    +"Giật mình tĩnh giấc, còn đây nỗi buồn.</span ></b ><br /> ";
            }
            else if (so_thang > 6 && so_thang <= 9)
            {
                mua = mua + "Mùa thu";
                Image1.ImageUrl = "../pic/muathu.JPG";
                lblPoem.Text = "HOA CÚC MÙA THU"
                    + "<br />"
                    + "<br />"
                    + "Thu về cho đoá Cúc vàng,<br />"
                   + " Cho hàng phong trút lá vàng đầy sân.<br />"
                   + " Ngồi nghe một chút hương lân, <br />"
                    + "Nhớ em áo lụa thanh tân thuở nào. <br />"
                    + "Lòng sao nghe vẫn dạt dào,<br />"
                   + " Màu hoa năm ấy ngọt ngào trong tim.<br /> ";
            }
            else
            {
                mua = mua + "Mùa đông";
                Image1.ImageUrl = "../pic/muadong.JPG";
                lblPoem.Text = "MÙA HOA CẢI<br />"
                       +" <br />"
                        +"Có một mùa hoa cải<br />"
                        +"Nở vàng bên bến sông<br />"
                        +"Em đang thì con gái<br />"
                        +"Đợi anh chưa lấy chồng<br />"
                       +" <br />"
                        +"..."
                       +" <br />"
                       +" Anh lại gieo hạt cải<br />"
                       +" Lại âm thầm đợi mong<br />"
                        +"Có một người con gái<br />"
                       +" Đợi anh chưa lấy chồng</p>"
                   +" <br />";
            }


            //Add thông tin vào label
            lblFullName.Text = st_name;
            txtNgaySinh.Text = st_day + "/" + st_month + "/" + st_year + " (" + so_tuoi + " tuổi)";
            lblNgaySinh.Text = "(BẠN SINH VÀO: Tháng " + st_month + " - " + mua + ")";
            //if (st_gt == "RadioButtonNam")
            //{
            //    lblGioiTinh.Text = "Giới tính: Nam";
            //}
            //else if (st_gt == "RadioButtonNu")
            //{
            //    lblGioiTinh.Text = "Giới tính: Nữ";
            //}
            //else
            //{
            //    lblGioiTinh.Text = "Giới tính: Chưa xác định";
            //}
            txtPhone.Text = st_contact;
            txtEmail.Text = st_email;
            txtAddress.Text = st_address;
        }
    }
}