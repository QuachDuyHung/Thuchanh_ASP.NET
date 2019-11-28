using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb_B3_Control
{
    public partial class frm_success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string st_user = Request.QueryString.Get("user");
            string st_pass = Request.QueryString.Get("pass");

            lblUser.Text = st_user + " - Mật khẩu: " + st_pass;
        }
    }
}