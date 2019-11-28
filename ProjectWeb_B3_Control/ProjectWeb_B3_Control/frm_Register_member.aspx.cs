using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb_B3_Control
{
    public partial class frm_Register_member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nam = DateTime.Now.Year;
            for (int i = 1930; i <= nam; i++)
                DropDownList1.Items.Add(new ListItem(i.ToString()));
        }
    }
}