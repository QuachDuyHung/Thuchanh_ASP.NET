using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProjectWeb_B3_Control.AllClass;

namespace ProjectWeb_B3_Control
{
    public partial class frm_money : Page
    {
        classMoney tiendien = new classMoney();
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int sodien = int.Parse(txtName.Text);
            int tien = tiendien.cal_money(sodien);
            lblMoney.Text = "Thành tiền: " + tien.ToString() + " VNĐ";
        }
    }
}