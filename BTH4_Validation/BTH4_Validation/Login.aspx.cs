using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTH4_Validation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(txtUser.Text == "admin" && txtPassword.Text == "1234")
            {
                Response.Redirect("admin.aspx");
            }
            else
            {
                lblError.Text = "Tên đăng nhập hoặc mật khẩu không chính xác!";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtUser.Text = "";
            txtPassword.Text = "";
            txtUser.Focus();
        }
    }
}