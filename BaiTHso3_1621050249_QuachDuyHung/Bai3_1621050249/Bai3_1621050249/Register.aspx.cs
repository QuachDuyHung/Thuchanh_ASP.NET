using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bai3_1621050249
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nam = DateTime.Now.Year;
            for (int i = 1970; i <= nam; i++)
                ddlYear.Items.Add(new ListItem(i.ToString()));
            int month = 12;
            for (int i = 1; i <= month; i++)
                ddlMonth.Items.Add(new ListItem(i.ToString()));
            int day = 31;
            for (int i = 1; i <= day; i++)
                ddlDay.Items.Add(new ListItem(i.ToString()));
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtFullName.Text = "";
            txtFullName.Focus();
            txtAddress.Text = "";
            txtEmail.Text = "";
            txtContact.Text = "";
            RadioButtonNam.Checked = false;
            RadioButtonNu.Checked = false;
            
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {

        }

        protected void ddlDay_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}