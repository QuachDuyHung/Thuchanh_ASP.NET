using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb_B3_Control
{
    public partial class frmBai_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ckBox_1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btn_confirm_Click(object sender, EventArgs e)
        {
            string st_kq = "";

            if(Rbtn_Nam.Checked == true)
            {
                st_kq = "<b>Chào anh! </b> <br> Anh thích môn thể thao: ";
            }
            else if (Rbtn_Nu.Checked == true)
            {
                st_kq = "<b>Chào chị! </b> <br> Chị thích môn thể thao: ";
            }
            else
            {
                st_kq = "<b>Chào bạn! </b> <br> Bạn thích môn thể thao: ";
            }

            if(ckBox_bongda.Checked == true)
            {
                st_kq = st_kq + "<li>Bóng đá </li>";
            }
            if (ckBox_bongchuye.Checked == true)
            {
                st_kq = st_kq + "<li>Bóng chuyền </li>";
            }
            if(ckBox_bongro.Checked == true)
            {
                st_kq = st_kq + "<li>Bóng rổ </li>";
            }
            if(ckBox_covua.Checked == true)
            {
                st_kq = st_kq + "<li>Cờ vua </li>";
            }
            if (ckBox_cotuong.Checked == true)
            {
                st_kq = st_kq + "<li>Cờ tướng </li>";
            }
            if (ckBox_covay.Checked == true)
            {
                st_kq = st_kq + "<li>Cờ vây </li>";
            }

            lbl_show.Text = st_kq;
            ltr_show.Text = st_kq;
        }
    }
}