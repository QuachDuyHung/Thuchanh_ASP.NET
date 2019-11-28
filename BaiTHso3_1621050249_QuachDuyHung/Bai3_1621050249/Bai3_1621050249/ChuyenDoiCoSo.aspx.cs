using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bai3_1621050249.All_Class;

namespace Bai3_1621050249
{
    public partial class ChuyenDoiCoSo : System.Web.UI.Page
    {
        cls_chuyendoi chuyendoi = new cls_chuyendoi();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            string chuyen_doi="", result="";
            int chuyen_doi_1, result_1;
            if (txtNhap.Text == "")
            {
                Label1.Text = "Mời bạn nhập số cần chuyển đổi!";
            }
            else
            {
                chuyen_doi = Convert.ToString(txtNhap.Text) + chuyen_doi;
                chuyen_doi_1 = int.Parse(txtNhap.Text);
                //nhị phân
                if (RadioButton1.Checked == true)
                {
                    result = chuyendoi.nhi_phan(chuyen_doi);
                    Label1.Text = result.ToString();
                }
                //bát phân
                else if (RadioButton2.Checked == true)
                {
                    result_1 = chuyendoi.bat_phan(chuyen_doi_1);
                    Label1.Text = result_1.ToString() + " (bát phân)";
                }
                //thập lục phân
                else if (RadioButton3.Checked == true)
                {
                    result = chuyendoi.thap_luc_phan(chuyen_doi);
                    Label1.Text = result.ToString() + " (thập lục phân)";
                }
                else
                {
                    Label1.Text = "Bạn phải chọn hệ cần chuyển!";
                }
            }
        }
    }
}