using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTHso7_1621050249_QuachDuyHung
{
    public partial class Defualt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            if (txt_User.Text == "admin" && txt_password.Text == "1234")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Tên đăng nhập hoặc mật khẩu không chính xác!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txt_User.Text = "";
            txt_password.Text = "";
            txt_User.Focus();
        }
    }
}