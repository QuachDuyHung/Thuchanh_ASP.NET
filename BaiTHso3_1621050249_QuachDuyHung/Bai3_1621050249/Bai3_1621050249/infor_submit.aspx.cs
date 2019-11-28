using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai3_1621050249
{
    public partial class infor_submit : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

            //Add thông tin vào label
            lblHoTen.Text = "Họ tên: " + st_name;
            lblNgaySinh.Text = "Ngày Sinh: " + st_day + "/" + st_month + "/" + st_year;
            if (st_gt == "RadioButtonNam")
            {
                lblGioiTinh.Text = "Giới tính: Nam";
            }
            else if (st_gt == "RadioButtonNu")
            {
                lblGioiTinh.Text = "Giới tính: Nữ";
            }
            else
            {
                lblGioiTinh.Text = "Giới tính: Chưa xác định";
            }            
            lblDienThoai.Text = "Điện thoại: " + st_contact;
            lblEmail.Text = "E-mail: " + st_email;
            lblDiaChi.Text = "Địa chỉ: " + st_address;
        }
    }
}