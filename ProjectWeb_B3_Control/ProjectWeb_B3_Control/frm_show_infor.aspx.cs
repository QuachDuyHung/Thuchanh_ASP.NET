using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb_B3_Control
{
    public partial class frm_show_infor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string st_name, st_gt, st_ns;
            st_name = Request.Form.Get("txtFullName");
            st_gt = Request.Form.Get("gioiTinh");
            st_ns = Request.Form.Get("DropDownList1");
            lblFullName.Text = st_name;
            if(st_gt== "RadioButton1")
            {
                lblGioiTinh.Text = "Nam";
            }
            else if (st_gt == "RadioButton2")
            {
                lblGioiTinh.Text = "Nữ";
            }
            else
                lblGioiTinh.Text = "Chưa xác định";
            int nam = DateTime.Now.Year;
            int tuoi = nam - int.Parse(st_ns);
            lblNamSinh.Text = st_ns + "(" + tuoi.ToString() + " tuổi)";
        }
    }
}