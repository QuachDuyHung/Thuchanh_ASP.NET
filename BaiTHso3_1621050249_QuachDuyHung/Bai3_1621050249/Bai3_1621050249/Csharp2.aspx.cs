using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Bai3_1621050249.All_Class;

namespace Bai3_1621050249
{
    public partial class frmUserInput : Page
    {
        Csharp2 soTuNhien = new Csharp2();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnXacDinh_Click(object sender, EventArgs e)
        {
            if (txtNhap.Text == "")
            {
                txtShow.Text = "\n Bạn phải nhập giá trị cần xác định!";
            }
            else if(int.Parse(txtNhap.Text) >= 10)
            {
                txtShow.Text = "\nKhông tìm thấy kết quả!!! (kết quả chỉ được tìm thấy khi nhập số từ 0 đến 9)";
            }            
            else
            {
                string daySo = txtNhap.Text;
                //string show = soTuNhien.dem_1(daySo);
                //string show_1 = soTuNhien.so_tu_nhien(daySo);
                lblKQ.Text = soTuNhien.dem_1(daySo);
                txtShow.Text = soTuNhien.so_tu_nhien(daySo);
            }
        }
    }
}