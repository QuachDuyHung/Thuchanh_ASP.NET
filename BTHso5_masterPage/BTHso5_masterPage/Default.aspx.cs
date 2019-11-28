using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTHso5_masterPage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "admin" && TextBox2.Text == "1234")
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Tên đăng nhập hoặc mật khẩu không chính xác!";
            }
        }
    }
}