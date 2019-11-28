using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B2_1621050249_QuachDuyHung.form
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nam = DateTime.Now.Year;
            int thang = DateTime.Now.Month;
            int ngay = DateTime.Now.Day;
            today.Text = "HÔM NAY:  NGÀY " + ngay + " THÁNG " + thang + " NĂM " + nam;
            for (int i = 1960; i <= nam; i++)
                ddlYear.Items.Add(new ListItem(i.ToString()));
            int month = 12;
            for (int i = 1; i <= month; i++)
                ddlMonth.Items.Add(new ListItem(i.ToString()));
            int day = 31;
            for (int i = 1; i <= day; i++)
                ddlDay.Items.Add(new ListItem(i.ToString()));
        }

        protected void btnAccept_Click(object sender, EventArgs e)
        {

        }
    }
}