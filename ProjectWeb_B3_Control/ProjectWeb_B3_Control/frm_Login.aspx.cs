using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb_B3_Control
{
    public partial class frm_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string st_name, st_pass;
            st_name = txtUserName.Text.Trim();
            st_pass = txtPassWord.Text.Trim();

            if (st_name == "")
            {
                lblError.Text = "Bạn phải nhập tên đăng nhập!";
            }
            else if (st_name=="admin" && st_pass=="123456")
            {
                //đăng nhập thành công
                Response.Redirect("~/frm_success.aspx?user=" + st_name + "&pass=" + st_pass);
            }
            else
            {
                //không đúng
                lblError.Text = "Tên đăng nhập hoặc mật khẩu không đúng!";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassWord.Text = "";
            txtUserName.Focus();
        }
    }
}