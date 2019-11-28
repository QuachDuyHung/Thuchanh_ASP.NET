using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb_B3_Control
{
    public partial class frmBai_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a, b, c, diem;
            a = double.Parse(tbx_A.Text);
            b = double.Parse(tbx_B.Text);
            c = double.Parse(tbx_C.Text);

            diem = (0.6 * a + 0.3 * b + 0.1 * c);
            diem = Math.Round(diem, 1);
            string st_kq = diem.ToString() + " - ";

            if (diem<4)
            {
                st_kq = st_kq + "F";
            }
            else if (diem >= 4 && diem<5.5)
            {
                st_kq = st_kq + "D";
            }
            else if (diem >= 5.5 && diem<7.0)
            {
                st_kq = st_kq + "C";
            }
            else if (diem >= 7.0 && diem < 8.5)
            {
                st_kq = st_kq + "B";
            }
            else
            {
                st_kq = st_kq + "A";
            }

            lbl_kq.Text = st_kq;
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {

        }

        protected void tbx_A_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbx_B_TextChanged(object sender, EventArgs e)
        {

        }

        protected void tbx_C_TextChanged(object sender, EventArgs e)
        {

        }
    }
}